/*this block implements the FSM that supervised the operation of the physical layer. In addition, 
this module will be in charge of enabling the system clock and provide the corresponding data to the link layer or upper layers.*/
module I2C_FSM(
	rst_n, //reset asyncronous
	scl, //clock I2C
	sda_o, //sda output
	sda_i, //sda input 
	start_i, //start detected
	stop_i, //stop detected
	ack, //ack signal
	burst, //signal that inform that we are in burst mode 
	no_restart, //signal that announce that restart is not detected
	data_ireg, //data that is received
	start_inter, //signal to start the interpreter
	load_command, //signal to load the command
	load_addr0, //signal to first 8 bits of address
	load_addr1, //signal to second 8 bits of address
	load_rdata, //signal to upload the read data
	load_wdata, //signal to upload the write data
	enable_desp_rx, //enable the receiver shift register
	ready_slave_address, //slave address is ready
	in_out, //in out mode of sda
	enable_desp_tx, //enable the transmition shift register
	r_w //read write mode
);

//Ports definition
input wire rst_n;
input wire scl;
input wire start_i;
input wire stop_i;
input wire sda_i;
input wire ack;
input wire burst;
input wire no_restart;
input [7:0] data_ireg;
output reg in_out;
output reg start_inter;
output reg load_command;
output reg load_addr0;
output reg load_addr1;
output reg load_rdata;
output reg load_wdata;
output reg ready_slave_address;
output reg enable_desp_rx;
output reg enable_desp_tx;
output r_w;
output reg sda_o;

localparam MALTON_ADDRESS = 7'b0000010;

localparam 	idle 				= 4'b0000, //0
			wait_to_check		= 4'b0001, //1
			check_dev_addr 		= 4'b0010, //2
			ack_dev_reg 		= 4'b0011, //3
			command				= 4'b0100, //4
			command_ack			= 4'b0101, //5
			get_addr1_reg 		= 4'b0110, //6
			ack_addr1_reg 		= 4'b0111, //7
			get_addr0_reg 		= 4'b1000, //8
			ack_addr0_reg 		= 4'b1001, //9
			write_op 			= 4'b1010, //10
			ack_wr_op 			= 4'b1011, //11
			read_op				= 4'b1100, //12
			ack_rd_op			= 4'b1101, //13
			wait_stop			= 4'b1110, //14
			default_st			= 4'bxxxx;

// Registers and nets definition
reg [3:0] c_state, n_state, c_bit_counter, n_bit_counter;
reg c_r_w, n_r_w, c_new_address, n_new_address;
reg [1:0] c_byte_counter, n_byte_counter;

assign r_w = c_r_w;

always@(negedge scl, negedge rst_n, posedge stop_i)
	begin
		if(rst_n == 1'b0 || stop_i == 1'b1)
			begin
				c_state <= idle;
				c_new_address <= 1'b0;
				c_r_w <= 1'b0;
				c_byte_counter <= 2'b00;
				c_bit_counter <= 4'b0000;
			end
		else 
			begin
				c_state <= n_state;
				c_new_address <= n_new_address;
				c_r_w <= n_r_w;
				c_byte_counter <= n_byte_counter;
				c_bit_counter <= n_bit_counter;
			end
	end
	
