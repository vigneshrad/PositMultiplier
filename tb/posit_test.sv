module test ();

	logic [7:0] A,B,P;
	bit clk,rst_n;
	logic overflow;

	positMul #()
		 m1 (
		      .A(A),
		      .B(B),
		      .rst_n(rst_n),
		      .clk(clk),
		      .P(P),
		      .overflow(overflow)
		     );

always #1 clk = ~clk;

initial begin //{
	rst_n <= 0;
	
	repeat(10) begin//{
		@(posedge clk);
	end//}

	rst_n <= 1;
	A <= 'h0;
	B <= 'h0;

	@(posedge clk);
	A <= 'h4c;
	B <= 'h48;
	
	@(posedge clk);
	A <= 'h00;
	B <= 'h0F;

	@(posedge clk);

	A <= 'h52;
	B <= 'h4c;
	@(posedge clk);
	
	A <= 'h7b;
	B <= 'h48;
	@(posedge clk);
	
	A <= 'hc0;
	B <= 'hc8;
	@(posedge clk);
	
	A <= 'hb2;
	B <= 'hb8;
	@(posedge clk);
	
	A <= 'ha0;
	B <= 'ha0;
	@(posedge clk);
	
	A <= 'hdf;
	B <= 'hb8;
	@(posedge clk);


	A <= 'hc0;
	B <= 'h38;
	@(posedge clk);
	
	A <= 'hb2;
	B <= 'h48;
	@(posedge clk);
	
	A <= 'ha0;
	B <= 'h60;
	@(posedge clk);
	
	A <= 'h21;
	B <= 'hb8;
	@(posedge clk);
	
	A <= 'h80;
	B <= 'h48;
	@(posedge clk);
	repeat(20) begin//{
		@(posedge clk);
	end//}
	$finish;
end//}

endmodule
	
		
