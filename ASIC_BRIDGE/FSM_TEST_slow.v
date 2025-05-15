/* Raul Lora Rivera - v1 - FSM señales para la seleccion de registros estatico y dinamico
* FSM control
*/
module FSM_TEST_slow #(
    parameter BIT_SEQUENCE_DIN_INIT = 16'hABC6,   				// Valor por defecto del registro dinámico
    parameter BIT_SEQUENCE_STAT_INIT = 88'h123456789ABCDEF1234567  	// Valor por defecto del registro estático
)(
	CLK,			// Reloj más rápido: f_CLK > f_CLK_slow_original
	CLK_slow_original,	// Reloj original más lento
	CLK_uC_7,		// Reloj activado/desactivado (CLK_uC --> activo/desactivo en los estados correspondientes)
	RST_N,			// Reset activo bajo
	SEL,			// Señal de seleccon de registro estatico o dinamico
	flag_input,
	MOSI 			// Master Output - Slave Input
);

	// Size parameters definition
	parameter SIZESRSTAT = 88; 			// Static shift register length 
	parameter SIZESRDYN = 16; 				// Dynamic shift register length

	// Wait parameters definition
	parameter N_CYCLES_IDLE = 200; 			// Ciclos de reloj a esperar en IDLE
	parameter N_CYCLES_DYN_READ = 16; 		// Dynamic register length WAIT
	parameter N_CYCLES_STATIC_READ = 88;		// Static register length WAIT

    	// Ports definition
	input wire flag_input;
	reg flag_input_reg;
    	input wire CLK;
	input wire CLK_slow_original;
	input wire RST_N;
	output reg SEL;
	output reg MOSI;
	output reg CLK_uC_7;

	reg CLK_uC;
	reg CLK_uC_2;
	reg CLK_uC_3;
	reg CLK_uC_4;
	reg CLK_uC_5;
	reg CLK_uC_6;
	reg CLK_uC_6b;
	reg CLK_uC_6c;
	reg CLK_uC_6d;
	reg CLK_uC_6e;
	reg CLK_uC_6f;
	reg CLK_uC_6g;
	reg CLK_uC_6h;
	reg CLK_uC_6i;
	reg CLK_uC_6j;
	reg CLK_uC_6k;
	reg CLK_uC_6l;
	reg CLK_uC_6m;

	reg CLK_uC_6n;
	reg CLK_uC_6o;
	reg CLK_uC_6p;
	reg CLK_uC_6q;
	reg CLK_uC_6r;
	reg CLK_uC_6s;
	reg CLK_uC_6t;
	reg CLK_uC_6u;
	reg CLK_uC_6v;
	reg CLK_uC_6w;
	reg CLK_uC_6x;
	reg CLK_uC_6y;
	reg CLK_uC_6z;

    	// Parameters definition -- Definicion de los estados (3 estados)
    	parameter IDLE = 3'b000;
    	parameter DYN_READ = 3'b001;
    	parameter STATIC_READ = 3'b010;
	parameter INDEF_STATE = 3'b011;

    	// Contadores para esperar en IDLE, DYN_READ y STATIC_READ
    	reg [13:0] counter_idle; 						// Contador de 10 bits (hasta 1024 ciclos)
    	reg [3:0] counter_din;						// Contador de 4 bits (hasta 16 ciclos)
    	reg [6:0] counter_stat;						// Contador de 7 bits (hasta 128, necesito 89)

    	// Estado actual y siguiente
    	reg [2:0] current_state, next_state;

    	// Registro para almacenar la secuencia de bits dinamica y estatica
    	reg [15:0] bit_sequence_din;  					// Almacenamos 16 bits para el registro dinámico
	reg [87:0] bit_sequence_stat;					// Almacenamos 89 bits para el registro estático

	// Asignación SECUENCIAL de CLK_uC para evitar dividir la frecuencia
	always @(posedge CLK or negedge RST_N) begin
		if(!RST_N) begin
			CLK_uC <= 0;
		end else if (current_state == DYN_READ || current_state == STATIC_READ) begin
			CLK_uC <= CLK_slow_original;
		end
	end	

	always @(posedge CLK or negedge RST_N) begin
		if(!RST_N) begin
			CLK_uC_2 <= 0;
			CLK_uC_3 <= 0;
			CLK_uC_4 <= 0;
			CLK_uC_5 <= 0;
			CLK_uC_6 <= 0;
			CLK_uC_6b <= 0;
			CLK_uC_6c <= 0;
			CLK_uC_6d <= 0;
			CLK_uC_6e <= 0;
			CLK_uC_6f <= 0;
			CLK_uC_6g <= 0;
			CLK_uC_6h <= 0;
			CLK_uC_6i <= 0;
			CLK_uC_6j <= 0;
			CLK_uC_6k <= 0;
			CLK_uC_6l <= 0;
