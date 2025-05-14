module cemf_module_64ch_fsm_average #(parameter N_ELECTRODES = 128) (
		rst_n,						// Reset signal
		clk,						// System clock
		en_fe,						// Enable of analogue CEMF front-end
		start_conf_a,					// Control signal to start the configuration of TDC A
		end_conf_a,					// Signal indicating the end of TDC A configuration
		start_op_a,					// Control signal to launch the measurement process in TDC A
		start_read_a,					// Control signal to start the data downloading process in TDC A
		start_conf_b,					// Control signal to start the configuration of TDC B
		end_conf_b,					// Signal indicating the end of TDC B configuration
		start_op_b,					// Control signal to launch the measurement process in TDC B
		start_read_b,					// Control signal to start the data downloading process in TDC B
		clr_sys_reg,					// The signal to reset the bit<1>, TDC_config, of global register 0x01 at the end of TDCs configuration
		cemf_cnt,					// Count of CEMF cycles included between start and stop signal generation.
		cemf_in,					// CEMF signal synchronized with the system clock
		inc_ch_cnt,					// Control signal to increment the channel counter (steps counter)
		en_ch_cnt,					// Enable of channel counter (steps counter)
		ch_cnt,						// Channel count, step count
		en_cemf_cnt,					// Enable of CEMF cycles counter
		en_timeout_cnt,				// Enable of tiemout counter to control the CEMF front-end enable
		en_deterministic_cnt,				// Enable of counter which defines the sequence time in the deterministic repetitive mode
		timeout_cnt,					// Timeout counter to control the CEMF front-end enable
		deterministic_cnt,				// Counter to define the sequence time
		start_gen,					// Control signal for start pulse generation
		stop_gen,					// Control signal for stop pulse generation
		ctrl_tdc,					// Cotrol signal of TDCs multiplexer for signals (trigger, start, stop and intb)
		sync_50hz,					// Signal to synchronize the start of sequence with a external signal
		trigger,					// Trigger signal from TDCs
		intb_a,						// INTB signal from TDC A
		intb_b,						// INTB signal from TDC B
		end_read0,					// Signal indicating the end of read process for TDC A
		end_read1,					// Signal indicating the end of read process for TDC B
//		csb1,						// CSB signal for TDC B
		frame,						// Signal indicating that frame is actived (Old first signal Signal indicating the start of sequence or frame)
		next_sequence,					// Signal active during the step, this signal is set to zero between steps
		stop_fpga2,					// Control signal indicating that the system stop the operation
