module buttoncounter (button, display,clk);
	   
	  input wire  button   ;
	  input wire  clk      ;
	  output reg [6:0 ] display;
	  reg [14:0] counter;
    always @(posedge clk)
	  	begin
	   		if(button == 1)
				begin
		 			counter <= counter + 1'b1 ;
				end
			if (counter==15)
				begin
					counter <= 1'b0;
				end 
	    	
		
		case(counter)
			
	   			16'h0	  : display <= 7'b1000000 ;//0
				16'h1	  : display <= 7'b1111001 ;//1
				16'h2	  : display <= 7'b0100100 ;//2
				16'h3	  : display <= 7'b0110000 ;//3
				16'h4	  : display <= 7'b0011001 ;//4
				16'h5	  : display <= 7'b0010010 ;//5
				16'h6	  : display <= 7'b0000010 ;//6
			 	16'h7	  : display <= 7'b1111000 ;//7
			 	16'h9	  : display <= 7'b0010000 ;//9
				16'hA	  : display <= 7'b0001000 ;//10
			 	16'hB	  : display <= 7'b0000011 ;//11
			 	16'hC     : display <= 7'b1000110 ;//12
			 	16'hD     : display <= 7'b0100001 ;//13
			 	16'hE     : display <= 7'b0000110 ;//14
			 	16'hF	  : display <= 7'b0001110 ;//15
	    	 	default   : display <= 7'b1111111 ;// blank 
		    
		endcase
	end
endmodule 
