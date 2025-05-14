module cemf_module_64ch_ctrl #(parameter N_ELECTRODES = 128) (
		rst_n,
		clock,
		cemf_signal,
		sync_50hz,
		frame,					// Old ch0 signal, new feature. Set to 1 during frame
		en_fe,
		pwrite,
		psel,
		penable,
		paddr,
		pwdata,
		prdata,
		pready,
		elec_config,
		next_sequence,
		stop_fpga2,
		trigger0, 
		trigger1,
		start0, 
		start1,
		stop0, 
		stop1,
		intb0,
		intb1,
//		sclk,
		sclk0,
		sclk1,
//		csb0_in,
//		csb1_in,
		csb0,
		csb1,
//		sdin,
		din0,
		din1,
//		dout,
		dout0,
		dout1,
		mcu_sclk,
		mcu_data,
//		intb,
//		banck_tdc,
		enable_sr_out,  			// Raul
		sr_finish	  			// Raul
	);

	// Ports definition
	input wire rst_n;				//reset
	input wire clock;				//system clock
	input wire cemf_signal;			//cemf signal
	input wire sync_50hz;				//signal for the syncronization with the 50hz
	output wire frame;				//first channel interrupt
	output wire en_fe;				//Enable of analog CEMF front-end
	input wire pwrite;				//signal for the bus APB
	input wire psel;
	input wire penable;
	input wire [15:0] paddr;			//address for the memory/register
	input wire [31:0] pwdata;
	output [31:0] prdata;	
	output pready;					//signal for the bus APB
	output wire [N_ELECTRODES-1:0] elec_config;	//electrode configuration
	output wire next_sequence;			//next sequence
	output wire stop_fpga2;
	input wire trigger0;				//trigger from the TDC A
	input wire trigger1;				//trigger from the TDC B
	output wire start0;				//start for the TDC A
	output wire start1;				//start for the TDC B
	output wire stop0;				//stop for the TDC A
	output wire stop1;				//stop for the TDC B
	input wire intb0;
	input wire intb1;
	output wire sclk0;
	output wire sclk1;
	output wire csb0;
	output wire csb1;
	input wire din0;
	input wire din1;
	output wire dout0;
	output wire dout1;
	output wire mcu_sclk;
	output wire mcu_data;
	output wire enable_sr_out;			// Raul: enable shift register output
	output wire sr_finish;			// Raul
	//output wire intb; 
	//output wire banck_tdc;

	//Internal nets and registers
	reg [15:0] cemf_cnt;
	reg [6:0] ch_cnt;
	reg [15:0] timeout_cnt;
	reg [24:0] deterministic_cnt;
	reg [2:0] cemf_in;
	wire inc_ch_cnt;
	wire en_cemf_cnt;
	wire en_ch_cnt;
	wire en_timeout_cnt;
	wire en_deterministic_cnt;
	wire start_gen, start, trigger;
	wire stop_gen, stop;
	wire [31:0] s_data_system_o; 
	wire [15:0] paddr_reg, paddr_fsm;
	wire penable_reg, psel_reg, penable_fsm, psel_fsm, cntrl_tdc;
	wire start_conf_a, end_conf_a, start_op_a, start_read_a;
	wire start_conf_b, end_conf_b, start_op_b, start_read_b;
	wire clr_sys_reg;
	wire [23:0] data_config;
	wire [23:0] data_coarseovf;
	wire [23:0] data_clkctrovf;
	wire [23:0] data_clkstopmask;
	wire [23:0] data_interrupts;
	wire end_read0, end_read1;

	// Synchronization of CEMF signal
	always @(posedge clock or negedge rst_n)
		begin
			if (rst_n == 1'b0 || en_cemf_cnt == 1'b0)
				cemf_in <= 3'b000;
			else
				begin
					cemf_in[0] <= cemf_signal;
					cemf_in[2:1] <= cemf_in[1:0];
				end
		end	

	//CEMF cycles counter
	always @(posedge clock or negedge rst_n)
		begin
			if (rst_n == 1'b0 || en_cemf_cnt == 1'b0)
				cemf_cnt <= 16'b0000000000000000;
			else
				begin
					if (cemf_in[2] == 1'b0 && cemf_in[1] == 1'b1)
						cemf_cnt <= cemf_cnt + 1'b1;
					else
						cemf_cnt <= cemf_cnt;
				end
		end

	//Channels counter
	always @(posedge clock or negedge rst_n)
		begin
			if (rst_n == 1'b0 || en_ch_cnt == 1'b0)
				ch_cnt <= 7'b0000001;
			else
				begin
					if (inc_ch_cnt == 1'b1)
						ch_cnt <= ch_cnt + 1'b1;
					else
						ch_cnt <= ch_cnt;
				end
		end

	//Timeout counter
	always @(posedge clock or negedge rst_n)
		begin
			if (rst_n == 1'b0 || en_timeout_cnt == 1'b0)
				timeout_cnt <= 16'b0000000000000000;
			else if (timeout_cnt == 16'b1111111111111111)
				timeout_cnt <= 16'b1111111111111111;
			else
				timeout_cnt <= timeout_cnt + 1'b1;
		end

	//Counter for deterministic repetitive mode
	always @(posedge clock or negedge rst_n)
		begin
			if (rst_n == 1'b0 || en_deterministic_cnt == 1'b0)
				deterministic_cnt <= 25'b0000000000000000000000000;
			else if (deterministic_cnt == 25'b1111111111111111111111111)
				deterministic_cnt <= 25'b1111111111111111111111111;
			else
				deterministic_cnt <= deterministic_cnt + 1'b1;
		end

	// Combinational assignment 
	//To generate the start and stop signal for TDC converter
	assign start = start_gen ? cemf_signal : 1'b0;
	assign stop = stop_gen ? cemf_signal : 1'b0;

	//assign stop_fpga2 = ~s_data_system_o[0];

	assign paddr_reg = (pwrite || psel || penable) ? paddr : paddr_fsm;
	assign psel_reg = psel_fsm | psel;
	assign penable_reg = penable_fsm | penable;

	cemf_module_64ch_fsm_average #(.N_ELECTRODES(N_ELECTRODES)) cemf_module_64ch_fsm_int1 (
		.rst_n				(rst_n),
		.clk				(clock),
		.en_fe				(en_fe),
		.start_conf_a			(start_conf_a),
		.end_conf_a			(end_conf_a),
		.start_op_a			(start_op_a),
		.start_read_a			(start_read_a),
		.start_conf_b			(start_conf_b),
		.end_conf_b			(end_conf_b),
		.start_op_b			(start_op_b),
		.start_read_b			(start_read_b),
		.clr_sys_reg			(clr_sys_reg),
		.cemf_cnt			(cemf_cnt),
		.cemf_in			(cemf_in[2:1]),
		.inc_ch_cnt			(inc_ch_cnt),
		.en_ch_cnt			(en_ch_cnt),
		.ch_cnt				(ch_cnt),
		.en_cemf_cnt			(en_cemf_cnt),
		.en_timeout_cnt		(en_timeout_cnt),
		.en_deterministic_cnt		(en_deterministic_cnt),
		.timeout_cnt			(timeout_cnt),
		.deterministic_cnt		(deterministic_cnt),
		.start_gen			(start_gen),
		.stop_gen			(stop_gen),
		.ctrl_tdc			(cntrl_tdc),
		.sync_50hz			(sync_50hz),
		.trigger			(trigger),
		.intb_a				(intb0),
		.intb_b				(intb1),
		.end_read0			(end_read0),
		.end_read1			(end_read1),
	//	.csb0				(csb0),
	//	.csb1				(csb1),
		.frame				(frame),
		.next_sequence			(next_sequence),
		.stop_fpga2			(stop_fpga2),
	//	.pwrite				(pwrite),
		.psel				(psel_fsm),
		.penable			(penable_fsm),
		.paddr				(paddr_fsm),
		.prdata				(prdata),
		.pready				(pready),
		.data_system_o			(s_data_system_o),
		.elec_config			(elec_config),
		.enable_sr_out			(enable_sr_out),
		.sr_finish			(sr_finish)
	);

	spi_top spi_top_inst1(
		.rst_n				(rst_n),
		.clk				(clock),
		.start_conf_a			(start_conf_a),
		.end_conf_a			(end_conf_a),
		.start_op_a			(start_op_a),
		.start_read_a			(start_read_a),
		.start_conf_b			(start_conf_b),
		.end_conf_b			(end_conf_b),
		.start_op_b			(start_op_b),
		.start_read_b			(start_read_b),
		.csb				({csb1,csb0}),
		.din				({din1,din0}),
		.dout				({dout1,dout0}),
		.sclk				({sclk1,sclk0}),
		.mcu_sclk			(mcu_sclk),
		.mcu_data			(mcu_data),
		.end_read0			(end_read0),
		.end_read1			(end_read1),
		.data_config			(data_config),
		.data_coarseovf		(data_coarseovf),
		.data_clkctrovf		(data_clkctrovf),
		.data_clkstopmask		(data_clkstopmask),
		.data_interrupts		(data_interrupts)
	);
		
	mux_tdc mux_tdc_inst(
		.trigger0			(trigger0), 
		.trigger1			(trigger1),	 
		.trigger			(trigger),
		.start0				(start0),
		.start1				(start1),
		.start				(start),
		.stop0				(stop0),
		.stop1				(stop1),
		.stop				(stop),
		.cntrl_tdc			(cntrl_tdc)
	);
		
	top_cemf_module_64ch_reg top_cemf_module_64ch_reg_inst(
		.rst_n				(rst_n),
		.clock				(clock),
		.pwrite				(pwrite),
		.psel				(psel_reg),
		.penable			(penable_reg),
		.paddr				(paddr_reg),
		.pwdata				(pwdata),
		.prdata				(prdata),
		.pready				(pready),
		.data_system_o			(s_data_system_o),
		.clr_sys_reg			(clr_sys_reg),
		.data_config			(data_config),
		.data_coarseovf		(data_coarseovf),
		.data_clkctrovf		(data_clkctrovf),
		.data_clkstopmask		(data_clkstopmask),
		.data_interrupts		(data_interrupts)
	);

	
endmodule