//		pwrite,						// Write signal of APB protocol
		psel,						// Select signal of APB protocol
		penable,					// Enable signal of APB protocol
		paddr,						// Address signal of APB protocol
		prdata,						// Data signal from internal memory
		pready,						// Ready signal of APB protocol
		data_system_o,					// Content of global register 0x01
		elec_config,					// Control signals of external analog mutiplexer for electrode selection
		enable_sr_out,		       			// Enable for external shift register -- Raul
		sr_finish					// Shift register finish -- Raul
	);

	// Ports definition
	input wire rst_n;						// reset
	input wire clk;						// clock
	output reg en_fe;
	output reg start_conf_a;
	input wire end_conf_a;
	output reg start_op_a;
	output reg start_read_a;
	output reg start_conf_b;
	input wire end_conf_b;
	output reg start_op_b;
	output reg start_read_b;
	output reg clr_sys_reg;
	input wire [15:0] cemf_cnt;					//cemf counter
	input wire [1:0] cemf_in;					//input of the cemf signal
	output reg inc_ch_cnt;					//increment the channel counter
	output reg en_ch_cnt;						//enable the channel counter
	input wire [6:0] ch_cnt;					//channel counter
	output reg en_cemf_cnt;					//enable the cemf counter
	output reg en_timeout_cnt;
	output reg en_deterministic_cnt;
	input wire [15:0] timeout_cnt;
	input wire [24:0] deterministic_cnt;
	output reg start_gen;						//start TDC
	output reg stop_gen;						//stop TDC
	output wire ctrl_tdc;
	input wire sync_50hz;						//signal to syncronize with at 50hz
	input wire trigger;
	input wire intb_a;
	input wire intb_b;
	input wire end_read0;
	input wire end_read1;
	//input wire csb0,
	//input wire csb1,
	output wire frame;						// Old first signal (ch0), new feature, set to 1 during whole frame
	output reg next_sequence;
	output reg stop_fpga2;
	//output reg pwrite;
	output reg psel;
	output reg penable;						//signal of the bus APB
	output wire [15:0] paddr;
	input wire [31:0] prdata;
	input wire pready;					
	input wire [31:0] data_system_o;				//data of the configuration register
	output wire [N_ELECTRODES-1:0] elec_config;				//electrode configuration
	output reg enable_sr_out;					// Salida enable para serializar la configuracion de electrodos				
	input wire sr_finish;						// Entrada para saber cuándo se ha terminado de enviar la configuracion de los electrodos

	/* Raul cambio prdata por prdata_config[N_ELECTRODES-1:0] para darle esa configuracion */
	wire [N_ELECTRODES-1:0] prdata_config;

	//States codification
	parameter 	idle		= 6'b000000, //0
			conf_a_st		= 6'b000001, //1
			wait_conf_a		= 6'b000010, //2
			conf_b_st		= 6'b000011, //3
			wait_conf_b		= 6'b000100, //4
			end_conf_st		= 6'b000101, //5
			init_st			= 6'b000110, //6
			next_seq_st		= 6'b000111, //7
			wait_st_1		= 6'b001000, //8
			wait_read_op1	= 6'b001001, //9			
			read_op1		= 6'b001010, //10
			wait_st_3		= 6'b001011, //11
			wait_st_4		= 6'b001100, //12
			wait_read_op4	= 6'b001101, //13
			read_op4		= 6'b001110, //14
			wait_st_5		= 6'b001111, //15
			wait_st_6		= 6'b010000, //16
			wait_for_sr		= 6'b010001, //17, I have to change the numbers in order them to be adequate
			start_st 		= 6'b010010, //18
			sync_st			= 6'b010011, //19
			first_channel	= 6'b010100, //20
			normal_channel	= 6'b010101, //21
			en_counters		= 6'b010110, //22
			wait_st			= 6'b010111, //23
			start_gen_st	= 6'b011000, //24
			wait_cemf_st	= 6'b011001, //25
			stop_gen_st		= 6'b011010, //26
			update_addr		= 6'b011011, //27
			end_st			= 6'b011100, //28
			end_st_2		= 6'b011101, //29
			end_st_3		= 6'b011110, //30
			end_st_4		= 6'b011111, //31
			last_read_st	= 6'b010000, //32
			end_st_5		= 6'b100001, //33
			end_st_6		= 6'b100010, //34
			default_st		= 6'bxxxxxx;

	// Internal registers and nerts
	reg [5:0] c_state, n_state;
	reg [7:0] delay_cemf;
	reg [7:0] cemf_cycles;
	reg [15:0] time_out;
	wire [15:0] cemf_cycles_total;
	reg [6:0] seq;
	reg [15:0] c_addr, n_addr;
	reg [2:0] sync_50hz_q, trigger_q;
	reg [2:0] intb0_q, intb1_q;
	//reg [2:0] csb0_q, csb1_q;
	reg sync_config;
	reg c_frame, n_frame, c_sync, n_sync, c_cntrl_tdc, n_cntrl_tdc, c_tdc_bank, n_tdc_bank;
	//reg [7:0] cnt_average, c_cont, n_cont; 
	reg [N_ELECTRODES-1:0] c_elec_config, n_elec_config, electrode_config;
	reg [21:0] deter_time;	

	// Registro auxiliar
	reg [N_ELECTRODES-1:0] elec_config_aux;

	parameter ADDR_IDLE = 16'b0000000000000000;
	parameter ADDR_START = 16'b0000000000001000;

	//Asignaciones
	assign cemf_cycles_total = delay_cemf + cemf_cycles;
	assign frame = c_frame;
	assign paddr = c_addr;
	//assign elec_config = c_elec_config; // RAUL: comento esta linea para el testing
	assign elec_config = elec_config_aux;
	assign ctrl_tdc = c_cntrl_tdc;
	//assign bank = c_tdc_bank;

	assign prdata_config = 128'h0123456789ABCDEF0123456789ABCDE6;  // 0 por darle un valor, pero habria que ver..., el prdata original viene del top_cmf module... (Raul)

	//Synchronous assignment of current state
	always @( posedge clk or negedge rst_n )
	begin
		if (rst_n == 1'b0)
			begin
				//c_state <= idle;//RAUL: lo comento para depurar lo de la serializacion de electrodos, el SDA mapeado en H1, tambien esta comentado en el .pcf
				c_state <= wait_st_5;
				c_frame <= 1'b0;
//				c_cont <= 8'b00000000;
				c_sync <= 1'b1;
				c_addr <= ADDR_IDLE;
				c_elec_config <= 0;//31'b0000000000000000000000000000000;
				c_cntrl_tdc <= 1'b0;
				c_tdc_bank <= 1'b0;
			end
		else
			begin
				c_state <= n_state;
				c_frame <= n_frame;
//				c_cont <= n_cont;
				c_sync <= n_sync;
				c_addr <= n_addr;
				c_elec_config <= n_elec_config;
				c_cntrl_tdc <= n_cntrl_tdc;
				c_tdc_bank <= n_tdc_bank;
			end
	end
	
	always @(posedge clk)
	begin
		sync_50hz_q[2:0] <= {sync_50hz_q[1:0], sync_50hz};
		trigger_q[2:0] <= {trigger_q[1:0], trigger};
		intb0_q[2:0] <= {intb0_q[1:0], intb_a};
		intb1_q[2:0] <= {intb1_q[1:0], intb_b};
//		csb0_q[2:0] <= {csb0_q[1:0], csb0};
//		csb1_q[2:0] <= {csb1_q[1:0], csb1};
	end

	//Combinational assignment of next state and output signals
	always @(c_state,
			end_conf_a,
			end_conf_b,
			cemf_in,
			cemf_cnt,
			data_system_o,
	//		delay_cemf,
			seq,
	//		cemf_cycles,
	//		cemf_cycles_total,
			timeout_cnt,
			deterministic_cnt,
			ch_cnt,
			pready,
			c_addr,
	//		c_first,
			sync_50hz_q,
			sync_config,
	//		cnt_average,
	//		c_cont,
			c_sync,
			prdata,
	//		c_elec_config,
	//		pwrite,
	//		c_cntrl_tdc,
			trigger_q[2],
			intb0_q, 
			intb1_q,
			c_tdc_bank,
	//		csb0_q,
	//		csb1_q
			end_read0,
			end_read1
			)
		begin
			// Default values
			en_fe = 1'b0;
			start_conf_a = 1'b0;
			start_conf_b = 1'b0;
			start_op_a = 1'b0;
			start_op_b = 1'b0;
			start_read_a = 1'b0;
			start_read_b = 1'b0;
			clr_sys_reg =1'b0;
			inc_ch_cnt = 1'b0;
			en_cemf_cnt = 1'b0;
			en_timeout_cnt = 1'b0;
			en_deterministic_cnt = 1'b0;
			start_gen = 1'b0;
			stop_gen = 1'b0;
			en_ch_cnt = 1'b0;
			n_state = c_state;
			n_frame = c_frame;
	//		n_cont = c_cont;
			n_sync = c_sync;
			psel = 1'b0;
			penable = 1'b0;
			next_sequence = 1'b0;
			n_addr = c_addr;
			n_elec_config = c_elec_config;
			stop_fpga2 = 1'b0;
			n_cntrl_tdc = c_cntrl_tdc;
			n_tdc_bank = c_tdc_bank;
			
			
			case (c_state)
				idle:
					begin
						// Internal and output signals
						n_elec_config = 0;//31'b0000000000000000000000000000000; // switch_elec[30:0]
	//					n_cont = 8'b00000000;
						n_frame = 1'b0;
						n_addr = ADDR_START;
						if(data_system_o[0] == 1'b0)
							stop_fpga2 = 1'b1;
						else
							stop_fpga2 = 1'b0;
						//Next state
						if(data_system_o[0] == 1'b1)
							n_state = init_st;
						else if (data_system_o[1] == 1'b1)
							n_state = conf_a_st;
						else
							n_state = idle;
					end
				
				conf_a_st:
					begin
						// Internal and output signals
						start_conf_a = 1'b1;
						stop_fpga2 = 1'b1;
						//Next state
						n_state = wait_conf_a;
					end
				
				wait_conf_a:
					begin
						// Internal and output signals
						stop_fpga2 = 1'b1;
						//Next state
						if (end_conf_a == 1'b1)
							n_state = conf_b_st;
						else
							n_state = c_state;
					end
					
				conf_b_st:
					begin
						// Internal and output signals
						start_conf_b = 1'b1;
						stop_fpga2 = 1'b1;
						//Next state
						n_state = wait_conf_b;
					end
				
				wait_conf_b:
					begin
						// Internal and output signals
						stop_fpga2 = 1'b1;
						//Next state
						if (end_conf_b == 1'b1)
							n_state = end_conf_st;
						else
							n_state = c_state;
					end
				
				end_conf_st:
					begin
						// Internal and output signals
						stop_fpga2 = 1'b1;
						clr_sys_reg =1'b1;
						//Next state
						n_state = idle;
					end
				
				init_st:
					begin
						// Internal and output signals
						n_elec_config = 0;//31'b0000000000000000000000000000000; // switch_elec[30:0]
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						if(data_system_o[0] == 1'b0)
							stop_fpga2 = 1'b1;
						else
							stop_fpga2 = 1'b0;
	//					n_frame = 1'b1;
						//Next state
						if(data_system_o[0] == 1'b0)
							n_state = idle;
						else
							n_state = next_seq_st;
					end
						
				next_seq_st:
					begin
						// Internal and output signals
						next_sequence = 1'b0;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						//Next state
						if (ch_cnt == 7'b0000001)
							begin
								if (sync_config == 1'b1 && c_sync == 1'b1)
									n_state = sync_st;
								else
									n_state = wait_st_1;
							end
						else 
							n_state = wait_st_1;
					end

				sync_st:
					begin
						// Internal and output signals
						next_sequence = 1'b0;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						n_sync = 1'b0;
	//					en_fe = 1'b1;
						// Next state
						if (sync_50hz_q[2] == 1'b0 && sync_50hz_q[1] == 1'b1)
							n_state = wait_st_1;
						else	
							n_state = c_state;
					end
					
				wait_st_1:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						psel = 1'b1;
						//Next state
						n_state = wait_read_op1;
					end
				
				wait_read_op1:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						psel = 1'b1;
						//Next state
						n_state = read_op1;
					end
					
				read_op1:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						psel = 1'b1;
						penable = 1'b1;
						if (pready == 1'b1)
							// electrode_config = prdata[30:0]; // Antes de cambiarlo por Raul, estaba esta linea
							electrode_config = prdata_config[N_ELECTRODES-1:0];  // Cambiado por Raul
						//Next state
						if (pready == 1'b1)
							n_state = wait_st_3;
						else
							n_state = c_state;
					end
					
				wait_st_3:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						n_addr = c_addr + 1'b1;
						//Next state
						n_state = wait_st_4;
					end
					
				wait_st_4:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						psel = 1'b1;
						//Next state
						n_state = wait_read_op4;
					end
					
				wait_read_op4:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						psel = 1'b1;
						//Next state
						n_state = read_op4;
					end
					
				read_op4:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						psel = 1'b1;
						penable = 1'b1;
						if (pready == 1'b1)	
							begin
								delay_cemf = prdata[15:8];
								cemf_cycles = prdata[7:0];
								time_out = prdata[31:16];
							end
						//Next state
						if (pready == 1'b1)	
							n_state = wait_st_5;
						else
							n_state = c_state;
					end
					
				wait_st_5:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						//Next state
						n_state = wait_st_6;
					end
					
				wait_st_6:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						sync_config = data_system_o[31];
						seq = data_system_o[8:2];
						deter_time = data_system_o[30:9];
						//n_elec_config = electrode_config; // Comentado por Raul
						//n_elec_config = prdata_config;
						elec_config_aux = prdata_config;
						// Enable signal -- output
						enable_sr_out = 1'b1; 		// Lo ponemos a 1
						//Next state
						n_state = wait_for_sr;		// Raul
						//n_state = start_st;
					end

				wait_for_sr:						// Raul
					begin
						if (sr_finish == 1'b1)
							n_state = start_st;
						else
							n_state = wait_for_sr;
					end
				
				start_st:
					begin
						// Enable signal -- output
						enable_sr_out = 1'b0; 		// Lo ponemos a 0
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						//Next state
						if (ch_cnt == 7'b0000001)
							n_state = first_channel;
						else 
							n_state = normal_channel;
					end
					
	/* 			sync_st:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						n_sync = 1'b0;
						en_fe = 1'b1;
						// Next state
						if (sync_50hz_q[2] == 1'b0 && sync_50hz_q[1] == 1'b1)
							n_state = first_channel;
						else	
							n_state = c_state;
					end */
					
				first_channel:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						n_frame = 1'b1;
						start_op_a = 1'b1;
						n_tdc_bank = ~c_tdc_bank;
	//					if (ch_cnt == 7'b0000001)
	//						n_first = 1'b1;
	//					else
	//						n_first = 1'b0;
						// Next state
						n_state = en_counters;
					end
				
				normal_channel:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						n_tdc_bank = ~c_tdc_bank;
						if (c_tdc_bank == 1'b0)
							begin
								start_op_a = 1'b1;
								start_read_b = 1'b1;
							end
						else
							begin
								start_op_b = 1'b1;
								start_read_a = 1'b1;
							end
						// Next state
						n_state = en_counters;
					end
				en_counters:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
	//					n_cont = c_cont + 1'b1;
						en_cemf_cnt = 1'b1; //habilitamos el contador de CEMF
						en_timeout_cnt = 1'b1;
						// Next state
						n_state = wait_st;
					end
					
				wait_st:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
	//					cnt_average = data_system_o[30:23];
						en_cemf_cnt = 1'b1;
						en_timeout_cnt = 1'b1;
						// Next state
						if (cemf_cnt >= delay_cemf && cemf_in[0] == 1'b0 && cemf_in[1] == 1'b1 && trigger_q[2] == 1'b1)
							n_state = start_gen_st;
						else
							n_state = wait_st;
					end
					
				start_gen_st:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						en_cemf_cnt = 1'b1;
						en_timeout_cnt = 1'b1;
						start_gen = 1'b1;
						// Next state
						if (cemf_in[0] == 1'b1 && cemf_in[1] == 1'b0)
							n_state = wait_cemf_st;
						else
							n_state = start_gen_st;
					end
					
				wait_cemf_st:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						en_cemf_cnt = 1'b1;
						en_timeout_cnt = 1'b1;
						// Next state
						if (cemf_cnt >= cemf_cycles_total && cemf_in[0] == 1'b0 && cemf_in[1] == 1'b1)
							n_state = stop_gen_st;
						else
							n_state = wait_cemf_st;
					end
					
				stop_gen_st:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						en_cemf_cnt = 1'b1;
						en_timeout_cnt = 1'b1;
						stop_gen = 1'b1;
	//					if (cemf_in[0] == 1'b1 && cemf_in[1] == 1'b0 && c_cont == cnt_average)
	//						begin
	//							n_cont = 4'b0000;
	//							n_first = 1'b0;
	//						end
	//					else
	//						begin
	//							n_cont = c_cont;
	//							n_first = c_first;
	//						end
						// Next state
						if (cemf_in[0] == 1'b1 && cemf_in[1] == 1'b0)
							n_state = update_addr;
	//					else if (cemf_in[0] == 1'b1 && cemf_in[1] == 1'b0 && c_cont != cnt_average)
	//						n_state = start_st;
						else
							n_state = stop_gen_st;
					end
					
				update_addr:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
	//					en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						en_timeout_cnt = 1'b1;
						inc_ch_cnt = 1'b1;
						if (ch_cnt == seq)
							begin
								en_ch_cnt = 1'b0;
								n_sync = 1'b1;
								n_addr = ADDR_START;
							end
						else
							begin
								en_ch_cnt = 1'b1;
								n_sync = 1'b0;
								n_addr = c_addr + 1'b1;
							end
						// Next state
						if (ch_cnt == seq)
							n_state = end_st_3;
						else
							n_state = end_st;
					end
				
				end_st:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						en_timeout_cnt = 1'b1;
						if(intb0_q[2] == 1'b1 && intb0_q[1] == 1'b0)// && intb1_q == 3'b111)
							n_cntrl_tdc = 1'b1;
						else if (intb1_q[2] == 1'b1 && intb1_q[1] == 1'b0)// && intb0_q == 3'b111)
							n_cntrl_tdc = 1'b0;
						else
							n_cntrl_tdc = c_cntrl_tdc;	
						// Next state
						if ((intb0_q[2] == 1'b1 && intb0_q[1] == 1'b0) || (intb1_q[2] == 1'b1 && intb1_q[1] == 1'b0))
							n_state = end_st_2;
						else
							n_state = c_state;
					end
					
				end_st_2:
					begin
						// Internal and output signals
						next_sequence = 1'b0;
						en_ch_cnt = 1'b1;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						en_timeout_cnt = 1'b1;
	//					n_elec_config = 0;//31'b0000000000000000000000000000000;
						// Next state
						if (timeout_cnt >= time_out)
							n_state = init_st;
						else
							n_state = c_state;
					end
					
	/* 			end_st_2:
					begin
						// Internal and output signals
						if(intb0_q[2] == 1'b1 && intb0_q[1] == 1'b0)// && intb1_q == 3'b111)
							begin
								n_tdc_bank = ~c_tdc_bank;
								//n_cntrl_tdc = 1'b1;
							end
						else if (intb1_q[2] == 1'b1 && intb1_q[1] == 1'b0)// && intb0_q == 3'b111)
							begin
								n_tdc_bank = ~c_tdc_bank;
								//n_cntrl_tdc = 1'b0;
							end
						else
							begin
								n_tdc_bank = c_tdc_bank;
								//n_cntrl_tdc = c_cntrl_tdc;
							end
						// Next state
						if ((csb0_q[2] == 1'b0 && csb0_q[1] == 1'b1) || (csb1_q[2] == 1'b0 && csb1_q[1] == 1'b1))
							n_state = end_st_3;
						else
							n_state = c_state;
					end */
				
				end_st_3:
					begin
						// Internal and output signals
						next_sequence = 1'b1;
						en_ch_cnt = 1'b0;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						en_timeout_cnt = 1'b1;
						n_cntrl_tdc = 1'b0;	
						// Next state
						if ((intb0_q[2] == 1'b1 && intb0_q[1] == 1'b0) || (intb1_q[2] == 1'b1 && intb1_q[1] == 1'b0))
							n_state = end_st_4;
						else
							n_state = c_state;
					end
				
				
				end_st_4:
					begin
						// Internal and output signals
						next_sequence = 1'b0;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b1;
						en_timeout_cnt = 1'b1;
	//					n_frame = 1'b0;
	//					n_elec_config = 0;//31'b0000000000000000000000000000000;
	//					n_tdc_bank = 1'b0;
	//					if (c_tdc_bank == 1'b0)
	//						start_read_b = 1'b1;
	//					else
	//						start_read_a = 1'b1;
						// Next state
						if (timeout_cnt >= time_out)
							n_state = last_read_st;
						else
							n_state = c_state;
					end
				
				last_read_st:
					begin
						// Internal and output signals
						next_sequence = 1'b0;
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b0;
						en_timeout_cnt = 1'b0;
						n_elec_config = 0;//31'b0000000000000000000000000000000;
						n_tdc_bank = 1'b0;
						if (c_tdc_bank == 1'b0)
							start_read_b = 1'b1;
						else
							start_read_a = 1'b1;
						// Next state
						n_state = end_st_5;
					end
						
				end_st_5:
					begin
						// Internal and output signals
						en_deterministic_cnt = 1'b1;
						en_fe = 1'b0;
						n_elec_config = 0;//31'b0000000000000000000000000000000;
						if (end_read0 == 1'b1 || end_read1 == 1'b1)
							n_frame = 1'b0;
						else
							n_frame = c_frame;
						// Next state
						if (end_read0 == 1'b1 || end_read1 == 1'b1)
							n_state = end_st_6;
						else
							n_state = c_state;
					end
				
				end_st_6:
					begin
						// Internal and output signals
						en_deterministic_cnt = 1'b1;
						// Next state
						if (deterministic_cnt >= {deter_time,3'b000})
							n_state = idle;
						else
							n_state = c_state;
					end
				
				default:
					begin
						n_state = default_st;
					end
				
			endcase
		end		
		
endmodule