 module I2C_interpreter
#(
parameter 	ADDRESS8_BUS_WIDTH 		= 8,
			ADDRESS_BUS_WIDTH 		= 16,
			DATA32_BUS_WIDTH 		= 32,
			DATA8_BUS_WIDTH 		= 8,
			COMMAND_BUS_WIDTH 		= 8,
			STATUS_REG_ADDR 		= 16'b0000000000000111,
			STATUS_ID_ADDR 			= 16'b0000000000000000,
			FIFO_ADDR 				= 16'b0000000100001001
)
(
			clk_sys, //system clock of 25MHz
			reset, //reset
			stop, //resatrt the interpreter
			ack, //signal that inform that we have receive or transmit an ACK
			ready_slave_addr, //we have receive the SLVAE_ADDR
			start_I2C, //start of the I2C
			sda_i,
			scl,
			start_inter, //start of the Interpreter, when we have the command and the 2 bytes address
			load_rdata, //to upload the read data of 8 bits
			load_wdata, //to upload the write data of 8 bits
			r_w, //to inform if it is a read or write mode
			data_rx, //data that it is received
			command, //command data
			addr0, //first 8 bits address (LSBYTE)
			addr1,
			prdata, //read data from APB bus
			pwdata, //write data from APB bus
			paddr, //address of APB bus
			penable, 
			psel,
			pready,
			pwrite,
			pslverr,
			no_restart, //signal that inform that a start repeat condition hasn´t been detected
			burst, //when we are in burst mode, or reading the FIFO
			data_tx, //data that we are going to transmit
			load_rdata2,
			we_i2c,
			wdata_i2c
);

//Ports definition
input clk_sys;
input reset;
input stop;
output ack;
input ready_slave_addr;
input start_I2C;
input scl;
input start_inter;
input load_rdata;
output load_rdata2;
input load_wdata;
input sda_i;
input r_w;
input [DATA8_BUS_WIDTH-1:0]data_rx;
input [COMMAND_BUS_WIDTH-1:0] command;
input [ADDRESS8_BUS_WIDTH-1:0] addr0;
input [ADDRESS8_BUS_WIDTH-1:0] addr1;
input [DATA32_BUS_WIDTH-1:0] prdata;
output reg [DATA32_BUS_WIDTH-1:0] pwdata;
output [ADDRESS_BUS_WIDTH-1:0] paddr;
//signal for the comunication between bus APB and memory and registers
output reg penable; 
output reg psel;
input pready;
output reg pwrite;
input pslverr;
output no_restart; 
output burst; 
output [DATA32_BUS_WIDTH-1:0] data_tx; 
output reg we_i2c;
output [3:0] wdata_i2c;
	
 /* synthesis syn_preserve = 1 */
localparam idle 					= 5'b00000, //0
		  command_op 				= 5'b00001, //1
		  wait_slave_address 		= 5'b00010, //2
		  wait_start_repeat 		= 5'b00011, //3
		  wait_read_op 				= 5'b00100, //4
		  wait_state 				= 5'b00101, //5
		  read_op 					= 5'b00110, //6
		  new_rdata 				= 5'b00111, //7
		  word_32 					= 5'b01000, //8
		  wait_wdata 				= 5'b01001, //9
		  new_wdata 				= 5'b01010, //10
		  wait_write_op 			= 5'b01011, //11
		  write_op 					= 5'b01100, //12
		  wait_state2 				= 5'b01101, //13
		  //err 						= 5'b01110, //14
		  finish_state 				= 5'b01111, //15
		  err_finish 				= 5'b10000, //16
		  wait_down_start 			= 5'b10001, //17
		  wait_down_rdata 			= 5'b10010, //18
		  wait_down_wdata 			= 5'b10011, //19
		  wait_rdata				= 5'b10100, //20
		  update_data 				= 5'b10101, //21
		  wait_read_status			= 5'b10110, //22
		  wait_state_status 		= 5'b10111, //23
		  read_status				= 5'b11000, //24
		  check_addr				= 5'b11001, //25
		  wait_rdata2				= 5'b11010, //26
		  wait_down_rdata2			= 5'b11011, //27
		  wait_wdata_err			= 5'b11100, //28
		  wait_wdata_err2			= 5'b11101, //29
		  check_addr_rd				= 5'b11110, //30
		  default_st 				= 5'bxxxxx;

