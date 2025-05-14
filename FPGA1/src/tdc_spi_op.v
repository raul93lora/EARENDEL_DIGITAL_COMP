module tdc_spi_op (
		rst_n,
		clk,
		start_op,
		sel_op,
		csb,
		din,
		dout,
		sclk
	);

// Ports definitions
input wire rst_n;
input wire clk;
input wire start_op;
output reg sel_op;
output reg csb;
input wire din;
output wire dout;
output wire sclk;

// Commands
parameter start_inst = 16'b0100000010000011;

//States codification
parameter 	idle			= 3'b000,//0
			load_start		= 3'b001,//1
			en_sck_start	= 3'b010,//2
			end_start		= 3'b011,//3
			default_st		= 3'bxxx;
			

// Internal nets and registers
reg [4:0] c_state, n_state;
reg [4:0] count_bits;
reg en_count_bits;
reg load_ser, en_ser;
reg [23:0] ser_data;
reg en_sck; 
wire sck;

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
			ser_data[23:0] <= 24'b000000000000000000000000;
		else if (load_ser == 1'b1)
			ser_data[23:0] <= {start_inst,8'b00000000};
		else if (en_ser == 1'b1)
			begin
				ser_data[0] <= 1'b0;
				ser_data[23:1] <= ser_data[22:0];
			end
		else
			ser_data[23:0] <= ser_data[23:0];
	end


//SCK ENABLE
assign sclk = (en_sck == 1'b1)? clk : 1'b0;
assign dout = ser_data[23];

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
			start_op,
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
		sel_op = 1'b0;

		
		case (c_state)
			idle:
				begin
					// Internal and output signals
					
					//Next state
					if (start_op == 1'b1)
						n_state = load_start;
					else
						n_state = c_state;		
				end
				
			load_start:
				begin
					// Internal and output signals
					sel_op = 1'b1;
					load_ser = 1'b1;
					//Next state
					n_state = en_sck_start;
				end
				
			en_sck_start:
				begin
					// Internal and output signals
					sel_op = 1'b1;
					en_ser = 1'b1;
					en_sck = 1'b1;
					en_count_bits = 1'b1;
					csb = 1'b0;
//					sclk= sck;
//					dout= ser_data[23];
					//Next state
					if (count_bits == 5'b10000)
						n_state = end_start;
					else
						n_state = c_state;
				end
				
			end_start:
				begin
					// Internal and output signals
					sel_op = 1'b1;
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
	
		
		
		