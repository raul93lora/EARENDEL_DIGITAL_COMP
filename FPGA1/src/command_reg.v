module command_reg(
	rst_n,
	SCL,
	data_i,
	command,
	load_command
);

//Ports definition
input wire [7:0] data_i;
input wire rst_n, SCL;
output [7:0] command;
input wire load_command;

// Registers and nets definition
reg [7:0] c_command, n_command;

assign command = c_command;

always @(posedge SCL, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			c_command <= 8'h0;
		else
			c_command <= n_command;
	end

always @(load_command, c_command, data_i)
	begin
		
		if (load_command == 1'b1)
			n_command = data_i;
		else
			n_command = c_command;
	end

endmodule