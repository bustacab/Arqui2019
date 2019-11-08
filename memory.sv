// Etapa: MEMORY

module memory 	(input logic Branch_W, zero_W, TipoBranch,					
					output logic PCSrc_W);
					
	// assign PCSrc_W = Branch_W & zero_W;
	always_comb
		if (TipoBranch == 1)
			PCSrc_W = Branch_W & ~zero_W;
		else
			PCSrc_W = Branch_W & zero_W;
	
endmodule