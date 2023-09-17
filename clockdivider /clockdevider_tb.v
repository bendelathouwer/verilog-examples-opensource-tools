`timescale 1ns/1ps
module clockdevider_tb(output wire o_led);
    reg i_clk,i_reset,o_couterout;
    clockdivider UUT (.reset(reset), 
                      .clk(clk),
                      .couterout(couterout));

    always@*begin
        reset= ~reset;
        clk=0;
        #20
        clk=1;
        #20
    end 
    initial begin
        $dumpfile(" clockdevider_tb.vcb ");
        $dumpvars(0,clockdevider_tb);
    end
endmodule