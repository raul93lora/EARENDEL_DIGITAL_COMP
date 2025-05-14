module I2C_top_level
#(
parameter  ADDRESS_BUS_WIDTH 		= 16,
			DATA_BUS_WIDTH 			= 32
)
( 
	rst_n,
	sda_i,
	sda_o,
	in_out,
	scl, 
	clk_sys,
	prdata,
	pwdata,
	paddr,
	psel,
	penable,
	pwrite,
	pslverr,
	pready,
	we_i2c,
	wdata_i2c
	//ready_slave_address
	);

// Ports definition
input wire sda_i;
output sda_o;
output in_out;
input wire scl;
input wire rst_n;
input wire clk_sys;
input [DATA_BUS_WIDTH-1:0] prdata;
output [DATA_BUS_WIDTH-1:0] pwdata;
output [ADDRESS_BUS_WIDTH-1:0] paddr;
output psel;
output penable;
output pwrite;
input pslverr;
input pready;
output we_i2c;
output [3:0] wdata_i2c;
//output ready_slave_address;

// Registers and nets definition
wire s_load_command, s_load_addr0, s_load_addr1, s_sda_i, s_sda_o_ack, s_r_w, s_load_wdata, s_load_rdata, s_sda_o_reg, s_load_rdata2;
wire s_enable_desp_rx, s_enable_desp_tx, s_start, s_stop, s_in_out, s_start_inter, s_ack, s_ready_slave_address, s_no_restart, s_burst;
wire [7:0] s_data_ireg,  s_command, s_addr0_o, s_addr1_o; 
reg [1:0] s_sda_o_q;
reg s_sda_o_tx;
wire [DATA_BUS_WIDTH-1:0] s_data_oreg;

always @(posedge clk_sys)
	begin
		s_sda_o_q[0] <= s_sda_o_reg;
		s_sda_o_q[1] <= s_sda_o_q[0];
		s_sda_o_tx <= s_sda_o_q[1];
	end

assign sda_o = (s_enable_desp_tx) ? s_sda_o_tx : s_sda_o_ack;
assign s_sda_i = sda_i;
assign in_out = s_in_out;
//assign ready_slave_address = s_ready_slave_address;


//Instantiation of the diferent blocks
I2C_Control_StartUp I2C_Control_StartUp_inst(
	.rst_n					(rst_n),
	.sda_in					(s_sda_i),
	.scl					(scl),
	.start_detect				(s_start),
	.stop_detect				(s_stop)
	);

I2C_FSM I2C_FSM_inst(
	.rst_n					(rst_n),
	.scl					(scl),
	.start_i				(s_start),
	.start_inter				(s_start_inter),
	.stop_i					(s_stop),
	.no_restart				(s_no_restart),
	.ack					(s_ack),
	.burst					(s_burst),
	.sda_i					(s_sda_i),
	.load_rdata				(s_load_rdata),
	.ready_slave_address			(s_ready_slave_address),
	.load_wdata				(s_load_wdata),
	.data_ireg				(s_data_ireg),
	.in_out					(s_in_out),
	.load_command				(s_load_command),
	.load_addr0				(s_load_addr0),
	.load_addr1				(s_load_addr1),
	.enable_desp_rx			(s_enable_desp_rx),
	.enable_desp_tx			(s_enable_desp_tx),
	.r_w					(s_r_w),
	.sda_o					(s_sda_o_ack)
	);
	
I2C_interpreter I2C_Interpreter_inst(
	.clk_sys				(clk_sys),
	.reset					(rst_n),
	.sda_i					(s_sda_i),
	.r_w					(s_r_w),
	.stop					(s_stop), 
	.ack					(s_ack),
	.scl					(scl),
	.ready_slave_addr			(s_ready_slave_address), 
	.start_I2C				(s_start), 
	.start_inter				(s_start_inter),
	.load_rdata				(s_load_rdata),
	.load_rdata2				(s_load_rdata2),
	.load_wdata				(s_load_wdata),
	.data_rx				(s_data_ireg), //escritura 
	.command				(s_command),
	.addr0					(s_addr0_o),
	.addr1					(s_addr1_o),
	.no_restart				(s_no_restart),
	.burst					(s_burst),
	.prdata					(prdata), 
	.pwdata					(pwdata), 
	.paddr					(paddr),
	.penable				(penable), 
	.psel					(psel),
	.pready					(pready),
	.pwrite					(pwrite),
	.pslverr				(pslverr),
	.data_tx				(s_data_oreg), //lectura 
	.we_i2c					(we_i2c),
	.wdata_i2c				(wdata_i2c)
);
	
RX_Shift_Register RX_Shift_Register_inst(
	.rst_n					(rst_n),
	.sda_in					(s_sda_i),
	.scl					(scl),
	.enable_desp				(s_enable_desp_rx),
	.data_o					(s_data_ireg)
	);

TX_Shift_Register TX_Shift_Register_inst(
	.rst_n					(rst_n),
	.sda_o					(s_sda_o_reg),
	.scl					(scl),
	.load_rdata 				(s_load_rdata2),
	.enable_desp				(s_enable_desp_tx),
	.data_in				(s_data_oreg)
	);

command_reg command_reg_inst(
	.rst_n					(rst_n),
	.SCL					(scl),
	.data_i					(s_data_ireg),
	.command				(s_command),
	.load_command				(s_load_command)
);

I2C_addr0_reg addr0_reg_inst(
	.rst_n					(rst_n),
	.SCL					(scl),
	.data_i					(s_data_ireg),
	.addr0					(s_addr0_o),
	.load_addr0				(s_load_addr0)
);

I2C_addr1_reg addr1_reg_inst(
	.rst_n					(rst_n),
	.SCL					(scl),
	.data_i					(s_data_ireg),
	.addr1					(s_addr1_o),
	.load_addr1				(s_load_addr1)
);

endmodule
