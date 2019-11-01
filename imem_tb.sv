module imem_tb();
  logic [5:0] a;
  logic [31:0] y;
  logic clk = 0, reset;
  
  // instantiate device under test
  imem dut(a, y);
  
  // apply inputs one at a time every #100ps
  initial begin
	 a = 6'd0; #100;	  //testbench ok!
    a = 6'd1; #100;	  a = 6'd2; #100;	
	 a = 6'd3; #100;    a = 6'd4; #100;
	 a = 6'd5; #100;    a = 6'd6; #100;
	 a = 6'd7; #100;    a = 6'd8; #100;
	 a = 6'd9; #100;    a = 6'd10; #100;
	 a = 6'd11; #100;   a = 6'd12; #100;
	 a = 6'd13; #100;   a = 6'd14; #100;
	 a = 6'd15; #100;   a = 6'd16; #100;
    a = 6'd17; #100;	  a = 6'd18; #100;
	 a = 6'd19; #100;	  a = 6'd20; #100;
	 a = 6'd21; #100;	  a = 6'd22; #100;
	 a = 6'd23; #100;	  a = 6'd24; #100;
	 a = 6'd25; #100;	  a = 6'd26; #100;
  end
  
endmodule
