module tdc_spi_read (
		rst_n,
		clk,
		start_read,
		sel_read,
		csb,
		din,
		dout,
		sclk,
		sel_mcu,
		mcu_sck,
		mcu_data,
		end_read
	);

// Ports definitions
input wire rst_n;
input wire clk;
input wire start_read;
output reg sel_read;
output reg csb;
input wire din;
output wire dout;
output wire sclk;
output reg sel_mcu;
output wire mcu_sck;
output wire mcu_data;
output reg end_read;

// Commands
parameter read1_inst = 8'b10010000;
parameter read2_inst = 8'b10011011;

//States codification
parameter 	idle			= 5'b00000,//0
			set1_read1		= 5'b00001,//1
			load_read1 		= 5'b00010,//2
			en_sck_read1 	= 5'b00011,//3
			end_read1 		= 5'b00100,//4
			start_download1	= 5'b00101,//5
			start_mcu1		= 5'b00110,//6
			download1		= 5'b00111,//7
			end_download1	= 5'b01000,//8
			end_mcu1		= 5'b01001,//9
			set1_read2 		= 5'b01010,//10
			load_read2		= 5'b01011,//11
			en_sck_read2	= 5'b01100,//12
			end_read2		= 5'b01101,//13
			start_download2	= 5'b01110,//14
			start_mcu2		= 5'b01111,//15
			download2		= 5'b10000,//16
			end_download2	= 5'b10001,//17
			end_mcu2		= 5'b10010,//18
			default_st		= 5'bxxxxx;
			

// Internal nets and registers
reg [4:0] c_state, n_state;
reg [4:0] count_bits;
reg [4:0] count_data;
reg incr_count_data, en_count_bits, en_count_data;
reg load_ser, en_ser;
reg [7:0] ser_data, inst;
reg en_sck; 
wire sck;
reg en_mcu_sck, en_mcu_data;

// Bits counter
always @(posedge clk or negedge rst_n)
	begin
		if (rst_n == 1'b0 || en_count_bits == 1'b0)
			count_bits <= 5'b00000;
		else
			count_bits <= count_bits + 1'b1;
	end

