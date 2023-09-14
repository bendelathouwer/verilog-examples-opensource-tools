module clockdivider (
    input clk,reset,
    output reg[7:0] counterout//number of outputs, clock gets divider  to the power of 2 (7^2 is the highest in this case )
    
);
    always @ (posedge(clk),posedge (reset))
    begin
        if(reset) counterout <= 0 ;//if reset is high reset the counter
        else counterout <= counterout + 1;
    end
endmodule