`timescale 100ns/1ps
 `default_nettype none
module clockdevider_tb();
    reg clk,rst;
    wire [7:0] counterout;
    wire outputled;

    clockdivider UUT (.rst(rst), 
                      .clk(clk),
                      .outputled(outputled),
                      .counterout(counterout));
initial begin
        $dumpfile("clockdevider_tb.vcd");
        $dumpvars(0,clockdevider_tb);
        rst=~rst;
        //rst= 1;
        //rst=0; 
        //repeat(100)

       clk=0;
       #20;
        clk = 1;
        #20;
       

end 
    /*always @(posedge clk,posedge rst) 
    begin 
       
        clk=0;
        #20;
        clk = 1;
        #20;
    
    end
    initial begin
        $dumpfile("clockdevider_tb.vcd");
        $dumpvars(0,clockdevider_tb);
    end */
endmodule