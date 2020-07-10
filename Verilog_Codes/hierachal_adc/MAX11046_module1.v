module MAX11046_module1 (clock1, end_of_con, conv_start, chip_sel, write , read_s, shutd ); 
		input wire clock1; 
		input wire end_of_con;
		 
	
		output reg 	    conv_start;
		output reg		chip_sel;
		output reg		write   ;
		output reg		read_s  ;
		output reg 		shutd	;


		reg u1; 
		
		initial
			begin
				//Registors =0
				
				//u1 = 1'b0 ;
				
				//switch_rst = 1'b0;
				
				//Chip pins intial state
				chip_sel   = 1'b1;
				read_s     = 1'b1;
				write      = 1'b1;
				conv_start = 1'b1;
				shutd	   = 1'b1;
				#1000;
			end

always @ (end_of_con) 
	begin 
		
		conv_start = end_of_con; 
		#1000;
		
	end	

always @( negedge end_of_con  )
			begin
				
				
					if (end_of_con == 1'b0 ) 
							
							
													
							read_s	 = 1'b0; 
							#50
							chip_sel = 1'b0;
							#35000 
							
							read_s	 = 1'b1;	
								#15000
							read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1;
							    #15000
							read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1;
								#15000
							read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1;
							   #15000   
							 read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1; 
								#15000
							read_s	 = 1'b0; 
								#35000 
							read_s	 = 1'b1;
							chip_sel = 1'b1;							
							    #500;
								
						  // u1 = u1 + 1'b1;
						   //u1 = u1 - 1'b1;
						    								
					end	
		
		
		
		

endmodule 