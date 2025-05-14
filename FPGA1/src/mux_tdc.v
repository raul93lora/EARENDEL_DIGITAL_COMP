module mux_tdc (
		trigger0, //tdc_a
		trigger1, //tdc_b
		trigger,
		start0,
		start1,
		start,
		stop0,
		stop1,
		stop,
		cntrl_tdc
	);

// Ports definition
input wire trigger0;
input wire trigger1;
output wire trigger;
output wire start0;
output wire start1;
input wire start;
output wire stop0;
output wire stop1;
input wire stop;
input wire cntrl_tdc;

// Nets and registers definition

// Combinational assignment to multiplaxer the tdc signals
assign trigger = (cntrl_tdc == 1'b0) ? trigger0 : trigger1;
assign start0 = (cntrl_tdc == 1'b0) ? start : 1'b0;
assign start1 = (cntrl_tdc == 1'b0) ? 1'b0 : start;
assign stop0 = (cntrl_tdc == 1'b0) ? stop : 1'b0;
assign stop1 = (cntrl_tdc == 1'b0) ? 1'b0 : stop;
	
endmodule