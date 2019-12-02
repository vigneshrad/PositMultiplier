module test ();

	logic [7:0] A,B,P;
	bit clk, rst_n;
	logic overflow, underflow;

	fpmul #()
		 m1 (
		      .A(A),
		      .B(B),
		      .Product(P),
		      .clk(clk),
		      .rst_n(rst_n),
		      .overflow(overflow),
		      .underflow(underflow)
		     );

always #1 clk = ~ clk;

initial begin //{
	rst_n <= 'b0;
	A <= 'h0;
	B <= 'h0;

	repeat(10) begin//{
		@(posedge clk);
	end//}
	rst_n = 'b1;


	@(posedge clk);
	A <= 'h44;
	B <= 'h38;
	
	@(posedge clk);
	A <= 'h4e;
	B <= 'h30;

	@(posedge clk);

	A <= 'hcc;
	B <= 'h30;

	@(posedge clk);
	A <= 'hd2;
	B <= 'hc0;

	@(posedge clk);
	A <= 'h2c;
	B <= 'h32;
	
	@(posedge clk);
	A <= 'hb7;
	B <= 'hae;
	
	@(posedge clk);
	A <= 'hb3;
	B <= 'h3b;
	
	@(posedge clk);
	A <= 'h71;
	B <= 'h40;
	
	@(posedge clk);
	A <= 'hf1;
	B <= 'h40;

	@(posedge clk);
	A <= 'h79;
	B <= 'h01;
	
	@(posedge clk);
	A <= 'h49;
	B <= 'h01;

	@(posedge clk);
	A <= 'h1e;
	B <= 'h1d;
	
	@(posedge clk);
	A <= 'h00;
	B <= 'h1d;

	@(posedge clk);
	A <= 0;
	B <= 0;

	repeat(50) begin//{
		@(posedge clk);
	end//}
	
	$finish;
end//}

endmodule
	
		
