/*this register will store the received byte. The received data will be shifted to the right on each falling edge of the SCL signal.*/
module RX_Shift_Register (
	rst_n,
	sda_in,
	scl,
	data_o,
	enable_desp
	);
	
// Ports definition 
	input wire 			rst_n;
	input wire 			sda_in;
	input wire 			scl;
	input wire 			enable_desp;
	output reg [7:0] 		data_o;	

//Shift Register
always @(posedge scl or negedge rst_n)
	begin
		if(rst_n == 1'b0)
			data_o <= 8'h00;
		else if (enable_desp == 1'b1)
			data_o[7:0] <= {data_o[6:0], sda_in};
		else
			data_o <= data_o;
	end
	
endmodule