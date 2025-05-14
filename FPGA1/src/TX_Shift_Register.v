/*this register will store the data that will be transmitted. The transmitted data will be shifted to the right on each rising edge of the SCL signal. */
module TX_Shift_Register (
	rst_n,
	scl,
	data_in,
	sda_o,
	load_rdata,
	enable_desp
	); 

// Ports definition
	input wire 			rst_n;
	input wire 			scl;
	input wire 			enable_desp;
	input wire 			load_rdata;
	input wire [31:0]		data_in;
	output 		 		sda_o;
	
// Registers and nets definition
	reg [31:0] c_data_in; 
	
assign sda_o = c_data_in[31]; 
//Shift Register
always@(negedge scl, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			c_data_in <= 8'h00;
		else if (load_rdata == 1'b1 && enable_desp == 1'b0)
			c_data_in <= data_in;
		else if(enable_desp == 1'b1)
			c_data_in[31:0] <= {c_data_in[30:0], 1'b0}; //I will do a shift register to send the datas	
		else
			c_data_in <= c_data_in; 
	end

endmodule