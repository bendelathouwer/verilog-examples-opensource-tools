module clockdivider(
    input clk, rst,
    output reg [7:0] counterout
    );
    
 always @ (posedge(clk), posedge(rst))
 begin
     if (rst) counterout <= 0;
     else counterout <= counterout + 1;
end
endmodule