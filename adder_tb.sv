module adder_tb();

	logic [63:0] s1, s2, sum;
	
	adder dut(s1, s2, sum);
	
	initial begin
		s1 = 64'd32;
		s2 = 64'd32;
	end

endmodule