/*
			CLK_uC_6m <= 0;
			CLK_uC_6n <= 0;
			CLK_uC_6o <= 0;
			CLK_uC_6p <= 0;
			CLK_uC_6q <= 0;
			CLK_uC_6r <= 0;
			CLK_uC_6s <= 0;
			CLK_uC_6t <= 0;
			CLK_uC_6u <= 0;
			CLK_uC_6v <= 0;
			CLK_uC_6w <= 0;
			CLK_uC_6x <= 0;
			CLK_uC_6y <= 0;
			CLK_uC_6z <= 0;
*/
			CLK_uC_7 <= 0;			
		end else begin
			CLK_uC_2 <= CLK_uC;
			CLK_uC_3 <= CLK_uC_2;
			CLK_uC_4 <= CLK_uC_3;
			CLK_uC_5 <= CLK_uC_4;
			CLK_uC_6 <= CLK_uC_5;
			CLK_uC_6b <= CLK_uC_6;
			CLK_uC_6c <= CLK_uC_6b;
			CLK_uC_6d <= CLK_uC_6c;
			CLK_uC_6e <= CLK_uC_6d;
			CLK_uC_6f <= CLK_uC_6e;
			CLK_uC_6g <= CLK_uC_6f;
			CLK_uC_6h <= CLK_uC_6g;
			CLK_uC_6i <= CLK_uC_6h;
			CLK_uC_6j <= CLK_uC_6i;
			CLK_uC_6k <= CLK_uC_6j;
			CLK_uC_6l <= CLK_uC_6k;
