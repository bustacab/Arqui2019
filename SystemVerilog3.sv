module mux2(
	input logic select;
	input logic in0;
	input logic in1;
	output logic out;
);
	always_comb
		case(select):
			1'b0 : ou|t <= in0;
			1'b1 : out <= in1;
		endcase

endmodule