//Data counter
always @(posedge clk or negedge rst_n)
	begin
		if (rst_n == 1'b0 || en_count_data == 1'b0)
			count_data <= 5'b00000;
		else
			begin
				if (incr_count_data == 1'b1)
					count_data <= count_data + 1'b1;
				else
					count_data <= count_data;
			end	
	end

// Serializer register
always @(negedge clk or negedge rst_n)
	begin
		if (rst_n == 1'b0)
			ser_data <= 24'b000000000000000000000000;
		else if (load_ser == 1'b1)
			ser_data[7:0] <= inst[7:0];
		else if (en_ser == 1'b1)
			begin
				ser_data[0] <= 1'b0;
				ser_data[7:1] <= ser_data[6:0];
			end
		else
			ser_data[7:0] <= ser_data[7:0];
	end


//SCK ENABLE
assign sclk = (en_sck == 1'b1)? clk : 1'b0;
//DATA OUT
assign dout = ser_data[7];
// DATA MCU
assign mcu_sck = (en_mcu_sck == 1'b1)? clk : 1'b0;
assign mcu_data = (en_mcu_data == 1'b1)? din : 1'b0;

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
			start_read,
			count_bits,
			count_data
		)
		
	begin
		// Default values
		n_state = c_state;
		csb = 1'b1;
//		dout = 1'b0;
//		sclk = 1'b0;
		en_count_bits = 1'b0;
		en_count_data = 1'b0;
		en_ser = 1'b0;
		en_sck = 1'b0;
		incr_count_data = 1'b0;
		load_ser = 1'b0;
		en_mcu_sck = 1'b0;
		en_mcu_data = 1'b0;
		inst[7:0] = 8'b00000000;
		sel_read = 1'b0;
		sel_mcu = 1'b0;
		end_read = 1'b0;
		
		case (c_state)
			idle:
				begin
					// Internal and output signals
					
					//Next state
					if (start_read == 1'b1)
						n_state = set1_read1;
					else
						n_state = c_state;		
				end
				
			set1_read1:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					inst[7:0] = read1_inst;
					//Next state
					n_state = load_read1;
				end
				
			load_read1:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					inst[7:0] = read1_inst;
					load_ser = 1'b1;
					//Next state
					n_state = en_sck_read1;
				end
				
			en_sck_read1:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_ser = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					csb = 1'b0;
//					sclk = sck;
//					dout = ser_data[23];
					//Next state
					if (count_bits == 5'b01000)
						n_state = end_read1;
					else
						n_state = c_state;
				end
				
			end_read1:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_count_data = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = start_download1;
				end
				
			start_download1:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_sck = 1'b0;
					en_count_bits = 1'b1;
					en_count_data = 1'b1;
					csb = 1'b0;
//					sclk = sck;
					//Next state
					n_state = start_mcu1;
				end
				
			start_mcu1:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					en_count_data = 1'b1;
					if (count_bits == 5'b10111)
						incr_count_data = 1'b1;
					else
						incr_count_data = 1'b0;
					csb = 1'b0;
//					sclk = sck;
					sel_mcu = 1'b1;
//					mcu_data = din;
					en_mcu_data = 1'b1;
//					mcu_sck = sck;
					en_mcu_sck = 1'b1;
					//Next state
					if (count_bits == 5'b11000)
						n_state = end_download1;
					else 
						n_state = c_state;
				end
				
			end_download1:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_sck = 1'b1;
					en_count_data = 1'b1;
					csb = 1'b0;
					sel_mcu = 1'b1;
//					mcu_data = din;
					en_mcu_data = 1'b1;
//					mcu_sck = sck;
					en_mcu_sck = 1'b1;
					//Next state
					n_state = end_mcu1;
				end
				
			end_mcu1:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_count_data = 1'b1;
					csb = 1'b0;
					//Next state
					if (count_data == 5'b00011)
					n_state = set1_read2;
					else
					n_state = end_read1;
				end
				
			set1_read2:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					inst[7:0] = read2_inst;
					//Next state
					n_state = load_read2;
				end
				
			load_read2:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					inst[7:0] = read2_inst;
					load_ser = 1'b1;
					//Next state
					n_state = en_sck_read2;
				end
				
			en_sck_read2:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_ser = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					csb = 1'b0;
//					sclk = sck;
//					dout = ser_data[23];
					//Next state
					if (count_bits == 5'b01000)
						n_state = end_read2;
					else
						n_state = c_state;
				end
				
			end_read2:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_count_data = 1'b1;
					csb = 1'b0;
					//Next state
					n_state = start_download2;
				end
				
			start_download2:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_sck = 1'b0;
					en_count_bits = 1'b1;
					en_count_data = 1'b1;
					csb = 1'b0;
//					sclk = sck;
					//Next state
					n_state = start_mcu2;
				end
				
			start_mcu2:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					en_count_data = 1'b1;
					if (count_bits == 5'b10111)
						incr_count_data = 1'b1;
					else
						incr_count_data = 1'b0;
					csb = 1'b0;
//					sclk = sck;
					sel_mcu = 1'b1;
//					mcu_data = din;
					en_mcu_data = 1'b1;
//					mcu_sck = sck;
					en_mcu_sck = 1'b1;
					//Next state
					if (count_bits == 5'b11000)
						n_state = end_download2;
					else 
						n_state = c_state;
				end
				
			end_download2:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_sck = 1'b1;
					en_count_data = 1'b1;
					csb = 1'b0;
//					mcu_data = din;
					en_mcu_data = 1'b1;
//					mcu_sck = sck;
					en_mcu_sck = 1'b1;
					sel_mcu = 1'b1;
					//Next state
					n_state = end_mcu2;
				end
				
			end_mcu2:
				begin
					// Internal and output signals
					sel_read = 1'b1;
					en_count_data = 1'b1;
					csb = 1'b0;
					if (count_data == 5'b00010)
						end_read = 1'b1;
					else
						end_read = 1'b0;
					//Next state
					if (count_data == 5'b00010)
					n_state = idle;
					else
					n_state = end_read2;
				end
			
			default:
				begin
					n_state = default_st;
				end
			
		endcase
	end	


endmodule
	
		
		
		