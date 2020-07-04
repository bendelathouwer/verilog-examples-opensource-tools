`timescale 1ns / 1ps


module blinky(
    input clk,
    input rst,
    output outclk
    );
 
wire [26:0] din;
wire [26:0] clkdiv;
 
dff dff_inst0 (
    .clk(clk),
    .rst(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);
 
genvar i;
generate
for (i = 1; i < 27; i=i+1) 
begin : dff_gen_label
    dff dff_inst (
        .clk(clkdiv[i-1]),
        .rst(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate

assign din = ~clkdiv;
 
assign outclk = clkdiv[26];
 
endmodule