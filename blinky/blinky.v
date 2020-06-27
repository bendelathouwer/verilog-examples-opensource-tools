module blinky(clk_in,clk_out);
parameter N=22;
input wire clk_in;
output reg clk_out;
reg [N-1:0] divcounter;

always @(posedge clk_in)
begin
    divcounter <= divcounter+1;
end

assign clk_out =divcounter [N-1];

endmodule