/*
			CLK_uC_6m <= CLK_uC_6l;
			CLK_uC_6n <= CLK_uC_6m;
			CLK_uC_6o <= CLK_uC_6n;
			CLK_uC_6p <= CLK_uC_6o;
			CLK_uC_6q <= CLK_uC_6p;
			CLK_uC_6r <= CLK_uC_6q;
			CLK_uC_6s <= CLK_uC_6r;
			CLK_uC_6t <= CLK_uC_6s;
			CLK_uC_6u <= CLK_uC_6t;
			CLK_uC_6v <= CLK_uC_6u;
			CLK_uC_6w <= CLK_uC_6v;
			CLK_uC_6x <= CLK_uC_6w;
			CLK_uC_6y <= CLK_uC_6x;
			CLK_uC_6z <= CLK_uC_6y;
*/
			CLK_uC_7 <= CLK_uC_6l;		
		end
	end

	// Asignación SECUENCIAL para flag_input
	always @(posedge CLK or negedge RST_N) begin
		if(!RST_N) begin
			flag_input_reg <= 0;
		end else begin
			flag_input_reg <= flag_input;
		end
	end

    	// Logica de transicion de estados (cambiar el estado)
    	always @(posedge CLK_slow_original or negedge RST_N) begin
        	if (!RST_N) begin
            		current_state <= IDLE; 				// Al reset, se va al estado IDLE
        	end else begin
            		current_state <= next_state; 			// Cambiar al siguiente estado
        	end
    	end

    	// Logica de transicion de estados (determinacion del siguiente estado)
    	always @(*) begin
        	case (current_state)
            		IDLE: next_state = (flag_input_reg == 1 && counter_idle >= N_CYCLES_IDLE-1) ? DYN_READ : IDLE;			// Desde IDLE paso a DYN_READ después de la espera de N_CYCLES_IDLE
            		DYN_READ: next_state = (counter_din == N_CYCLES_DYN_READ-1) ? STATIC_READ : DYN_READ;				// Desde DYN_READ paso a STATIC_READ después de la espera de N_CYCLES_DYN_READ
            		STATIC_READ: next_state = (counter_stat == N_CYCLES_STATIC_READ-1) ? INDEF_STATE : STATIC_READ;		// Desde STATIC_READ paso a INDEF_STATE después de la espera de N_CYCLES_STATIC_READ
			INDEF_STATE: next_state = INDEF_STATE;
            		default: next_state = IDLE;												// Default: Vuelve a IDLE
        	endcase
    	end

	// Logica para asignar valores a las salidas
	always @(posedge CLK_slow_original or negedge RST_N) begin
		if (!RST_N) begin
			SEL <= 0;
			MOSI <= 0;
			bit_sequence_din <= BIT_SEQUENCE_DIN_INIT; 
			bit_sequence_stat <= BIT_SEQUENCE_STAT_INIT;			
		end else begin
            	case (current_state)
			IDLE: begin
				SEL <= 0;
				MOSI <= 0;
				bit_sequence_din <= BIT_SEQUENCE_DIN_INIT; 
				bit_sequence_stat <= BIT_SEQUENCE_STAT_INIT;
			end
			DYN_READ: begin
				SEL <= 1;	
                    		// Desplazamos la secuencia y actualizamos la señal de salida
                    		MOSI <= bit_sequence_din[SIZESRDYN-1]; 					// El bit más significativo de la secuencia
                    		bit_sequence_din <= {bit_sequence_din[SIZESRDYN-2:0], 1'b0};  	// Desplazamos la secuencia a la izquierda
               	end
               	STATIC_READ: begin
				SEL <= 0;
                    		// Desplazamos la secuencia y actualizamos la señal de salida
                    		MOSI <= bit_sequence_stat[SIZESRSTAT-1]; 				// El bit más significativo de la secuencia							
                    		bit_sequence_stat <= {bit_sequence_stat[SIZESRSTAT-2:0], 1'b0};  	// Desplazamos la secuencia a la izquierda
               	end
			INDEF_STATE: begin									// Me tengo que quedar en este estado
				SEL <= 1;
				MOSI <= 0;
				bit_sequence_din <= BIT_SEQUENCE_DIN_INIT; 
				bit_sequence_stat <= BIT_SEQUENCE_STAT_INIT;
			end
               	default: begin
				SEL <= 0;
				MOSI <= 0;
				bit_sequence_din <= BIT_SEQUENCE_DIN_INIT; 
				bit_sequence_stat <= BIT_SEQUENCE_STAT_INIT;
               	end
            	endcase
        	end
    	end

    	// Contador para esperar en IDLE
    	always @(posedge CLK_slow_original or negedge RST_N) begin
       		if (!RST_N) begin
            		counter_idle <= 0; 							  		// Reset del contador
        	end else if (current_state == IDLE && counter_idle < N_CYCLES_IDLE) begin
            		counter_idle <= counter_idle + 1; 							// Incrementar el contador en IDLE
        	end else if (current_state != IDLE) begin
            		counter_idle <= 0; 									// Reset del contador cuando no estamos en IDLE
        	end
    	end

    	// Contador para esperar en DYN_READ
    	always @(posedge CLK_slow_original or negedge RST_N) begin
       		if (!RST_N) begin
            		counter_din <= 0; 							  		// Reset del contador
        	end else if (current_state == DYN_READ && counter_din < N_CYCLES_DYN_READ) begin
            		counter_din <= counter_din + 1; 							// Incrementar el contador en DYN_READ
        	end else if (current_state != DYN_READ) begin
            		counter_din <= 0; 									// Reset del contador cuando no estamos en DYN_READ
        	end
    	end

    	// Contador para esperar en STATIC_READ
    	always @(posedge CLK_slow_original or negedge RST_N) begin
       		if (!RST_N) begin
            		counter_stat <= 0; 							  		// Reset del contador
        	end else if (current_state == STATIC_READ && counter_stat < N_CYCLES_STATIC_READ) begin
            		counter_stat <= counter_stat + 1; 							// Incrementar el contador en STATIC_READ
        	end else if (current_state != STATIC_READ) begin
            		counter_stat <= 0; 									// Reset del contador cuando no estamos en STATIC_READ
        	end
    	end   

endmodule








