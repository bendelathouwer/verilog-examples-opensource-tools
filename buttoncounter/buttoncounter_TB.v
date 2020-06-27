  `timescale 1ns / 100ps

module buttoncounter_tb;
reg button;
reg clk;
wire  [6:0 ] display;

integer i ;
integer j ;

buttoncounter u1 
(
    .clk(clk),
    .button (button),
    .display(display)
);

initial begin
    $dumpfile ("buttoncounter_tb.vcd");
    $dumpvars ( 0,buttoncounter_tb   );
end
initial begin
        clk = 0;
        for( i = 0; i < 100; i = i + 1)
        begin
            #41clk = ~ clk;
        end
        for( j = 0 ; j < 100 ; j = j + 1)
        begin
            #41 button = ~ button;
        end
end
endmodule