// Registers and nets definition
reg[4:0] c_state, n_state; //states register
reg[2:0] c_cont, n_cont; //ready_data counter
reg[3:0] c_err_state, n_err_state; //error state
reg[ADDRESS_BUS_WIDTH-1:0] c_address, n_address; //register to store the address
reg[DATA32_BUS_WIDTH-1:0] c_data32, n_data32; //register to store the address 32 bits
reg[DATA8_BUS_WIDTH-1:0] c_data_rx, n_data_rx; //register to change the data that we are going to transmit
reg c_ack, n_ack, c_burst, n_burst, c_no_restart, n_no_restart, c_load_rdata2, n_load_rdata2;
reg [2:0] load_rdata_q, load_wdata_q, ready_slave_addr_q, start_inter_q, start_I2C_q, r_w_q, stop_q, sda_i_q, scl_q; //signals for the syncronization between the SCL and clk_sys

		   
localparam 	BUS0 = 0, //constants that are going to help us to divide tha data of 32 bits in 4 of 8 bits
			BUS8 = 8,
			BUS16 = 16,
			BUS24 = 24,
			BUS32 = 32;
			
localparam 	I2C_normal_write_op = 8'b00000000, //different types of command
			I2C_burst_write_op = 8'b00000001,
			I2C_normal_read_op = 8'b00000010,
			I2C_burst_read_op = 8'b00000011,
			I2C_read_status_fifo = 8'b00000100,
			I2C_read_fifo = 8'b00000101;

//assign of signals and outputs
assign data_tx = c_data32;
assign ack = c_ack;
assign no_restart = c_no_restart;
assign burst = c_burst;
assign paddr = c_address;
assign load_rdata2 = c_load_rdata2;
assign wdata_i2c = c_err_state;

always @(posedge clk_sys, negedge reset, posedge stop)
	begin
		if(reset == 1'b0 || stop == 1'b1)
			begin
				c_address <= 16'b0000000000000000;
				c_err_state <= 4'b0000;
				c_cont <= 3'b000;
				c_data32 <= 32'h00000000;
				c_ack <= 1'b0; 
				c_data_rx <= 8'h00;
				c_burst <= 1'b0;
				c_no_restart <= 1'b0;
				c_load_rdata2 <= 1'b0;
			end
		else 
			begin
				c_address <= n_address;
				c_err_state <= n_err_state;
				c_cont <= n_cont;
				c_data32 <= n_data32;
				c_ack <= n_ack;
				c_data_rx <= n_data_rx;
				c_burst <= n_burst;
				c_no_restart <= n_no_restart;
				c_load_rdata2 <= n_load_rdata2;
			end
	end
	
always @(posedge clk_sys, negedge reset, posedge stop)
	begin
		if(reset == 1'b0 || stop == 1'b1)
			c_state <= idle;
		else 
			c_state <= n_state;
	end
	
	
/*Sincronization of control signals between SCL and clk_sys*/
always @(posedge clk_sys)
	begin
		load_rdata_q <= {load_rdata_q[1:0], load_rdata};
		start_inter_q <= {start_inter_q[1:0], start_inter};
		load_wdata_q <= {load_wdata_q[1:0], load_wdata};
		ready_slave_addr_q <= {ready_slave_addr_q[1:0], ready_slave_addr};
		start_I2C_q <= {start_I2C_q[1:0], start_I2C};
		r_w_q <= {r_w_q[1:0], r_w};
		stop_q <= {stop_q[1:0], stop};
		sda_i_q <= {sda_i_q[1:0], sda_i};
		scl_q <= {scl_q[1:0], scl};
	end

