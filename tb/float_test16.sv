module test ();

	logic [15:0] A,B,P;
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
	A <= 'h4B00;
	B <= 'h3600;

	@(posedge clk);
	A <= 'hA600;
	B <= 'h5A00;

	@(posedge clk);
	A <= 'hBC50;
	B <= 'hC438;	

	@(posedge clk);
	A <= 'hE280;
	B <= 'h7970;

	@(posedge clk);
	A <= 'h12AC;
	B <= 'h0000;		

	@(posedge clk);
	A <= 'h12AC;
	B <= 'h8BB2;	

	@(posedge clk);
	A <= 0;
	B <= 0;

	repeat(50) begin//{
		@(posedge clk);
	end//}
	
	$finish;
end//}

endmodule
	
		
