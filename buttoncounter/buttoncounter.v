  
 /* 
      A
     ---
  F | G | B
     ---
  E |   | C
     ---
      D
0     : 7'b1000000
1     : 7'b1111001
2     : 7'b0100100
3     : 7'b0110000
4     : 7'b0011001
5     : 7'b0010010
6     : 7'b0000010
7     : 7'b1111000
8     : 7'b0000000
9     : 7'b0010000
A     : 7'b0001000
B     : 7'b0000011
C     : 7'b1000110
D     : 7'b0100001
E     : 7'b0000110
F     : 7'b0001110
blank : 7b'1111111
*/




module buttoncounter (button, display );
	   
	   input wire button;
	   input wire  [6:0] display ;
	   
	   reg counter;
	   
	   if(button == 1)
		 counter = counter + 1'b1 ;
		 if (counter==15)
			counter = 1'b0;
	     end 
	   end 
	   case(counter)
	   		case 0  : 7'b1000000;
			case 1  : 7'b1111001;
			case 2  : 7'b0100100;
			case 3  : 7'b0110000;
			case 4  : 7'b0011001;
			case 5  : 7'b0010010;
			case 6  : 7'b0000010;
			case 7  : 7'b1111000;
			case 8  : 7'b0000000;
			case 9  : 7'b0010000;
			case 10 : 7'b0001000;
			case 11 : 7'b0000011;
			case 12 : 7'b1000110;
			case 13 : 7'b0100001;
			case 14 : 7'b0000110;
			case 15 : 7'b0001110;
	    	default : 7'b1111111;
	    endcase
	   
	   
	   
	   
endmodule 