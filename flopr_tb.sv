module flopr_tb();
	logic clk, reset;
	// localparam N=64;
	logic [63:0] d, q;
	integer i = 0;
	logic [63:0] testvectors [9:0] = '{ 64'b0000, // array of testvectors
													64'b0001,
													64'b0010,
													64'b0011,
													64'b0100,
													64'b0101,
													64'b0110,
													64'b0111,
													64'b1000,
													64'b1001};
	
	// instance device under test with default value N=64
 	flopr dut(clk, reset, d, q);
	
	// generate clock
	always // no sensitivity list, so it always executes
		begin
			clk = 1; #5ns; clk = 0; #5ns; // clk at 100mhz
		end
	
	initial // at start of test pulse reset
		begin 
			reset = 1; #2; reset = 0;
		end
		
	always @(negedge clk)
		begin
			d = testvectors[i];
			i = (i + 1) % 10;
			#10ns;
		end
		
	always @(posedge clk) // check if the output is same as input
		if (~reset) begin // skip during reset
			#10;
			if (d !== q)
				begin
				$display("Error!!");
			end	
		end

endmodule
