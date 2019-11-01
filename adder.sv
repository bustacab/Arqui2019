module adder #(parameter N = 64) (input logic  [N-1:0] a,
											 input logic  [N-1:0] b,
											 output logic [N-1:0] sum);
									
	assign sum = a + b;
 
endmodule
