module I2C_Register_read
#(
parameter ADDR = 16'b0000000000000000,
		  DATA = 32'b10101010101110111100110011011101,
		  DATA_BUS_WIDTH = 32,
		  ADDRESS_BUS_WIDTH = 16
)
(
	pclk,
	reset,
	pwrite,
	psel,
	penable,
	paddr,
//	pwdata,
	pready,
//	pslverr,
	prdata
//	data_system_o
);

//Ports definition
input pclk;
input reset;
input pwrite;
input psel;
input penable;
input [ADDRESS_BUS_WIDTH-1:0] paddr;
//input [31:0] pwdata;
output reg pready;
//output reg pslverr;
output reg [31:0] prdata;
//output [DATA_BUS_WIDTH-1:0] data_system_o;

// Registers and nets definition
reg [DATA_BUS_WIDTH-1:0] c_data_system_o, n_data_system_o; 
	
//assign data_system_o = c_data_system_o;

	
always @(posedge pclk, negedge reset)
	begin
		if (reset == 1'b0)
			c_data_system_o <= DATA;
		else 
			c_data_system_o <= n_data_system_o;
	end

always @(pwrite, paddr, psel, penable, c_data_system_o)
	begin
//		pslverr = 1'bz;
		pready = 1'bz;
		if (paddr == ADDR && psel == 1'b1)
			begin
				if(pwrite == 1'b0)
					begin
						prdata = c_data_system_o;
						n_data_system_o = c_data_system_o;
						if(penable == 1'b1)
							pready = 1'b1;
					end
				else if (pwrite == 1'b1)
					begin
						n_data_system_o = c_data_system_o;
						prdata = 32'hzzzzzzzz;
						if(penable == 1'b1)
							pready = 1'b1;
					end
				else
					begin
						n_data_system_o = c_data_system_o;
						prdata = 32'hzzzzzzzz;
						pready = 1'bz;
					end
			end
		else
			begin
				n_data_system_o = c_data_system_o;
				prdata = 32'hzzzzzzzz;
				pready = 1'bz;
			end
	end
	
	
endmodule