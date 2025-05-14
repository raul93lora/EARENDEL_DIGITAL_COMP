module tdc_spi_conf (
		rst_n,
		clk,
		start_conf,
		end_conf,
		sel_conf,
		csb,
		din,
		dout,
		sclk,
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
output reg end_conf;
output reg sel_conf;
output reg csb;
input wire din;
output wire dout;
output wire sclk;
input wire [23:0] data_config;
input wire [23:0] data_coarseovf;
input wire [23:0] data_clkctrovf;
input wire [23:0] data_clkstopmask;
input wire [23:0] data_interrupts;

/* //Configuration Parameters
parameter config_regs = 16'b0000000000000010;
parameter coarseovf_regs = 16'b0000000000000011;
parameter clkctrovf_regs = 16'b0000000000000100;
parameter clkstopmask_regs = 16'b0000000000000101;
parameter interrupts_regs = 16'b0000000000000110; */

//States codification
parameter 	idle			= 5'b00000,//0
			set1_conf1		= 5'b00001,//1
			load_conf1		= 5'b00010,//2
			en_sck_conf1	= 5'b00011,//3
			end_conf1		= 5'b00100,//4
			set1_conf2		= 5'b00101,//5
			load_conf2		= 5'b00110,//6
			en_sck_conf2	= 5'b00111,//7
			end_conf2		= 5'b01000,//8
			set1_conf3		= 5'b01001,//9
			load_conf3		= 5'b01010,//10
			en_sck_conf3	= 5'b01011,//11
			end_conf3		= 5'b01100,//12
			set1_conf4		= 5'b01101,//13
			load_conf4		= 5'b01110,//14
			en_sck_conf4	= 5'b01111,//15
			end_conf4		= 5'b10000,//16
			set1_conf5		= 5'b10001,//17
			load_conf5		= 5'b10010,//18
			en_sck_conf5	= 5'b10011,//19
			end_conf5		= 5'b10100,//20
			default_st		= 5'bxxxxx;

//Internal nets and registers
reg [4:0] c_state, n_state;
reg [4:0] count_bits;
reg en_count_bits;
reg load_ser, en_ser;
reg [23:0] ser_data, data;
reg en_sck;
//wire sck;

//SCK ENABLE
assign sclk = (en_sck == 1'b1)? clk : 1'b0;
assign dout = ser_data[23];

// Bits counter
always @(posedge clk or negedge rst_n)
	begin
		if (rst_n == 1'b0 || en_count_bits == 1'b0)
			count_bits <= 5'b00000;
		else
			count_bits <= count_bits + 1'b1;
	end

// Serializer register
always @(negedge clk or negedge rst_n)
	begin
		if (rst_n == 1'b0)
			ser_data <= 24'b000000000000000000000000;
		else if (load_ser == 1'b1)
			ser_data[23:0] <= data[23:0];
		else if (en_ser == 1'b1)
			begin
				ser_data[0] <= 1'b0;
				ser_data[23:1] <= ser_data[22:0];
			end
		else
			ser_data[23:0] <= ser_data[23:0];
	end

//Synchronous assignment of current state
always @(negedge clk or negedge rst_n)
	begin
		if (rst_n == 1'b0)
			c_state <= idle;
		else
			c_state <= n_state;
	end

//Combinational assignment of next state and output signals
always @( c_state,
			start_conf,
			count_bits
		)
		
	begin
		// Default values
//		n_state = c_state;
		csb = 1'b1;
//		dout = 1'b0;
//		sclk = 1'b0;
		en_count_bits = 1'b0;
		en_ser = 1'b0;
		en_sck = 1'b0;
		load_ser = 1'b0;
//		psel = 1'b0;
//		penable = 1'b0;
//		paddr = 16'b0000000000000000;
		sel_conf = 1'b0;
		end_conf = 1'b0;
		
		case (c_state)
			idle:
				begin
					// Internal and output signals
					
					//Next state
					if (start_conf == 1'b1)
						n_state = set1_conf1;
					else
						n_state = c_state;		
				end
				
			set1_conf1:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_config;
					//Next state
					n_state = load_conf1;
				end
			
			load_conf1:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_config;
					load_ser = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = en_sck_conf1;
				end
				
			en_sck_conf1:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					en_ser = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					csb = 1'b0;
//					sclk= sck;
//					dout= ser_data[23];
					//Next state
					if (count_bits == 5'b11000)
						n_state = end_conf1;
					else
						n_state = c_state;
				end
			
			end_conf1:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = set1_conf2;
				end
				
			set1_conf2:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_coarseovf;
					//Next state
					n_state = load_conf2;
				end
			
			load_conf2:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_coarseovf;
					load_ser = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = en_sck_conf2;
				end
				
			en_sck_conf2:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					en_ser = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					csb = 1'b0;
//					sclk= sck;
//					dout= ser_data[23];
					//Next state
					if (count_bits == 5'b11000)
						n_state = end_conf2;
					else
						n_state = c_state;
				end
			
			end_conf2:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = set1_conf3;
				end
			
			set1_conf3:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_clkctrovf;
					//Next state
					n_state = load_conf3;
				end
			
			load_conf3:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_clkctrovf;
					load_ser = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = en_sck_conf3;
				end
				
			en_sck_conf3:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					en_ser = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					csb = 1'b0;
//					sclk= sck;
//					dout= ser_data[23];
					//Next state
					if (count_bits == 5'b11000)
						n_state = end_conf3;
					else
						n_state = c_state;
				end
			
			end_conf3:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = set1_conf4;
				end
			
			set1_conf4:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_clkstopmask;
					//Next state
					n_state = load_conf4;
				end
			
			load_conf4:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_clkstopmask;
					load_ser = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = en_sck_conf4;
				end
				
			en_sck_conf4:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					en_ser = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					csb = 1'b0;
//					sclk= sck;
//					dout= ser_data[23];
					//Next state
					if (count_bits == 5'b11000)
						n_state = end_conf4;
					else
						n_state = c_state;
				end
			
			end_conf4:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = set1_conf5;
				end
			
			set1_conf5:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_interrupts;
					//Next state
					n_state = load_conf5;
				end
			
			load_conf5:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					data = data_interrupts;
					load_ser = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = en_sck_conf5;
				end
				
			en_sck_conf5:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					en_ser = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					csb = 1'b0;
//					sclk= sck;
//					dout= ser_data[23];
					//Next state
					if (count_bits == 5'b11000)
						n_state = end_conf5;
					else
						n_state = c_state;
				end
			
			end_conf5:
				begin
					// Internal and output signals
					sel_conf = 1'b1;
					end_conf = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = idle;
				end
			
			default:
				begin
					n_state = default_st;
				end
			
		endcase
	end	
			
endmodule
	
		
		
		