always @(c_state, start_i, data_ireg, c_bit_counter, c_r_w, sda_i, ack, burst, no_restart, c_new_address, c_byte_counter)
	begin

		load_command = 1'b0;
		load_addr0 = 1'b0;
		load_addr1 = 1'b0;
		load_rdata = 1'b0;
		load_wdata = 1'b0;
		enable_desp_tx = 1'b0;
		enable_desp_rx = 1'b0;
		n_bit_counter = c_bit_counter;
		ready_slave_address = 1'b0;
		sda_o = 1'b1;
		in_out = 1'b1;
		start_inter = 1'b0;
		n_r_w = c_r_w;
		n_new_address = c_new_address;
		n_byte_counter = c_byte_counter;
		n_state = c_state;

		case(c_state)
			idle:
				begin
					in_out = 1'b1;
					n_r_w = 1'b0;
					n_new_address = 1'b0;
					n_byte_counter = 2'b00;
					n_bit_counter = 4'b0000;
					if (start_i == 1'b1) //when a start is detected pass the state
						n_state = wait_to_check;
					else
						n_state = c_state;
				end
				
			//checking the slave address that is the MALTON ADDRESS
			
			wait_to_check:
				begin
					enable_desp_rx = 1'b1;
					n_bit_counter = c_bit_counter + 1'b1;
					//Next state
					if(c_bit_counter == 4'b0110)
						n_state = check_dev_addr;
					else
						n_state = c_state;
				end
			
			check_dev_addr:
				begin
					enable_desp_rx = 1'b1;
					n_bit_counter = c_bit_counter + 1'b1;
					if(data_ireg[7:1] == MALTON_ADDRESS)
						ready_slave_address = 1'b1;
					else
						ready_slave_address = 1'b0;
					//Next state
					if(data_ireg[7:1] == MALTON_ADDRESS) //if the address is correct and we have the 8 bits we pass to the ack
						n_state = ack_dev_reg;
					else //if the address isn´t correct we go to the idle
						n_state = idle;
				end
			
			ack_dev_reg: //waiting the ack of the device address
				begin
					in_out = 1'b0;
					sda_o = 1'b0;
					n_bit_counter = 4'b0000;
					if(data_ireg[0] == 1'b1)//if it is read mode 
						begin
							n_r_w = 1'b1;
							load_rdata = 1'b1;
						end
					else //if it is write mode
						begin
							n_r_w = 1'b0;
							load_rdata = 1'b0;
						end
					if (data_ireg[0] == 1'b0 && c_new_address == 1'b0) //if it is write mode and we don´t have a new address
						n_state = command;
					else if (data_ireg[0] == 1'b1 && c_new_address == 1'b0) // if it is a read mode and we don´t have a new address
						n_state = read_op;
					else if (c_new_address == 1'b1) //if we have a new address we are going to cougth this
						n_state = get_addr1_reg;
					else
						n_state = c_state;
				end
				
			command: //command state 
				begin
					enable_desp_rx = 1'b1; 
					n_bit_counter = c_bit_counter + 1'b1;
					if (c_bit_counter == 4'b0111)
						n_state = command_ack;
					else if (c_bit_counter < 4'b1000)
						n_state = c_state;
				end
				
			command_ack: //wait for the command ack
				begin
					sda_o = 1'b0;
					in_out = 1'b0;
					load_command = 1'b1;
					n_state = get_addr1_reg;
					n_bit_counter = 4'b0000;
				end
				
			get_addr1_reg: //address 1
				begin
					enable_desp_rx = 1'b1;
					if (start_i == 1'b1)
						begin
							n_bit_counter = 4'b0000;
							n_byte_counter = 2'b00;
						end
					else
						begin
							n_bit_counter = c_bit_counter + 1'b1;
							n_byte_counter = c_byte_counter;
						end
					
					if (start_i == 1'b1)
						n_state = wait_to_check;
					else  if (c_bit_counter == 4'b0111)
						n_state = ack_addr1_reg;
					else if(c_bit_counter < 4'b1000)
						n_state = c_state;
					
				end
				
			ack_addr1_reg: //wait for the address 1 ack
				begin
					sda_o = 1'b0;
					in_out = 1'b0;
					load_addr1 = 1'b1;
					n_bit_counter = 4'b0000;
					n_state = get_addr0_reg;					
				end
				
			get_addr0_reg: //address 0
				begin
					enable_desp_rx = 1'b1;
					n_bit_counter = c_bit_counter + 1'b1;
				
					if (c_bit_counter == 4'b0111)// && start_i == 1'b0)
						n_state = ack_addr0_reg;
					else if(c_bit_counter < 4'b1000)// && start_i == 1'b0)
						n_state = c_state;
					
				end
				
			ack_addr0_reg: //wait for the address 0 ack
				begin
					sda_o = 1'b0;
					in_out = 1'b0;
					start_inter = 1'b1;
					load_addr0 = 1'b1;
					n_new_address = 1'b0;
					n_bit_counter = 4'b0000;
					n_state = write_op;					
				end
			
			write_op: //write operation
				begin
					n_bit_counter = c_bit_counter + 1'b1;
					enable_desp_rx = 1'b1;
					if (no_restart == 1'b0 && start_i == 1'b1)
						n_bit_counter = 4'b0000;
					if (no_restart == 1'b0 && start_i == 1'b1) //if a restart is detected we are going to ckeck the device again
						n_state = wait_to_check;
					else if (c_bit_counter == 4'b0111) //if the bit counter is 8
						n_state = ack_wr_op;
					else if(c_bit_counter < 4'b1000 || no_restart == 1'b1) //if a restart is not detected
						n_state = c_state;
				end
				
			ack_wr_op: //ack write
				begin
					in_out = 1'b0;
					n_bit_counter = 4'b0000;
					load_wdata = 1'b1;
					if (ack == 1'b1)
						sda_o = 1'b1;
					else
						sda_o = 1'b0;
					if(c_byte_counter == 2'b11)
						n_byte_counter = 2'b00;
					else
						n_byte_counter = c_byte_counter + 1'b1;
					if(start_i == 1'b1)
						n_state = wait_to_check;
					else if (ack == 1'b1 && burst == 1'b1) //if it is the last byte then we going to the wait stop state
						n_state = wait_stop;
					else if ((burst == 1'b1 && ack != 1'b1) || (burst == 1'b0 && c_byte_counter < 2'b11)) 
						n_state = write_op;
					else if (burst == 1'b0 && c_byte_counter == 2'b11)//if it is the last byte and it isn´t the burst mode 
						n_state = get_addr1_reg;
					else
						n_state = c_state;
					
				end
				
			read_op: //read operation
				begin
					n_bit_counter = c_bit_counter + 1'b1;
					in_out = 1'b0;
					enable_desp_tx = 1'b1;
					
					if (c_bit_counter == 4'b0111)
						n_state = ack_rd_op;
					else if(c_bit_counter < 4'b1000)
						n_state = c_state;
				end
				
			ack_rd_op: //ack read
				begin
					n_byte_counter = c_byte_counter + 1'b1;
					n_bit_counter = 4'b0000;
					load_rdata = 1'b1;
					if(sda_i == 1'b1) //if we receive a sda_i = 1 this means that is the last bit  
						n_state = wait_stop;
					else if((sda_i == 1'b0 && c_byte_counter < 2'b11 && burst == 1'b0) || (sda_i == 1'b0 && burst == 1'b1)) //if it is not the last byte we continue
						n_state = read_op;
					else if (c_byte_counter == 2'b11 && burst == 1'b0) //if it is the last byte we wait to another
						n_state = wait_stop;
					else
						n_state = c_state;
				end
				
			wait_stop:
				begin
					if (start_i == 1'b1)
						n_new_address = 1'b1;
					else
						n_new_address = c_new_address;
					if (start_i == 1'b1)
						n_state = wait_to_check;
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