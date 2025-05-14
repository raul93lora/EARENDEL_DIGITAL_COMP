module spi_top (
		rst_n,
		clk,
		start_conf_a,
		end_conf_a,
		start_op_a,
		start_read_a,
		start_conf_b,
		end_conf_b,
		start_op_b,
		start_read_b,
		csb,
		din,
		dout,
		sclk,
		mcu_sclk,
		mcu_data,
		end_read0,
		end_read1,
		data_config,
		data_coarseovf,
		data_clkctrovf,
		data_clkstopmask,
		data_interrupts
		);

//Ports definition
input wire			rst_n;
input wire			clk;
input wire			start_conf_a;
output wire			end_conf_a;
input wire			start_op_a;
input wire			start_read_a;
input wire			start_conf_b;
output wire			end_conf_b;
input wire			start_op_b;
input wire			start_read_b;
output wire	[1:0]	csb;
input wire	[1:0]	din;
output wire	[1:0]	dout;
output wire	[1:0]	sclk;
output reg			mcu_sclk;
output reg			mcu_data;
output wire 		end_read0;
output wire			end_read1;
input wire [23:0] data_config;
input wire [23:0] data_coarseovf;
input wire [23:0] data_clkctrovf;
input wire [23:0] data_clkstopmask;
input wire [23:0] data_interrupts;

//Internal nets and registers
wire pwrite_reg, psel_reg, penable_reg;
wire [3:0] addr_reg;
wire [31:0] pwdata_reg;
wire mcu_sclk_a, mcu_sclk_b;
wire mcu_data_a, mcu_data_b;
wire sel_mcu_a, sel_mcu_b;
wire [1:0] sel_mcu;

//Control of MCU multiplexer
assign sel_mcu = {sel_mcu_b, sel_mcu_a};

//MCU MULTIPLEXER
always @(sel_mcu, mcu_sclk_a, mcu_sclk_b, mcu_data_a, mcu_data_b)
	case (sel_mcu)
		2'b01:
			begin
				mcu_sclk = mcu_sclk_a;
				mcu_data = mcu_data_a;
			end 
		2'b10:
			begin
				mcu_sclk = mcu_sclk_b;
				mcu_data = mcu_data_b;
			end
		default:
			begin
				mcu_sclk = 1'b0;
				mcu_data = 1'b0;
			end
	endcase
	
tdc_spi tdc_inst_a(
		.rst_n				(rst_n),
		.clk				(clk),
		.start_conf			(start_conf_a),
		.end_conf			(end_conf_a),
		.start_op			(start_op_a),
		.start_read			(start_read_a),
		.csb				(csb[0]),
		.din				(din[0]),
		.dout				(dout[0]),
		.sclk				(sclk[0]),
		.sel_mcu			(sel_mcu_a),
		.mcu_sck			(mcu_sclk_a),
		.mcu_data			(mcu_data_a),
		.end_read			(end_read0),
		.data_config		(data_config[23:0]),
		.data_coarseovf		(data_coarseovf[23:0]),
		.data_clkctrovf		(data_clkctrovf[23:0]),
		.data_clkstopmask	(data_clkstopmask[23:0]),
		.data_interrupts	(data_interrupts[23:0])
	);

tdc_spi tdc_inst_b(
		.rst_n				(rst_n),
		.clk				(clk),
		.start_conf			(start_conf_b),
		.end_conf			(end_conf_b),
		.start_op			(start_op_b),
		.start_read			(start_read_b),
		.csb				(csb[1]),
		.din				(din[1]),
		.dout				(dout[1]),
		.sclk				(sclk[1]),
		.sel_mcu			(sel_mcu_b),
		.mcu_sck			(mcu_sclk_b),
		.mcu_data			(mcu_data_b),
		.end_read			(end_read1),
		.data_config		(data_config[23:0]),
		.data_coarseovf		(data_coarseovf[23:0]),
		.data_clkctrovf		(data_clkctrovf[23:0]),
		.data_clkstopmask	(data_clkstopmask[23:0]),
		.data_interrupts	(data_interrupts[23:0])
	);

endmodule