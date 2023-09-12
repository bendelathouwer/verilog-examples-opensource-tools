module buttontoled (i_sw, o_led);

    input wire i_sw ; 
    output reg o_led;
    always@*//this needs to be done becouse the button acts as a clock source ( a slow one that is )
    begin
         o_led = i_sw ;//connects the led to the switch 
    end  

endmodule
