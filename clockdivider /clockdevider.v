module clockdivider (
    input i_clk,i_reset,
    output o_led,
    output reg[7:0] counterout//number of outputs, clock gets divider  to the power of 2 (7^2 is the highest in this case )
    
);
    always @ (posedge(i_clk),posedge (i_reset))
    begin
        if(i_reset) counterout <= 0 ;//if reset is high reset the counter
        else counterout <= counterout + 1;
         o_led = counterout[7];
    end
endmodule