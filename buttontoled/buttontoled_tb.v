//`default_nettype none
`timescale 1ns / 100ps


module buttontoled_tb () ;

//Declarations of the wires
reg i_sw  ; 
wire o_led ;

// instantiate the DUT
buttontoled u1(
				.i_sw (i_sw),
				.o_led (o_led)				



			   );		
	


initial begin 
	$dumpfile ("buttontoled_tb.vcd");
	$dumpvars (0,buttontoled_tb    );
end 
initial begin 
	i_sw = 1 ;
	#100
	i_sw = 0 ;
	#100;
	i_sw = 1 ;
	#100
	i_sw = 0 ;
	#100;
	i_sw = 1 ;
	#100
	i_sw = 0 ;
	#100;
	i_sw = 1 ;
	#100
	i_sw = 0 ;
	#100;
	i_sw = 1 ;
	#100
	i_sw = 0 ;
	#100;
end 	
endmodule