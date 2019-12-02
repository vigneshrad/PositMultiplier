`define BIT_WIDTH 8
`define EXP_WIDTH 4
`define EXP_MAX 15
`define EXP_MIN 0
`define MANTISSA_WIDTH 3
`define BIAS 7
module fpmul(
                input [`BIT_WIDTH-1:0] A,
                input [`BIT_WIDTH-1:0] B,
                input clk,
                input rst_n,
                output reg [`BIT_WIDTH-1:0] Product,
                output reg overflow,
                output reg underflow
            );

reg [`BIT_WIDTH-1:0] p1_A, p1_B;

reg p2_sign,p3_sign,p2_zero,p3_zero;
reg [`EXP_WIDTH:0] p2_exp;
reg [2*`MANTISSA_WIDTH+1:0] p2_mantissa;

reg [`EXP_WIDTH-1:0] p3_exp;
reg [`MANTISSA_WIDTH-1:0] p3_mantissa;


wire c_sign;
wire [`EXP_WIDTH:0] c_exp;
wire [2*`MANTISSA_WIDTH+1:0] c_mantissa;
wire [`EXP_WIDTH-1:0] n_exp;
wire [2*`MANTISSA_WIDTH:0] n_mantissa;

wire overflow_ur;
wire underflow_ur;
wire c_zero;

// STAGE 1 -- COMPUTING PRODUCT
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

// STAGE 2 -- NORMALIZATION
always @(posedge clk or negedge rst_n) begin//{
    if(~rst_n) begin//{
        p2_sign <= 'h0;
        p2_exp <= 'h0;
        p2_mantissa <= 'h0;
	p2_zero <= 1'b1;
    end//}
    else begin //{
        p2_sign <= c_sign;
        p2_exp <= c_exp;
        p2_mantissa <= c_mantissa;
	p2_zero <= c_zero;
    end//}
end//}

// STAGE 3 -- VALIDATION
always @(posedge clk or negedge rst_n) begin//{
    if(~rst_n) begin//{
        p3_sign <= 'h0;
        p3_exp <= 'h0;
        p3_mantissa <= 'h0;
	p3_zero <= 1'b1;
    end//}
    else begin //{
        p3_sign <= p2_sign;
        p3_exp <= n_exp;
        p3_mantissa <= n_mantissa[(2*`MANTISSA_WIDTH-1):`MANTISSA_WIDTH];
	p3_zero <= p2_zero;
    end//}
end//}

//OUTPUT STAGE
always @(posedge clk or negedge rst_n) begin//{
    if(~rst_n) begin//{
        Product <= 'h0;
        overflow <= 'h0;
        underflow <= 'h0;
    end//}
    else begin //{
        Product <= {p3_sign,p3_exp,p3_mantissa};
        overflow <= overflow_ur;
        underflow <= underflow_ur;
    end//}
end//}




compute C1(
            .A(p1_A),
            .B(p1_B),
            .sign(c_sign),
            .exp(c_exp),
            .mantissa(c_mantissa),
            .zero(c_zero)
        );

norm N1(
            .exp_i(p2_exp),
            .mantissa_i(p2_mantissa),
            .exp_o(n_exp),
            .mantissa_o(n_mantissa)
        );

valid V1(
            .exp(p3_exp),
	    .zero(p3_zero),
            .overflow(overflow_ur),
            .underflow(underflow_ur)
        );



            
endmodule

module compute(
                input [`BIT_WIDTH-1:0] A,
                input [`BIT_WIDTH-1:0] B,
                output sign,
                output [`EXP_WIDTH:0] exp,
                output [2*`MANTISSA_WIDTH+1:0] mantissa,
		output zero
            );

    wire [`MANTISSA_WIDTH:0] m1, m2;
    assign m1 = (A[`BIT_WIDTH-2:`MANTISSA_WIDTH] == 0) ? {1'b0,A[`MANTISSA_WIDTH-1:0]} : {1'b1,A[`MANTISSA_WIDTH-1:0]};
    assign m2 = (B[`BIT_WIDTH-2:`MANTISSA_WIDTH] == 0) ? {1'b0,B[`MANTISSA_WIDTH-1:0]} : {1'b1,B[`MANTISSA_WIDTH-1:0]};

    assign sign = A[`BIT_WIDTH-1] ^ B[`BIT_WIDTH-1];
    assign exp = (((A & 'hFF) == 0) ||((B & 'hFF) == 0)) ? 'h0 : A[`BIT_WIDTH-2:`MANTISSA_WIDTH] + B[`BIT_WIDTH-2:`MANTISSA_WIDTH] - `BIAS;
    assign mantissa = (((A & 'hFF) == 0) ||((B & 'hFF) == 0)) ? {1'b0,1'b1,{(2*`MANTISSA_WIDTH){1'b0}}} :m1 * m2;
    assign zero = (((A & 'hFF) == 0) ||((B & 'hFF) == 0)) ? 1'b1 : 1'b0;


endmodule

module norm(
            input logic [`EXP_WIDTH:0] exp_i,
            input logic [2*`MANTISSA_WIDTH+1:0] mantissa_i,
            output logic [`EXP_WIDTH-1:0] exp_o,
            output logic [2*`MANTISSA_WIDTH:0] mantissa_o
            );

            wire [2*`MANTISSA_WIDTH - 1:0] shift;
           
	    always_comb begin//{ 
            if(mantissa_i[2*`MANTISSA_WIDTH+1]) begin//{
                mantissa_o = {1'b0,mantissa_i[2*`MANTISSA_WIDTH:1]};
                exp_o = (exp_i<`EXP_MAX) ? exp_i+1 : `EXP_MAX;
            end//}

            else if(~mantissa_i[2*`MANTISSA_WIDTH]) begin//{

		mantissa_o = (mantissa_i << (2*`MANTISSA_WIDTH-shift));	
		exp_o = (exp_i > ((2*`MANTISSA_WIDTH-shift) + `EXP_MIN)) ? (exp_i-((2*`MANTISSA_WIDTH)-shift)) : `EXP_MIN;
	    end//}

	    else begin//{
		mantissa_o = mantissa_i[2*`MANTISSA_WIDTH: 0];
		exp_o = (exp_i<`EXP_MAX) ? exp_i : `EXP_MAX;
	    end//}
		 
	end//}    

	lead_detector #(.WIDTH(2*`MANTISSA_WIDTH)) 
			l1 (
				.in(mantissa_i[2*`MANTISSA_WIDTH-1:0]),
				.out(shift)
			    );

endmodule



module valid(
            input [`EXP_WIDTH-1:0] exp,
	    input zero,
            output overflow,
            output underflow
            );
	assign overflow = (exp == `EXP_MAX) ? 1 : 0;
	assign underflow = ((exp == `EXP_MIN) && !zero) ? 1 : 0;
endmodule



module lead_detector #(parameter int WIDTH = 4) (
  input logic[WIDTH - 1:0] in,
  output logic[WIDTH - 1:0] out
);
  always_comb begin
    out = '0;
    for (int i = WIDTH - 1; i >= 0; i--)
      if (in[i] == 1'b1) begin
        out = i;
        break;
      end
  end
endmodule


