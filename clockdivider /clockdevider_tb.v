`timescale 1ns/1ps
 `default_nettype none
module clockdevider_tb(output wire o_led);
    reg clk,rst;
    wire [7:0] counterout;
    clockdivider UUT (.rst(rst), 
                      .clk(clk),
                      .counterout(counterout));

    always @ * 
    begin 
        rst= ~rst;
        clk=0;
        #20;
        clk = 1;
        #20;
    end
    initial begin
        $dumpfile("clockdevider_tb.vcd");
        $dumpvars(0,clockdevider_tb);
    end
endmodule