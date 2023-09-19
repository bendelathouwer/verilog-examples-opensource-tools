`timescale 100ns/1ps
module buttontoled_tb(output wire o_led);
    reg i_sw;
    buttontoled UUT (.i_sw(i_sw), .o_led(o_led));
    /*always@(posedge i_sw)// i would asume this is always statment is
    begin
       assign i_sw = 1;
       #10
       assign i_sw = 0 ;
    end*/ 
    initial begin
         $dumpfile("buttontoled_tb.vcd");
        $dumpvars(0,buttontoled_tb);
        repeat(1000)
        assign i_sw = 1;
        #5;
        assign i_sw = 0 ;
        #5;
        assign i_sw = 1;
    end
 
 endmodule 