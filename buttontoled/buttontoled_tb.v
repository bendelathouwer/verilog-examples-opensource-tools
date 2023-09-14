`timescale 1ns/1ps
module buttontoled_tb(output wire o_led);
    reg i_sw;
    buttontoled UUT (.i_sw(i_sw), .o_led(o_led));
    always@(posedge i_sw)// i would asume this is always statment is
    begin
       assign i_sw = ~ i_sw;
    end     
    initial begin
        $dumpfile("buttontoled_tb.vcd");
        $dumpvars(0,buttontoled_tb);
    end
 
 endmodule 