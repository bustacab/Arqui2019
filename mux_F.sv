// 64 bit 2-1 mux
module mux_F (input logic s,
					  input logic [63:0] a, b,
					  output logic [63:0] d);
					  
	assign d = s ? b : a;
endmodule
