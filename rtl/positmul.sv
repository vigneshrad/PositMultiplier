`define BIT_WIDTH 8
`define LOG_N 3
`define MANTISSA_WIDTH 3
`define EXP_WIDTH 4
`define ES 2

module decodePosit #(parameter int ES = `ES, N = `BIT_WIDTH, n = `LOG_N)
		(
			input  logic [N-1:0] in,
			output logic sign,
			output logic [n:0] regime,
			output logic [ES-1:0] exp,
			output logic [N-ES-3:0] frac,
			output logic z,
			output logic inf
		);

		logic nzero,rc;
		logic [N-2:0] twos,inv;
		logic [2*N-5:0] tmp;
		logic [n-1:0] zc;


		assign nzero = |in[N-2:0];
		assign sign = in[N-1];
		assign z = ~(sign | nzero);
		assign inf = sign & (~(nzero));
		assign twos = ({(N-1){in[N-1]}} ^ in[N-2:0]) + {{(N-2){1'b0}},sign};
		assign rc = twos[N-2];
		assign inv = {(N-1){rc}} ^ twos;
		// ZERO COUNTER
		lead_detector l1(inv,zc);
		assign tmp = {{(N-2){1'b0}},twos[N-4:0]} << (zc-1);
		assign exp = tmp[(N-4):(N-ES-3)];
		assign frac = {nzero, tmp[(N-ES-4):0]};
		assign regime = rc ? zc-1 : -zc;
endmodule
		

module lead_detector #(parameter int WIDTH = `BIT_WIDTH-1, OUTW = `LOG_N) (
  input logic[WIDTH - 1:0] in,
  output logic[OUTW - 1:0] out
);
  always_comb begin
    out = '0;
    for (int i = WIDTH - 1; i >= 0; i--)
      if (in[i] == 1'b1) begin
        out = WIDTH - i - 1;
        break;
      end
  end
endmodule


module positMul #(parameter N=`BIT_WIDTH, ES = `ES, n = `LOG_N)
			(
				input logic [N-1:0] A,
				input logic [N-1:0] B,
				input logic clk,
				input rst_n,
				output logic [N-1:0] P,
				output logic overflow
			);

	//1st STAGE DECODE
	reg [N-1:0] p1_A, p1_B;

	always @(posedge clk or negedge rst_n) begin//{
		if(~rst_n) begin//{
			p1_A <= 'h0;
			p1_B <= 'h0;
		end//}
		else begin //{
			p1_A <= A;
			p1_B <= B;
		end//}
	end//} 



	logic c_signA, c_signB;
	logic [n:0] c_regA, c_regB;
	logic [ES-1:0] c_expA, c_expB;
	logic [N-ES-3:0] c_fracA, c_fracB;
	logic c_zA, c_zB;
	logic c_infA, c_infB;

	logic signA, signB;
	logic [n:0] regA, regB;
	logic [ES-1:0] expA, expB;
	logic [N-ES-3:0] fracA, fracB;
	logic zA, zB;
	logic infA, infB;



	decodePosit #()
		       d1(
			  .in(p1_A),
			  .sign(c_signA),
			  .regime(c_regA),
			  .exp(c_expA),
			  .frac(c_fracA),
			  .z(c_zA),
			  .inf(c_infA)
			);


	decodePosit #()
		       d2(
			  .in(p1_B),
			  .sign(c_signB),
			  .regime(c_regB),
			  .exp(c_expB),
			  .frac(c_fracB),
			  .z(c_zB),
			  .inf(c_infB)
			);

	//2nd Stage Multiply
	always @(posedge clk or negedge rst_n) begin//{
		if(~rst_n) begin//{
			signA <= 'h0;
			signB <= 'h0;
			regA <= 'h0;
			regB <= 'h0;
			expA <= 'h0;
			expB <= 'h0;
			fracA <= 'h0;
			fracB <= 'h0;
			zA <= 'h0;
			zB <= 'h0;
			infA <= 'h0;
			infB <= 'h0;
		end//}
		else begin //{
			signA <= c_signA;
			signB <= c_signB;
			regA <= c_regA;
			regB <= c_regB;
			expA <= c_expA;
			expB <= c_expB;
			fracA <= c_fracA;
			fracB <= c_fracB;
			zA <= c_zA;
			zB <= c_zB;
			infA <= c_infA;
			infB <= c_infB;
		end//}
	end//} 

	

	logic sign, z, inf;
	logic [n+ES:0] sfA, sfB;
	logic [2*(N-ES)-5:0] frac_mul;
	logic [2*(N-ES)-4:0] norm_frac;
	logic [n+ES+2:0] sfmul,sfmult;
	logic sfsign, nzero;
	logic [ES-1:0] exp;
	logic [n:0] regtmp, regime,regf;
	logic ovfreg;
	logic [ES-1:0] expf;
	logic signed [3*N - ES - 5: 0] tmp1, tmp2, tmp;
	logic [n:0] shiftneg, shiftpos;
	logic LSB, G, R, S, round;
	logic [N:0] restmp,Pt;
	logic [N-1:0] P_c;
	
	

	assign sign = signA ^ signB;
	assign z = zA | zB;
	assign inf = infA | infB;
	assign sfA = {regA, expA};
	assign sfB = {regB, expB};
	assign frac_mul = fracA * fracB;
	assign ovfm = frac_mul[2*(N-ES)-5];
	assign norm_frac = ovfm ? {1'b0,frac_mul} : {frac_mul,1'b0};
	assign sfmult = {sfA[n+ES],sfA} + {sfB[n+ES],sfB} + {{(n+ES+2){1'b0}},ovfm};
	assign sfmul = {sfmult[n+ES+1],sfmult[n+ES+1:0]};
	assign sfsign = sfmul[n+ES+2];
	assign nzero = |frac_mul;
	assign exp = sfmul[ES-1:0];
	assign regtmp = sfmul[n+ES:ES];
	assign regime = sfsign ? -regtmp : regtmp;
	assign ovfreg = regime[n];
	assign regf = ovfreg ? {1'b0,{n{1'b1}}} : regime;
	assign ovfregf = & regf[n-2:0];
	assign expf = (ovfreg | ovfregf | (~(nzero))) ?  {ES{1'b0}} : exp;
	assign tmp1 = {nzero, 1'b0, expf, norm_frac[2*(N-ES)-6:0], {(N-1){1'b0}}};
	assign tmp2 = {1'b0, nzero , expf, norm_frac[2*(N-ES)-6:0], {(N-1){1'b0}}};
	assign shiftneg = ovfregf ? regf - 2 : regf - 1;
	assign shiftpos = ovfregf ? regf - 1 : regf;
	assign tmp = sfsign ? tmp2 >>> shiftneg : tmp1 >>> shiftpos;
	assign {LSB,G,R} = tmp[3*N-ES-5 - (N-1) : 3*N-ES-5 - (N+1)];
	assign S = |tmp[3*N-ES-5 - (N+2): 0];
	assign round = (ovfreg | ovfregf) ? 0 : (G & (LSB | R | S));
	assign restmp = {1'b0, tmp[3*N-ES-5:3*N-ES-5-(N-1)]+round};
	assign Pt = inf ? {1'b1,{(N-1){1'b0}}} : z ? {N{1'b0}} : sign ? (-restmp) : restmp;
	assign P_c = Pt[N:1];

	//OUTPUT STAGE
	always @(posedge clk or negedge rst_n) begin//{
		if(~rst_n) begin//{
			P <= 'h0;
			overflow <= 'h0;
		end//}
		else begin //{
			P <= P_c;
			overflow <= inf;
		end//}
	end//} 


endmodule				
