module ram_module (
		rdata,			// Read data bus
		raddr,			// Read address bus
		rclk,			// Read clock
		rclke,			// Read clock enable
		re,			// Read enable
		waddr,			// Write address bus
		wclk,			// Write clock
		wclke,			// Write clock enable
		wdata,			// Write data bus
		we			// Write enable
	);
 
 

// Generic parameters
//parameter address_mem_width = 6;    // Raul: lo comento para cambiar a 7 (128 canales)
parameter address_mem_width = 8;
parameter data_mem_width = 32;

parameter TAM_MEM = 64;


// Ports definition
input wire rclk, rclke, re;
input wire wclk, wclke, we;
input wire [data_mem_width-1:0] wdata;
input wire [address_mem_width-1:0] raddr, waddr;
output reg [data_mem_width-1:0] rdata; 

// Memory definition
reg [data_mem_width-1:0] mem[TAM_MEM-1:0];    // MEMORIA DE TAM_MEM POSICIONES Y datos de data_mem_width en cada posicion

// Process associated to the writing operation
always @( posedge wclk)
	begin
		if (we == 1'b1 && wclke == 1'b1)
			mem[waddr] <= wdata;
	end
	
always @(posedge rclk)
	begin
		if (re == 1'b1 && rclke == 1'b1)
			rdata <= mem[raddr];
		else
			rdata <= 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	end

endmodule