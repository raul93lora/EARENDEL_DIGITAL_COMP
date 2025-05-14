//`include "C:/Users/ana.palomero/my_designs/ASIC_PoC/I2C_Wardiam_X3/I2C_Register.v"
module top_cemf_module_64ch_reg (
		rst_n,
		clock,
		pwrite,
		psel,
		penable,
		paddr,
		pwdata,
		prdata,
		pready,
		data_system_o,
		clr_sys_reg,
		data_config,
		data_coarseovf,
		data_clkctrovf,
		data_clkstopmask,
		data_interrupts
	);
	
// Generic parameters
parameter address_bus_width = 16;
parameter data_mem_width = 32;

//Ports definitions
input wire rst_n;
input wire clock;
input wire pwrite;
input wire psel;
input wire penable;
input wire [15:0] paddr;
input wire [31:0] pwdata;
output wire [31:0] prdata;
output wire pready;
output wire [31:0] data_system_o;
input wire clr_sys_reg;
output wire [23:0] data_config;
output wire [23:0] data_coarseovf;
output wire [23:0] data_clkctrovf;
output wire [23:0] data_clkstopmask;
output wire [23:0] data_interrupts;

//Internal nets and registers
wire psel_mem, psel_reg, pready_mem, pready_reg, penable_mem, penable_reg, pwrite_mem, pwrite_reg;
wire [31:0] prdata_reg, prdata_mem, pwdata_reg, pwdata_mem;
wire [15:0] addr_mem;
wire [15:0] addr_reg;
assign addr_mem = (paddr[15:0] > 16'b0000000000000111) ? (paddr[15:0] - 16'b0000000000001000) : 16'b00000000000000000;
assign pwrite_mem = (paddr[15:0] > 16'b0000000000000111) ? pwrite : 1'b0;
assign psel_mem = (paddr[15:0] > 16'b0000000000000111) ? psel : 1'b0;
assign penable_mem = (paddr[15:0] > 16'b0000000000000111) ? penable : 1'b0;
assign pwdata_mem = (paddr[15:0] > 16'b0000000000000111) ? pwdata : 32'h00000000;

assign addr_reg = (paddr[15:0] <= 16'b0000000000000111) ? paddr[15:0] : 16'b00000000000000000;
assign pwrite_reg = (paddr[15:0] <= 16'b0000000000000111) ? pwrite : 1'b0;
assign psel_reg = (paddr[15:0] <= 16'b0000000000000111) ? psel : 1'b0;
assign penable_reg = (paddr[15:0] <= 16'b0000000000000111) ? penable : 1'b0;
assign pwdata_reg = (paddr[15:0] <= 16'b0000000000000111) ? pwdata : 32'h00000000;

assign pready = (paddr[15:0] > 16'b0000000000000111) ? pready_mem : pready_reg;
assign prdata = (paddr[15:0] > 16'b0000000000000111) ? prdata_mem : prdata_reg;
	
//Mem insta
ram_module_top ram_module_top_inst(
		.prdata			(prdata_mem), 
		.paddr			(addr_mem), 
		.clk			(clock),
		.pwrite			(pwrite_mem),
		.penable		(penable_mem),
		.psel			(psel_mem),
		.pwdata			(pwdata_mem),	
		.pready			(pready_mem)
	);

//Registros internos

//ID
I2C_Register_read
#(		.ADDR (16'b0000000000000000),
		.DATA (32'b000000000000000000000000000000000),
		.DATA_BUS_WIDTH(32),
		.ADDRESS_BUS_WIDTH(16)
)
I2C_Register_id
(
	.pclk				(clock),
	.reset				(rst_n),
	.pwrite				(pwrite_reg),
	.psel				(psel_reg),
	.penable			(penable_reg),
	.paddr				(addr_reg),
	.pready				(pready_reg),
//	pslverr				(),
	.prdata				(prdata_reg)
//	data_system_o
);

//STATUS
I2C_Register_read
#(		.ADDR (16'b0000000000000001),
		.DATA (32'b000000000000000000000000000000000),
		.DATA_BUS_WIDTH(32),
		.ADDRESS_BUS_WIDTH(16)
)
I2C_Register_status
(
	.pclk				(clock),
	.reset				(rst_n),
	.pwrite				(pwrite_reg),
	.psel				(psel_reg),
	.penable			(penable_reg),
	.paddr				(addr_reg),
	.pready				(pready_reg),
//	pslverr				(),
	.prdata				(prdata_reg)
//	data_system_o		
);

//SYSTEM CONFIG
I2C_Register_sys
#(		.ADDR (16'b0000000000000010),
		.DATA (32'b000000000000000000000000000000000),
		.DATA_BUS_WIDTH(32),
		.ADDRESS_BUS_WIDTH(16)		
)
I2C_Register_conf_cmf
(
		.pclk			(clock),
		.reset			(rst_n),
		.pwrite			(pwrite_reg),
		.psel			(psel_reg),
		.penable		(penable_reg),
		.pready			(pready_reg),
		.paddr			(addr_reg),
		.pwdata			(pwdata_reg),
		.prdata			(prdata_reg),
		.data_system_o	(data_system_o),
		.clr_conf		(clr_sys_reg)
		);

//TDC configuration
I2C_Register
#(		.ADDR (16'b0000000000000011),
		.DATA (32'h00C08240),
		.DATA_BUS_WIDTH(32),
		.ADDRESS_BUS_WIDTH(16)		
)
I2C_Register_conf1
(
		.pclk			(clock),
		.reset			(rst_n),
		.pwrite			(pwrite_reg),
		.psel			(psel_reg),
		.penable		(penable_reg),
		.pready			(pready_reg),
		.paddr			(addr_reg),
		.pwdata			(pwdata_reg),
		.prdata			(prdata_reg),
		.data_system_o	(data_config)
		);

I2C_Register
#(		.ADDR (16'b0000000000000100),
		.DATA (32'h00C4FFFF),
		.DATA_BUS_WIDTH(32),
		.ADDRESS_BUS_WIDTH(16)		
)
I2C_Register_conf2
(
		.pclk			(clock),
		.reset			(rst_n),
		.pwrite			(pwrite_reg),
		.psel			(psel_reg),
		.penable		(penable_reg),
		.pready			(pready_reg),
		.paddr			(addr_reg),
		.pwdata			(pwdata_reg),
		.prdata			(prdata_reg),
		.data_system_o	(data_coarseovf)
		);
I2C_Register
#(		.ADDR (16'b0000000000000101),
		.DATA (32'h00C6FFFF),
		.DATA_BUS_WIDTH(32),
		.ADDRESS_BUS_WIDTH(16)		
)
I2C_Register_conf3
(
		.pclk			(clock),
		.reset			(rst_n),
		.pwrite			(pwrite_reg),
		.psel			(psel_reg),
		.penable		(penable_reg),
		.pready			(pready_reg),
		.paddr			(addr_reg),
		.pwdata			(pwdata_reg),
		.prdata			(prdata_reg),
		.data_system_o	(data_clkctrovf)
		);

I2C_Register
#(		.ADDR (16'b0000000000000110),
		.DATA (32'h00C80000),
		.DATA_BUS_WIDTH(32),
		.ADDRESS_BUS_WIDTH(16)		
)
I2C_Register_conf4
(
		.pclk			(clock),
		.reset			(rst_n),
		.pwrite			(pwrite_reg),
		.psel			(psel_reg),
		.penable		(penable_reg),
		.pready			(pready_reg),
		.paddr			(addr_reg),
		.pwdata			(pwdata_reg),
		.prdata			(prdata_reg),
		.data_system_o	(data_clkstopmask)
		);
I2C_Register
#(		.ADDR (16'b0000000000000111),
		.DATA (32'h00C20007),
		.DATA_BUS_WIDTH(32),
		.ADDRESS_BUS_WIDTH(16)		
)
I2C_Register_conf5
(
		.pclk			(clock),
		.reset			(rst_n),
		.pwrite			(pwrite_reg),
		.psel			(psel_reg),
		.penable		(penable_reg),
		.pready			(pready_reg),
		.paddr			(addr_reg),
		.pwdata			(pwdata_reg),
		.prdata			(prdata_reg),
		.data_system_o	(data_interrupts)
		);

endmodule
		
	
	
