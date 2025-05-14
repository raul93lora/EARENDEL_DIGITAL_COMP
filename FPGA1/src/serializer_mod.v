/* This register will transmit the electrode configuration from parallel to serial 
* v1 - Raul Lora Rivera
*/
module serializer_mod #(parameter N_ELECTRODES = 129)(  					// Parámetro genérico para el numero de electrodos
	CLK,
	RST_N,
	electr_config_in,
	enable_desp,
	enable_config,
	sr_finish,
	serial_out,
	serial_out_test,
	electr_config_test
); 

    	// Parameters definition -- Definicion de los estados (4 estados)
    	parameter IDLE = 2'b00;
    	parameter SR_ELEC_CONFIG = 2'b01;
    	parameter SR_SHIFT = 2'b10;
	parameter SR_FINISH = 2'b11;

    	// Estado actual y siguiente
    	reg [2:0] current_state, next_state;

	// Ports definition	
	input wire RST_N;
	input wire CLK;
	input wire [N_ELECTRODES-1:0] electr_config_in;					// Configuracion de electrodos en paralelo a la entrada
	input wire enable_desp;
	output reg sr_finish;
	output reg enable_config;
	output reg serial_out;	
	output reg serial_out_test;

	// Output port for testing
	output reg [N_ELECTRODES-1:0] electr_config_test;							// Registro de salida para testing -- conecto a GPIO libres

	// Registers
	reg [N_ELECTRODES-1:0] shift_reg;
	reg [7:0] counter_sr;

    	// Logica de transicion de estados (cambiar el estado)
    	always @(posedge CLK or negedge RST_N) begin
        	if (!RST_N) begin
            		current_state <= IDLE; 						// Al reset, se va al estado IDLE
        	end else begin
            		current_state <= next_state; 						// Cambiar al siguiente estado
        	end
    	end

    	// Logica de transicion de estados (determinacion del siguiente estado)
    	always @(*) begin
        	case (current_state)
			IDLE: next_state = (enable_desp == 1'b1) ? SR_ELEC_CONFIG : IDLE;
			SR_ELEC_CONFIG: next_state = SR_SHIFT;
			SR_SHIFT: next_state = (counter_sr == N_ELECTRODES-1) ? SR_FINISH : SR_SHIFT;
			SR_FINISH: next_state = IDLE;									// Default: Vuelve a IDLE
        	endcase
    	end

	// Logica para asignar valores a las salidas
	always @(posedge CLK or negedge RST_N) begin
		if (!RST_N) begin
			sr_finish <= 0;
			serial_out <= 0;
			enable_config <= 0;	
			shift_reg <= 0; //128'h00000000000000000000000000000000; 	
		end else begin
            	case (current_state)
			IDLE: begin
				sr_finish <= 0;
				serial_out <= 0;
				serial_out_test <= 0;
				enable_config <= 0;
				shift_reg <= 0; // 128'h00000000000000000000000000000000; 
			end
			SR_ELEC_CONFIG: begin
				sr_finish <= 0;
				serial_out <= 0;
				serial_out_test <= 0;
				enable_config <= 0;
				shift_reg <= electr_config_in;
			end
			SR_SHIFT: begin
				sr_finish <= 0;
				enable_config <= 1;
				serial_out_test <= shift_reg[N_ELECTRODES-1];
                    		// Desplazamos la secuencia y actualizamos la señal de salida
                    		serial_out <= shift_reg[N_ELECTRODES-1]; 					// El bit más significativo de la secuencia
                    		shift_reg <= {shift_reg[N_ELECTRODES-2:0], 1'b0};  			// Desplazamos la secuencia a la izquierda
               	end
               	SR_FINISH: begin
				electr_config_test <= electr_config_in;
				sr_finish <= 1;
				enable_config <= 0;
				serial_out <= 0; 
				serial_out_test <= 0;
				shift_reg <= 0; // 128'h00000000000000000000000000000000; 
               	end
               	default: begin
				sr_finish <= 0;
				serial_out <= 0;
				serial_out_test <= 0;
				enable_config <= 0;
				shift_reg <= 0; // 128'h00000000000000000000000000000000; 
               	end
            		endcase
        	end
    	end

	// Asignacion solo para el testing
	//assign electr_config_test = shift_reg;


    	// Contador para esperar en SR_SHIFT
    	always @(posedge CLK or negedge RST_N) begin
       		if (!RST_N) begin
            		counter_sr <= 0; 									// Reset del contador
        	end else if (current_state == SR_SHIFT && counter_sr < N_ELECTRODES) begin
            		counter_sr <= counter_sr + 1; 							// Incrementar el contador en STATIC_READ
        	end else if (current_state != SR_SHIFT) begin
            		counter_sr <= 0; 									// Reset del contador cuando no estamos en STATIC_READ
        	end
    	end

endmodule





