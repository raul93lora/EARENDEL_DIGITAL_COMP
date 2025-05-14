module ram_module_top (
		prdata, 
		paddr, 
		clk,
		pwrite,
		penable,
		psel,
		pwdata, 
		pready
	);
	
// Generic parameters
//parameter address_mem_width = 6;    // Raul: lo comento
parameter address_mem_width = 6;
parameter address_bus_width = 16;
parameter data_mem_width = 32;

// Ports definition
output wire [data_mem_width-1:0] prdata;
input wire [address_bus_width-1:0] paddr;
input wire clk;
input wire psel, penable;
input wire [data_mem_width-1:0] pwdata;
input wire pwrite;
//output wire [data_mem_width-1:0] rdata_b;
//input wire [address_bus_width-1:0] raddr_b;
//input wire re_b;
//input wire [address_bus_width-1:0] waddr_b;
//input wire [data_mem_width-1:0] wdata_b;
//input wire we_b;
output pready;

// Raul: el bus de direcciones tiene 32 bits, si tenemos 5 memorias de 64 posiciones y 32 bits cada una,
// con los bits 6,7,8 del bus de direcciones elegimos entre una memoria u otra. Esto no entiendo bien 
// por qué lo hacía así Francisco, pero para no perder consistencia, en principio, lo escribo igual.

//Internal nets and registers
wire re_elec0;
wire re_elec1;
wire re_elec2;
wire re_elec3;		// Raul: para seguir cómo estaba --> hay que añadir dos elecciones más y dos instancias de memoria más
wire re_elec4;		// Raul: para seguir cómo estaba --> hay que añadir dos elecciones más y dos instancias de memoria más
/*
wire re_elec5;
wire re_elec6;
wire re_elec7;		// Raul: para seguir cómo estaba --> hay que añadir dos elecciones más y dos instancias de memoria más
wire re_elec8;		// Raul: para seguir cómo estaba --> hay que añadir dos elecciones más y dos instancias de memoria más
*/
wire we_elec0;
wire we_elec1;
wire we_elec2;
wire we_elec3;		// Raul: para seguir cómo estaba --> hay que añadir dos elecciones más y dos instancias de memoria más
wire we_elec4;		// Raul: para seguir cómo estaba --> hay que añadir dos elecciones más y dos instancias de memoria más
/*
wire we_elec5;
wire we_elec6;
wire we_elec7;		// Raul: para seguir cómo estaba --> hay que añadir dos elecciones más y dos instancias de memoria más
wire we_elec8;		// Raul: para seguir cómo estaba --> hay que añadir dos elecciones más y dos instancias de memoria más
*/
//wire re_b0;
//wire re_b1;
//wire we_b0;
//wire we_b1;
	
//Combinational assignment	
assign re_elec0 = (paddr[8:6] == 2'b000 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec1 = (paddr[8:6] == 2'b001 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec2 = (paddr[8:6] == 2'b010 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec3 = (paddr[8:6] == 2'b011 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec4 = (paddr[8:6] == 2'b100 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign we_elec0 = (paddr[8:6] == 2'b000 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec1 = (paddr[8:6] == 2'b001 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec2 = (paddr[8:6] == 2'b010 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec3 = (paddr[8:6] == 2'b011 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec4 = (paddr[8:6] == 2'b100 && pwrite && psel && penable) ? 1'b1 : 1'b0;


/* ADICIONAL TEST 129*2 steps */
/*
assign re_elec0 = (paddr[9:6] == 2'b000 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec1 = (paddr[9:6] == 2'b001 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec2 = (paddr[9:6] == 2'b010 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec3 = (paddr[9:6] == 2'b011 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec4 = (paddr[9:6] == 2'b100 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec5 = (paddr[9:6] == 2'b001 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec6 = (paddr[9:6] == 2'b010 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec7 = (paddr[9:6] == 2'b011 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign re_elec8 = (paddr[9:6] == 2'b100 && !pwrite && psel && !penable) ? 1'b1 : 1'b0;
assign we_elec0 = (paddr[9:6] == 2'b000 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec1 = (paddr[9:6] == 2'b001 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec2 = (paddr[9:6] == 2'b010 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec3 = (paddr[9:6] == 2'b011 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec4 = (paddr[9:6] == 2'b100 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec5 = (paddr[9:6] == 2'b001 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec6 = (paddr[9:6] == 2'b010 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec7 = (paddr[9:6] == 2'b011 && pwrite && psel && penable) ? 1'b1 : 1'b0;
assign we_elec8 = (paddr[9:6] == 2'b100 && pwrite && psel && penable) ? 1'b1 : 1'b0;
*/

//assign we_b0 = (waddr_b[7:6] == 2'b00) ? we_b : 1'b0;
//assign we_b1 = (waddr_b[7:6] == 2'b01) ? we_b : 1'b0;
//assign re_b0 = (raddr_b[7:6] == 2'b00) ? re_b : 1'b0;
//assign re_b1 = (raddr_b[7:6] == 2'b01) ? re_b : 1'b0;
assign pready = penable;


// Memories instantiation
ram_module ram_module_inst0 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec0),			// Read clock enable
		.re				(re_elec0),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec0),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec0)			// Write enable
	);

ram_module ram_module_inst1 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec1),			// Read clock enable
		.re				(re_elec1),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec1),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec1)			// Write enable
	);

ram_module ram_module_inst2 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec2),			// Read clock enable
		.re				(re_elec2),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec2),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec2)			// Write enable
	);


ram_module ram_module_inst3 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec3),			// Read clock enable
		.re				(re_elec3),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec3),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec3)			// Write enable
	);

ram_module ram_module_inst4 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec4),			// Read clock enable
		.re				(re_elec4),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec4),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec4)			// Write enable
	);

/*
// ADICIONAL - 129*2 steps
ram_module ram_module_inst5 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec5),			// Read clock enable
		.re				(re_elec5),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec5),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec5)			// Write enable
	);

ram_module ram_module_inst6 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec6),			// Read clock enable
		.re				(re_elec6),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec6),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec6)			// Write enable
	);


ram_module ram_module_inst7 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec7),			// Read clock enable
		.re				(re_elec7),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec7),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec7)			// Write enable
	);

ram_module ram_module_inst8 (
		.rdata				(prdata),			// Read data bus
		.raddr				(paddr[5:0]),			// Read address bus
		.rclk				(clk),				// Read clock
		.rclke				(re_elec8),			// Read clock enable
		.re				(re_elec8),			// Read enable
		.waddr				(paddr[5:0]),			// Write address bus
		.wclk				(clk),				// Write clock
		.wclke				(we_elec8),			// Write clock enable
		.wdata				(pwdata),			// Write data bus
		.we				(we_elec8)			// Write enable
	);
*/

endmodule




