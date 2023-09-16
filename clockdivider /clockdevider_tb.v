`timescale 1ns/1ps
module clockdevider_tb(output wire o_led);
reg i_clk,i_reset,o_couterout;
clockdivider UUT (.i_reset(i_reset),.i_clk(i_clk).o_couterout(o_couterout).o_led(o_led));
initial begin
    i_reset=~i_reset;
end 
always@ (posedge i_clk)
begin 
end 
endmodule