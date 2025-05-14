module I2C_addr1_reg(
	rst_n,
	SCL,
	data_i,
	addr1,
	load_addr1
);

input wire [7:0] data_i;
input wire rst_n, SCL;
output [7:0] addr1;
input wire load_addr1;

reg [7:0] c_addr1, n_addr1;

assign addr1 = c_addr1;

always @(posedge SCL, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			c_addr1 <= 8'h0;
		else
			c_addr1 <= n_addr1;
	end

always @(load_addr1, c_addr1, data_i)
	begin
		
		if (load_addr1 == 1'b1)
			n_addr1 = data_i;
		else
			n_addr1 = c_addr1;
	end

endmodule