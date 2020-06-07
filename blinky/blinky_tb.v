//`default_nettype none
`timescale 1ns / 100ps
module blinky_tb;
 // Inputs
 reg clk_in;
 // Outputs
 wire clk_out;
 // Instantiate the Unit Under Test (UUT)
 // Test the clock divider in Verilog
blinky u1(
  .clk_in(clk_in), 
  .clk_out(clk_out)
 );
 
 initial begin 
	$dumpfile ("blinky_tb.vcd");
	$dumpvars (0,blinky_tb    );
end 
 initial begin
  // Initialize Inputs  and also needed for GTKWave
	clk_in = 0;
  // create input clock 12MHZ
 
        
	#41 clk_in =  ~clk_in;
	#41 clk_in =  ~clk_in;
	#41 clk_in =  ~clk_in;
	#41 clk_in =  ~clk_in;
	#41 clk_in =  ~clk_in;
	#41 clk_in =  ~clk_in;
	
	#3000000000;

end
      
endmodule