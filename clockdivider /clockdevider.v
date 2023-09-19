module clockdivider(
    input wire clk, rst,
     output reg [7:0] counterout,
     output reg outputled
     );
    
 always @ (posedge(clk), posedge(rst))
 begin
     if (rst) counterout <= 0;
     else counterout <= counterout + 1;
     //assign outputled = couterout[7];
end
endmodule