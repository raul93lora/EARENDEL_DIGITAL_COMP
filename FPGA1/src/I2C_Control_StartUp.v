/*In this module, it is detected the start and stop condition without clk_sys, only with the signal sda_in, scl and the reset*/
module I2C_Control_StartUp (
	rst_n,
	sda_in,
	scl,
	start_detect,
	stop_detect
	);

// Ports definition
	input wire 		rst_n; //reset activated in low level
	input wire 		sda_in; //sda of I2C interface
	input wire 		scl; //scl, clock of I2C Interface
	output reg 		stop_detect; //signal that inform that a stop condition has been detected
	output reg 		start_detect; //signal that inform that a start condition has been detected
	
// Registers and nets definition
	reg             start_resetter;
	wire            start_rst = rst_n | start_resetter;
	reg             stop_resetter;
	wire            stop_rst = rst_n | stop_resetter;
	wire 			rst_neg;
	
// Start condition detection
assign rst_neg = rst_n & (~start_resetter);
always @(negedge sda_in, negedge rst_neg)
	begin
		if (rst_neg == 1'b0)
			start_detect <= 1'b0;
		else
			start_detect <= scl;
	end
always @(posedge scl, negedge rst_n)
	begin
		if (rst_n == 1'b0)
			start_resetter <= 1'b0;
		else
			start_resetter <= start_detect;
	end

// Stop condition detection
always @(posedge sda_in, posedge stop_resetter)
	begin
		if (stop_resetter)
			stop_detect <= 1'b0;
		else
			stop_detect <= scl;
	end
always @(posedge scl , posedge rst_n)
	begin
		if (rst_n)
			stop_resetter <= stop_detect;
		else
			stop_resetter <= 1'b0;		
	end

endmodule