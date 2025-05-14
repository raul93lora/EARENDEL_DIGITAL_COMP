/* CEMF MODULE 64 CH MAIN (EN REALIDAD 128 CANALES)
* Rev: Raul Lora Rivera, v1
*
*/
module cemf_module_64ch_main #(parameter N_ELECTRODES = 129)  (
	rst_n,
	clock,
	cemf_signal,
	sync_50hz,
	trigger0,
	trigger1,
	start0,
	start1,
	stop0,
	stop1,
	sclk0,
	sclk1,
	csb0,
	csb1,
	sdin0,
	sdin1,
	dout0,
	dout1,
	intb0,
	intb1,
	mcu_sclk,
	mcu_data,
	frame_sync,
	scl,
	sda,
	elec_config_out,
	next_sequence,
	stop_fpga2,
	s3,
	s2,
	s1,
	s0,
	serial_out_testing,
	enable_config
);

	// Ports definitions
	input wire rst_n;
	input wire clock;
	input wire cemf_signal;
	input wire sync_50hz;
	input wire trigger0;
	input wire trigger1;
	output wire start0;
	output wire start1;
	output wire stop0;
	output wire stop1;
	output wire sclk0;
	output wire sclk1;
	output wire csb0;
	output wire csb1;
	input wire sdin0;
	input wire sdin1;
	output wire dout0;
	output wire dout1;
	input wire intb0;
	input wire intb1;
	output wire mcu_sclk;
	output wire mcu_data;
	output wire frame_sync;
	input wire scl;
	inout wire sda;
	output wire elec_config_out;
	output wire next_sequence;
	output wire stop_fpga2;

	// Output port for testing
	wire [3:0] electrode_out_test;
	output wire s3;
	output wire s2;
	output wire s1;
	output wire s0;
	output wire serial_out_testing;

	// Internal nets and registers
	wire s_psel, s_pready, s_penable, s_pwrite, s_sda_i, s_sda_o, sda_o, entrada;
	wire s_in_out, we_i2c, s_in_out_n, s_intb0, s_intb1;
	wire [15:0] s_paddr_I2C; 
	wire [31:0] s_prdata, s_pwdata;
	wire [N_ELECTRODES-1:0] elec_config;
	wire [3:0] wdata_i2c;
	wire en_fe;
	output wire enable_config;		// Raul

	//Multiplexor
	assign entrada = 1'b0;
	assign s_clk = clock;

	assign sda_o = (s_in_out == 1'b1) ? 1'b0 : ~s_sda_o;

	SB_IO IO_PIN_INST
	(
		.PACKAGE_PIN (sda), 						// User’s Pin signal name
		.LATCH_INPUT_VALUE (), 					// Latches/holds the Input value
		.CLOCK_ENABLE (), 						// Clock Enable common to input and 	// output clock
		.INPUT_CLK (), 						// Clock for the input registers
		.OUTPUT_CLK (), 						// Clock for the output registers
		.OUTPUT_ENABLE (sda_o), 					// Output Pin Tristate/Enable // control
		.D_OUT_0 (entrada), 						// Data 0 – out to Pin/Rising clk // edge
		.D_OUT_1 (), 							// Data 1 - out to Pin/Falling clk // edge
		.D_IN_0 (s_sda_i), 						// Data 0 - Pin input/Rising clk// edge
		.D_IN_1 () 							// Data 1 – Pin input/Falling clk // edge
	) ;


	defparam IO_PIN_INST.PIN_TYPE = 6'b101001;
	// See Input and Output Pin Function Tables.
	// Default value of PIN_TYPE = 6’000000 i.e.
	// an input pad, with the input signal
	// registered.

	//defparam IO_PIN_INST.PULLUP = 1'b0;
	// By default, the IO will have NO pull up. // This parameter is used only on bank 0, 1,
	// and 2. Ignored when it is placed at bank 3
	
	defparam IO_PIN_INST.NEG_TRIGGER = 1'b0;
	// Specify the polarity of all FFs in the IO to
	// be falling edge when NEG_TRIGGER = 1.
	// Default is rising edge.

	defparam IO_PIN_INST.IO_STANDARD = "SB_LVCMOS";
	// Other IO standards are supported in bank 3
	// only: SB_SSTL2_CLASS_2, SB_SSTL2_CLASS_1,
	// SB_SSTL18_FULL, SB_SSTL18_HALF, SB_MDDR10, // SB_MDDR8, SB_MDDR4, SB_MDDR2 etc.


	SB_IO INTB0_INST
	(
		.PACKAGE_PIN (intb0), 					// User’s Pin signal name
		.LATCH_INPUT_VALUE (), 					// Latches/holds the Input value
		.CLOCK_ENABLE (), 						// Clock Enable common to input and // output clock
		.INPUT_CLK (), 						// Clock for the input registers
		.OUTPUT_CLK (), 						// Clock for the output registers
		.OUTPUT_ENABLE (), 						// Output Pin Tristate/Enable // control
		.D_OUT_0 (), 							// Data 0 – out to Pin/Rising clk // edge
		.D_OUT_1 (), 							// Data 1 - out to Pin/Falling clk // edge
		.D_IN_0 (s_intb0), 						// Data 0 - Pin input/Rising clk// edge
		.D_IN_1 () 							// Data 1 – Pin input/Falling clk // edge
	) ;


	defparam INTB0_INST.PIN_TYPE = 6'b000001;
	// See Input and Output Pin Function Tables.
	// Default value of PIN_TYPE = 6’000000 i.e.
	// an input pad, with the input signal
	// registered.
	
	defparam INTB0_INST.PULLUP = 1'b1;
	// By default, the IO will have NO pull up. // This parameter is used only on bank 0, 1,
	// and 2. Ignored when it is placed at bank 3

	defparam INTB0_INST.NEG_TRIGGER = 1'b0;
	// Specify the polarity of all FFs in the IO to
	// be falling edge when NEG_TRIGGER = 1.
	// Default is rising edge.

	defparam INTB0_INST.IO_STANDARD = "SB_LVCMOS";
	// Other IO standards are supported in bank 3
	// only: SB_SSTL2_CLASS_2, SB_SSTL2_CLASS_1,
	// SB_SSTL18_FULL, SB_SSTL18_HALF, SB_MDDR10, // SB_MDDR8, SB_MDDR4, SB_MDDR2 etc.


	SB_IO INTB1_INST
	(
		.PACKAGE_PIN (intb1), 					// User’s Pin signal name
		.LATCH_INPUT_VALUE (), 					// Latches/holds the Input value
		.CLOCK_ENABLE (), 						// Clock Enable common to input and // output clock
		.INPUT_CLK (), 						// Clock for the input registers
		.OUTPUT_CLK (), 						// Clock for the output registers
		.OUTPUT_ENABLE (), 						// Output Pin Tristate/Enable // control
		.D_OUT_0 (), 							// Data 0 – out to Pin/Rising clk // edge
		.D_OUT_1 (), 							// Data 1 - out to Pin/Falling clk // edge
		.D_IN_0 (s_intb1), 						// Data 0 - Pin input/Rising clk// edge
		.D_IN_1 () 							// Data 1 – Pin input/Falling clk // edge
	) ;


	defparam INTB1_INST.PIN_TYPE = 6'b000001;
	// See Input and Output Pin Function Tables.
	// Default value of PIN_TYPE = 6’000000 i.e.
	// an input pad, with the input signal
	// registered.

	defparam INTB1_INST.PULLUP = 1'b1;
	// By default, the IO will have NO pull up. // This parameter is used only on bank 0, 1,
	// and 2. Ignored when it is placed at bank 3

	defparam INTB1_INST.NEG_TRIGGER = 1'b0;
	// Specify the polarity of all FFs in the IO to
	// be falling edge when NEG_TRIGGER = 1.
	// Default is rising edge.

	defparam INTB1_INST.IO_STANDARD = "SB_LVCMOS";
	// Other IO standards are supported in bank 3
	// only: SB_SSTL2_CLASS_2, SB_SSTL2_CLASS_1,
	// SB_SSTL18_FULL, SB_SSTL18_HALF, SB_MDDR10, // SB_MDDR8, SB_MDDR4, SB_MDDR2 etc.


	cemf_module_64ch_ctrl #(.N_ELECTRODES(N_ELECTRODES)) cemf_module_64ch_ctrl_inst1 (
		.rst_n				(rst_n),
		.clock				(clock),
		.cemf_signal			(cemf_signal),
		.sync_50hz			(sync_50hz),
		.frame				(frame_sync),
		.en_fe				(en_fe),
		.pwrite				(s_pwrite),
		.psel				(s_psel),
		.penable			(s_penable),
		.paddr				(s_paddr_I2C),
		.pwdata				(s_pwdata),
		.prdata				(s_prdata),
		.pready				(s_pready),
		.elec_config			(elec_config),
		.next_sequence			(next_sequence),
		.stop_fpga2			(stop_fpga2),
		.trigger0			(trigger0), 
		.trigger1			(trigger1),	
		.start0				(start0),
		.start1				(start1),
		.stop0				(stop0),
		.stop1				(stop1),
		.intb0				(s_intb0),
		.intb1				(s_intb1),
		.sclk0				(sclk0),
		.sclk1				(sclk1),
		.csb0				(csb0),
		.csb1				(csb1),
		.din0				(sdin0),
		.din1				(sdin1),
		.dout0				(dout0),
		.dout1				(dout1),
		.mcu_sclk			(mcu_sclk),
		.mcu_data			(mcu_data),
		.enable_sr_out			(enable_sr_out),   			// Raul
		.sr_finish			(sr_finish)	    			// Raul
	);                   

	// Instance by Raul Lora Rivera
	serializer_mod #(.N_ELECTRODES(N_ELECTRODES)) serializer_mod_inst (
		.CLK				(clock),				// Clock -- input
		.RST_N				(rst_n),				// Active-Low Level reset -- input
		.electr_config_in		(elec_config),		       		// Active electrode configuration for current step -- input
		.enable_desp			(enable_sr_out),			// Enable from internal FSM -- output
		.enable_config		(enable_config),			// Enable out to know when the config reg is being shifted -- output
		.sr_finish			(sr_finish),				// Finish flag so that FSM knows when the shift has finished -- output
		.serial_out			(elec_config_out),           		// 1-bit serial as output -- output serial
		.serial_out_test		(serial_out_testing),			// 1-bit serial out as testing
		.electr_config_test		(electrode_out_test)			// Four pins output electrode configuration testing
	); 

	I2C_top_level I2C_top_level_inst1( 
		.rst_n				(rst_n), 
		.sda_i				(s_sda_i), 
		.sda_o				(s_sda_o), 
		.in_out				(s_in_out),
		.scl				(scl), 
		.clk_sys			(clock),
		.paddr				(s_paddr_I2C),
		.psel				(s_psel),
		.pready				(s_pready),
		.penable			(s_penable),
		.pwrite				(s_pwrite),
		.prdata				(s_prdata),
		.pwdata				(s_pwdata),
		.we_i2c				(we_i2c),
		.wdata_i2c			(wdata_i2c)
	);	

	// Asignaciones para la salida
	assign s3 = electrode_out_test[3];
	assign s2 = electrode_out_test[2];
	assign s1 = electrode_out_test[1];
	assign s0 = electrode_out_test[0];
	
endmodule







	