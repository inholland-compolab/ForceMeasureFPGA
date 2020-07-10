`timescale 1 ns /1 ps
module MAX11046_module5 (clk, reset, loaden_o, serial_data_out,parallel_data_in);
	
	input clk;
	input reset;
	input loaden_o;
	input [15:0] parallel_data_in;
	
	
	
	output reg serial_data_out;
	reg             u5;
	reg [15:0] sft_reg;
	reg [2:0] count_ps;
	reg  serdes_factor;
initial 
	begin 
		serdes_factor = 2'b11; 	end




always @ ( posedge clk or negedge reset)
begin
  if (!reset)
  begin
  sft_reg  =16'b0;
  count_ps = 'b0;
  end
else
begin  
	if(loaden_o == 1'b1)
		sft_reg = parallel_data_in;
     else
		begin
		  serial_data_out = sft_reg[0];
		  if (serdes_factor == count_ps)
		  count_ps =1'b0 ;
		  else 
		  begin 
		  sft_reg = {sft_reg,sft_reg[7:1]};
		  count_ps = count_ps +1;
      end
     end
end

end
endmodule	