always @(c_state, 
		c_address,  
		start_I2C_q,
		stop_q,
		data_rx, 
		start_inter_q,
		prdata, 
		c_err_state,  
		c_data_rx,
		c_data32, 
		c_cont,  
		load_rdata_q,
		load_wdata_q,
		sda_i_q,
		addr0,
		addr1,
		command,
		ready_slave_addr_q,
		c_burst,
		c_no_restart,
		pready, pslverr,
		scl_q,
		c_load_rdata2,
		r_w_q,
		c_ack)
		
	begin
		
		n_cont = c_cont;
		n_err_state = c_err_state;
		pwrite = 1'b0;
		penable = 1'b0;
		psel = 1'b0;
		pwdata = 32'h0000;
		n_address = c_address;
		n_data32 = c_data32;
		n_ack = c_ack; 
		n_data_rx = c_data_rx;
		n_no_restart = c_no_restart;
		n_burst = c_burst;
		n_state = c_state;
		n_load_rdata2 = c_load_rdata2;
		we_i2c = 1'b0;
		
		case(c_state)
			idle: 
				begin
					n_address = 16'b0000000000000000;
					n_err_state = 4'b0000;
					n_cont = 3'b000;
					n_data32 = 32'h0000;
					n_ack = 1'b0; 
					n_burst = 1'b0;
					n_no_restart = 1'b0;
					if (start_inter_q[2] == 1'b1)//when we receive the start we pass to the next state
						n_state = wait_down_start;
					else
						n_state = idle;
				end
			
			wait_down_start: //wait start for the start to get down
				begin
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (start_inter_q[2] == 1'b0)
						n_state = command_op;
					else
						n_state = c_state;
				end
			
			command_op: //analizing the command that we have received
				begin
					
					if (command == I2C_normal_write_op || command == I2C_burst_write_op)
						n_no_restart = 1'b1;
					else if (command == I2C_normal_read_op || command == I2C_burst_read_op || command == I2C_read_status_fifo || command == I2C_read_fifo)
						n_no_restart = 1'b0;
					else
						begin
							n_err_state = 4'b0001;
							n_ack = 1'b1;
						end
						
					if (command == I2C_read_status_fifo)
						n_address = STATUS_REG_ADDR;
					else if (command == I2C_read_fifo)
						n_address = FIFO_ADDR;
					else 
						n_address = {addr1, addr0};
						
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (command == I2C_normal_write_op || command == I2C_burst_write_op)
						n_state = check_addr;
					//else if ((command == I2C_normal_read_op || command == I2C_burst_read_op || command == I2C_read_status_fifo || command == I2C_read_fifo) && r_w_q[2] == 1'b0)
						//n_state = wait_start_repeat;
					else if (command == I2C_normal_read_op || command == I2C_burst_read_op || command == I2C_read_status_fifo || command == I2C_read_fifo)// && r_w_q[2] == 1'b1)
						n_state = check_addr_rd;
					else 
						n_state = err_finish;
				end
				
			check_addr_rd:
				begin
					if ((command == I2C_normal_read_op || command == I2C_burst_read_op) && (c_address >= FIFO_ADDR))// && c_address != 16'b0000000111111111))
						begin
							n_err_state = 4'b0100;
							n_address = 16'b0000000000000000;
						end
					else
						begin
							n_err_state = c_err_state;
							n_address = c_address;
						end
					if ((command == I2C_normal_read_op || command == I2C_burst_read_op) && (c_address >= FIFO_ADDR))// && c_address != 16'b0000000111111111))
						n_state = err_finish;
					else if (((command == I2C_normal_read_op || command == I2C_burst_read_op) && (c_address < FIFO_ADDR /*|| c_address != 16'b0000000111111111) */)|| command == I2C_read_status_fifo || command == I2C_read_fifo) && r_w_q[2] == 1'b0)
						n_state = wait_start_repeat;
					else if (((command == I2C_normal_read_op || command == I2C_burst_read_op) && (c_address < FIFO_ADDR /*|| c_address != 16'b0000000111111111)*/) || command == I2C_read_status_fifo || command == I2C_read_fifo) && r_w_q[2] == 1'b1)
						n_state = wait_read_op;
					else
						n_state = c_state;	
				end

			check_addr: //if in write mode the address is of the FIFO, or STATUS REGISTER or ID REGISTER a error occurs
				begin
					if (c_address == STATUS_REG_ADDR) 
						begin
							n_err_state = 4'b0010;
							n_address = 16'b0000000000000000;
						end
					else if (c_address >= FIFO_ADDR)// && c_address != 16'b0000000111111111)
						begin
							n_err_state = 4'b0100;
							n_address = 16'b0000000000000000;
						end
					else if (c_address == STATUS_ID_ADDR)
						begin
							n_err_state = 4'b1000;
							n_address = 16'b0000000000000000;
						end
					if (c_address == STATUS_REG_ADDR || c_address == FIFO_ADDR || c_address == STATUS_ID_ADDR || (c_address > FIFO_ADDR))// && c_address != 16'b0000000111111111))
						n_state = err_finish;
					else
						n_state = wait_wdata;
				end
			
			wait_start_repeat: //wait state for the start repeat condition, to know if it is a read or write mode 
				begin
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (start_I2C_q[2] == 1'b1 && command == I2C_read_status_fifo) //if we have this command we are going to read the status register
						n_state = wait_read_status;
					else if (start_I2C_q[2] == 1'b1) //if the command is diferent to the status register, it is a normal read of the register and memory
						n_state = wait_read_op;
					else
						n_state = c_state;
				end
			
			wait_read_status:
				begin
					psel = 1'b1; //active this signal like the APB bus protocol says
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else 
						n_state = wait_state_status;
				end
			
			wait_state_status: 
				begin
					psel = 1'b1;
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else
						n_state = read_status;
				end
				
			read_status: //we take the data from the bus APB if pready is 1
				begin
					psel = 1'b1;
					penable = 1'b1;
					if (pready == 1'b1)
						begin
							n_data32 = prdata;
							n_load_rdata2 = 1'b1;
						end
					
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if(pready == 1'b1)
						n_state = wait_slave_address; 
					else
						n_state = c_state;
				end
			
			//primero cojo el dato que me llega del APB de 32, y luego lo divido en 4 en 8 y voy pasando cada 8 al I2C_Master
			wait_read_op:
				begin
					psel = 1'b1;
						
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else 
						n_state = wait_state;
				end
				
			wait_state: //esto sobre, deberia quitar y probar sin el
				begin
					psel = 1'b1;
						
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if ((command == I2C_read_fifo || command == I2C_read_status_fifo))// && pready == 1'b1)
						n_state = read_op;
					else if (command == I2C_normal_read_op || command == I2C_burst_read_op)
						n_state = read_op;
					else
						n_state = c_state;
				end
				
			read_op: //we take the data from the bus APB
				begin
					psel = 1'b1;
					penable = 1'b1;
					if (pready == 1'b1)
						begin
							n_data32 = prdata;
							n_load_rdata2 = 1'b1;
						end

					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if(c_burst == 1'b0 && pready == 1'b1) //if it is a normal read we need to wait to the slave address 
						n_state = wait_slave_address; 
					else if ((c_burst == 1'b1 && pready == 1'b1))// || (command == I2C_read_fifo || command == I2C_read_status_fifo)) //if it is a burst we need to updat the new data
						n_state = wait_rdata;
					else
						n_state = c_state;
				end
				
			wait_slave_address:
				begin
					//transforming a data of 32 bits in 4 datas of 8 bits
					
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (ready_slave_addr_q[2] == 1'b1) //wait to the slave_address
						n_state = wait_rdata;
					else 
						n_state = c_state;
				end
			
			wait_rdata: //wait for the control signal load_rdata
				begin
					if (load_rdata_q[2] == 1'b1 && sda_i_q[2] == 1'b0 && scl_q[2] == 1'b1)
						begin
							n_cont = c_cont + 1'b1;
							//n_load_rdata2 = 1'b1;
						end
					else if (load_rdata_q[2] == 1'b1 && sda_i_q[2] == 1'b1 && scl_q[2] == 1'b1)
						begin
							n_cont = c_cont;
							//n_load_rdata2 = 1'b1;
						end
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if(load_rdata_q[2] == 1'b1 && sda_i_q[2] == 1'b0 && scl_q[2] == 1'b1)// && c_burst == 1'b0)
						n_state = new_rdata;
					else if (load_rdata_q[2] == 1'b1 && sda_i_q[2] == 1'b1 && scl_q[2] == 1'b1)
						n_state = finish_state;
					else
						n_state = c_state;
				end
				
			wait_down_rdata: //wait the down because the interpreter is faster than the control and it can count lots of load_rdata 
				begin
					if (load_rdata_q[2] == 1'b0)
						n_load_rdata2 = 1'b0;
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (load_rdata_q[2] == 1'b0)
						n_state = wait_rdata;
					else
						n_state = c_state;
				end

			new_rdata: 
			/*In this state we are going to take 8 bits from the bus of 32 and we are going to send it*/
				begin
					//activate the signal burst for the next data if it is in the command data
					if (c_cont > 3'b011 && (command == I2C_burst_read_op || command == I2C_read_status_fifo || command == I2C_read_fifo) && c_address != 9'b111111111)
						n_burst = 1'b1;
					if (c_cont == 3'b101)
						begin
							n_cont = 3'b000;
						end
					if (c_cont == 3'b100) //last data of 8 bits
						begin
							if(command == I2C_burst_read_op) //if we are in burst mode, we increment the address
								n_address = c_address + 1'b1;
							else if (command == I2C_read_status_fifo || command == I2C_read_fifo) //if we are reading the fifo the address is always the same 0x109
								n_address = FIFO_ADDR;
						end
					
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (c_cont <= 3'b100) //we going to wait the next load_rdata
						n_state = wait_down_rdata; 
					else if (c_cont > 3'b100 && (command == I2C_normal_read_op || (command == I2C_burst_read_op && c_address == 9'b100000000 ))) //if we finish al the bytes we going to the end
						n_state = finish_state;
	/*Cambio*/		else if (c_cont > 3'b100 && (command == I2C_burst_read_op || command == I2C_read_status_fifo || command == I2C_read_fifo) && c_address != 9'b100000000) //if we are in burst mode we goig to read another data
						n_state = wait_read_op;
					else
						n_state = c_state;
				end
			
			wait_wdata:
				begin
					if (command == I2C_burst_write_op && c_address == 12'h100)//if we are in the last address in the burst mode, we put and not ack
						n_ack = 1'b1;
					if(load_wdata_q[2] == 1'b1 ) //update the data received
						n_data_rx = data_rx;
					if (stop_q[2] == 1'b1 || start_I2C_q[2] == 1'b1)
						n_state = idle;
					else if(load_wdata_q[2] == 1'b1)
						n_state = wait_down_wdata;
					else if (c_cont == 3'b100)
						n_state = wait_write_op;
					else
						n_state = c_state;
				end
			
			wait_down_wdata:
				begin
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (load_wdata_q[2] == 1'b0)
						n_state = word_32;
					else
						n_state = c_state;
				end
			
			word_32:
			/*In this state we are going to change the data of 8 bits in one of 32*/
				begin
					n_data32[31:0] = {c_data32[23:0], c_data_rx[7:0]};
					n_cont = c_cont + 1'b1;	
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else
						n_state = new_wdata;
				end
			
			new_wdata:
				begin
					n_ack = 1'b0;
					
					if (c_cont == 3'b011 && command == I2C_burst_write_op && c_address != 12'b111111111111)
						n_burst = 1'b1;
						
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (c_cont <= 3'b100) //we going to wait the next ack 
						n_state = wait_wdata; 
					else if (c_cont > 3'b100 && ((command == I2C_burst_write_op && c_address != 12'b111111111111)|| command == I2C_normal_write_op))
						n_state = wait_write_op;
					else
						n_state = c_state;
				end
				
			wait_write_op: //in this state we write in the memory/register the data from the I2C 
				begin
					pwdata = c_data32;
					pwrite = 1'b1;
					psel = 1'b1;
					
					if(c_cont == 3'b100)
						n_cont = 3'b000;
						
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else
						n_state = write_op;
				end
				
				
			write_op: //we active the necesary signal for the good comunication between the bus APB and the memory/registers
				begin
					penable = 1'b1;
					pwrite = 1'b1;
					psel = 1'b1;
					if (pready == 1'b1)
						pwdata = c_data32;
					
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else if (pready == 1'b1)
						n_state = wait_state2;
					else
						n_state = c_state;
				end
			
			wait_state2:
				begin
					pwdata = c_data32;
					if (c_burst == 1'b1)// && c_address != 9'b111111111 && c_address != 9'b000000110)// && c_address != 9'b000000000)
						n_address = c_address + 1'b1;	//increment the address if we are in the burst mode
					
					if (stop_q[2] == 1'b1)// || start_I2C_q[2] == 1'b1)
						n_state = idle;
					else if (c_burst == 1'b1)// && c_address >= FIFO_ADDR)// && c_address != 16'b0000000111111111)//9'b111111111)
						n_state = check_addr;
					else if (start_inter_q[2] == 1'b1 && c_burst == 1'b0)
						n_state = wait_down_start; //probar que se vaya a idle o que espere el start_inter
					else
						n_state = c_state;
					
				end
				
			/*err: //error state
				begin
					//update the status register with the error state
					n_address = 9'b000000000;
					we_i2c = 1'b1;
					if (stop_q[2] == 1'b1)
						n_state = idle;
					else 
						n_state = err_finish;
				end*/
				
			finish_state: //final state
				begin
					n_address = 16'b0000000000000000;
					n_cont = 3'b000;
					n_ack = 1'b0; 
					n_burst = 1'b0;
					
					if (stop_q[2] == 1'b1 || start_I2C_q[2] == 1'b1) 
						n_state = idle;
					//else if (start_I2C_q[2] == 1'b1)
						//n_state = idle;
					else
						n_state = c_state;
				end
				
			err_finish: //final error state
				begin
					we_i2c = 1'b1;
					if (command == I2C_burst_write_op)
						begin
							n_burst = 1'b1;
							if (c_err_state == 4'b1000) 
								n_address = 9'b000000001;
							else if (c_err_state == 4'b0010)
								n_address = 9'b000001000;
						end
					if (stop_q[2] == 1'b1 || start_I2C_q[2] == 1'b1)
						n_state = idle;
					//else if (start_I2C_q[2] == 1'b1)
						//n_state = idle;
					else if (pready == 1'b1 && command != I2C_burst_write_op)
						n_state = finish_state;
					else if (command == I2C_burst_write_op && c_err_state != 4'b0100)
						n_state = wait_wdata_err;
					else 
						n_state = c_state;
				end
			
			wait_wdata_err:
				begin
					if(load_wdata_q[2] == 1'b1)
						n_cont = c_cont + 1'b1;
					else
						n_cont = c_cont;
					if(load_wdata_q[2] == 1'b1)
						n_state = wait_wdata_err2;
					else
						n_state = c_state;
				end
				
			wait_wdata_err2:
				begin
					if(c_cont == 3'b101)
						n_cont = 3'b000;
					if(load_wdata_q[2] == 1'b0 && (c_cont <= 3'b100))
						n_state = wait_wdata_err;
					else if (c_cont == 3'b101)
						n_state = check_addr;
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