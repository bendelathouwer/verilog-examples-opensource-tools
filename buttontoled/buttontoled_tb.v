`timescale 1ns/1ps
module buttontoled_tb(output wire o_led);
    reg i_sw;
    buttontoled UUT (.i_sw(i_sw), .o_led(o_led));
    always@*// i would asume this is always statment is
    begin
       assign i_sw = ~i_sw;
    end     
 
 endmodule 