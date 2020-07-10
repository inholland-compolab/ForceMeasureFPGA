module MAX11046_module4 ( clk , reset , datain , q ) ; 

//
reg u3 			 ; 
//
input wire clk   ; 
input wire reset ; 


input [15:0] datain ; 


output reg	q			;


always @ (posedge clk) 
	begin
		
		q <= datain ;
		
	end


endmodule 