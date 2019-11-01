module fetch #(parameter N = 64) (input logic  PCSrc_F, clk, reset,
											 input logic  [N-1:0] PCBranch_F,
											 output logic [N-1:0] imem_addr_F);
				  
	logic [N-1:0] muxdder, flopmux, imem_addr, badder;
	
	assign badder = 64'b0100;
	
	mux2 fetchMux(muxdder, PCBranch_F, PCSrc_F, flopmux);
	flopr fetchFlopr(clk, reset, flopmux, imem_addr);
	adder fetchAdder(imem_addr, badder, muxdder);

	assign imem_addr_F = imem_addr;
	
endmodule
