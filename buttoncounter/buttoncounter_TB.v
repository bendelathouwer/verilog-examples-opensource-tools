`timescale 1ns/100ps
module buttoncounter_tb;
reg button;
reg clk
reg [6:0] display;
reg	 [14:0] counter;
buttoncounter u1 
(
    .clk(clk),
    .button (button),
    .display(display),
    .counter(counter)
);

initial begin
    $dumpfile ("buttoncounter_tb.vcd");
    $dumpvars ( 0,buttoncounter_tb   );
end
    initial begin
        clk = 0;
        for(integer i = 0; i < 8; i = i + 1)
        begin
            #82 clk = ~ clk;
        end
        for(integer j = 0 ; j < 8 ; j = j + 1)
        begin
            button = ~ button;
        end
    end
end
endmodule