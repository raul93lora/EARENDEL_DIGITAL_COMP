module I2C_addr0_reg(
	rst_n,
	SCL,
	data_i,
	addr0,
	load_addr0
);

//Ports definition
input wire [7:0] data_i;
input wire rst_n, SCL;
output [7:0] addr0;
input wire load_addr0;

// Registers and nets definition
reg [7:0] c_addr0, n_addr0;

assign addr0 = c_addr0;

always @(posedge SCL, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			c_addr0 <= 8'h0;
		else
			c_addr0 <= n_addr0;
	end


always @(load_addr0, c_addr0, data_i)
	begin
		
		if (load_addr0 == 1'b1)
			n_addr0 = data_i;
		else
			n_addr0 = c_addr0;
	end

endmodule