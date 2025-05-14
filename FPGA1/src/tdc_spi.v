module tdc_spi (
		rst_n,
		clk,
		start_conf,
		end_conf,
		start_op,
		start_read,
		csb,
		din,
		dout,
		sclk,
		sel_mcu,
		mcu_sck,
		mcu_data,
		end_read,
		data_config,
		data_coarseovf,
		data_clkctrovf,
		data_clkstopmask,
		data_interrupts
	);

// Ports definitions
input wire rst_n;
input wire clk;
input wire start_conf;
output wire end_conf;
input wire start_op;
input wire start_read;
output reg csb;
input wire din;
output reg dout;
output reg sclk;
output wire sel_mcu;
output wire mcu_sck;
output wire mcu_data;
output wire end_read;
input wire [23:0] data_config;
input wire [23:0] data_coarseovf;
input wire [23:0] data_clkctrovf;
input wire [23:0] data_clkstopmask;
input wire [23:0] data_interrupts;

//Internal nets and registers
wire sel_conf, sel_op, sel_read;
wire [2:0] sel;
wire csb_conf, dout_conf, sclk_conf;
wire csb_op, dout_op, sclk_op;
wire csb_read, dout_read, sclk_read;

//Control of multiplexers
assign sel = {sel_read, sel_op, sel_conf};

//csb MULTIPLEXER
always @(sel, csb_conf, csb_op, csb_read)
	case (sel)
		3'b001: 	csb = csb_conf;
		3'b010: 	csb = csb_op;
		3'b100: 	csb = csb_read;
		default:	csb = 1'b1;
	endcase
	
//sclk MULTIPLEXER
always @(sel, sclk_conf, sclk_op, sclk_read)
	case (sel)
		3'b001: 	sclk = sclk_conf;
		3'b010: 	sclk = sclk_op;
		3'b100: 	sclk = sclk_read;
		default:	sclk = 1'b0;
	endcase

//sclk MULTIPLEXER
always @(sel, dout_conf, dout_op, dout_read)
	case (sel)
		3'b001: 	dout = dout_conf;
		3'b010: 	dout = dout_op;
		3'b100: 	dout = dout_read;
		default:	dout = 1'b0;
	endcase

tdc_spi_conf spi_conf_inst1(
		.rst_n 				(rst_n),
		.clk 				(clk),
		.start_conf 		(start_conf),
		.end_conf			(end_conf),
		.sel_conf 			(sel_conf),
		.csb 				(csb_conf),
		.din 				(din),
		.dout 				(dout_conf),
		.sclk 				(sclk_conf),
		.data_config 		(data_config),
		.data_coarseovf 	(data_coarseovf),
		.data_clkctrovf 	(data_clkctrovf),
		.data_clkstopmask	(data_clkstopmask),
		.data_interrupts 	(data_interrupts)
	);

tdc_spi_op spi_op_inst1(
		.rst_n 		(rst_n),
		.clk 		(clk),
		.start_op 	(start_op),
		.sel_op 	(sel_op),
		.csb 		(csb_op),
		.din 		(din),
		.dout 		(dout_op),
		.sclk 		(sclk_op)
	);
	
tdc_spi_read spi_read_inst1(
		.rst_n 			(rst_n),
		.clk 			(clk),
		.start_read 	(start_read),
		.sel_read 		(sel_read),
		.csb 			(csb_read),
		.din 			(din),
		.dout 			(dout_read),
		.sclk 			(sclk_read),
		.sel_mcu		(sel_mcu),
		.mcu_sck 		(mcu_sck),
		.mcu_data 		(mcu_data),
		.end_read		(end_read)
	);

endmodule
	
		
		
		