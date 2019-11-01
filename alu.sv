module alu #(parameter N = 64) (input logic  [N-1:0] a, b1,
										  input logic  [3:0] ALUControl,
										  output logic [N-1:0] result,
										  output logic zero);

	always_comb
		begin
			casez(ALUControl)
				4'b0000: result = a & b1;
				4'b0001: result = a | b1;
				4'b0010: result = a + b1;
				4'b0110: result = a - b1;
				4'b0111: result = b1;
				4'b1100: result = ~(a | b1);
				default: result = 64'b0;
			endcase
			
			if(result === 0) zero = 1;
			else zero = 0;
			// zero = result ? 1 : 0;
		end	
endmodule
