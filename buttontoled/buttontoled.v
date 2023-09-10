module buttontoled (i_sw, o_led);

    input wire i_sw ; 
    output reg o_led;
    always@*
    begin
         o_led = i_sw ;//connects the led to the switch 
    end  

endmodule
