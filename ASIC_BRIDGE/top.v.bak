/*
* Raul Lora Rivera - pll test rapido
* TOP.v
*/
module top(
	CLK,		
	RST_N,
	clk_output,
	mosi_output,
	sel_output,
	//flag_signal_out,
	miso_input,					// Para simulacion quita esta linea
	//s15,						// Para simulacion quita esta linea
	s14,						// Para simulacion quita esta linea
	s13,						// Para simulacion quita esta linea
	s12,						// Para simulacion quita esta linea
	xor_out_dyn,					// Salida comparacion dynamic reg
	xor_out_stat					// Salida comparacion static reg
);

	// Parameters definition
	parameter SIZESRSTAT = 88; 		// Static shift register length 
	parameter SIZESRDYN = 16; 			// Dynamic shift register length
	parameter SIZEADDRMUX = 7;

	// Ports definition
	input wire CLK;
	input wire RST_N;
	input wire miso_input;
	output wire clk_output;
	output wire mosi_output;
	output wire sel_output;
	//output wire flag_signal_out;
	//output wire s15;
	output wire s14;
	output wire s13;
	output wire s12;
	output wire xor_out_dyn;
	output wire xor_out_stat;
	wire clk_pll;
	wire clk_pll_continuous;
	wire clk_continuous_slow;
	wire clk_continuous_fast;
	wire clk_out_slow;
	wire clk_out_fast;
	wire mosi;
	wire mosi_slow;
	wire mosi_fast;
	wire aux_selection;
	wire aux_selection_slow;
	wire aux_selection_fast;
	wire clk_output_aux;
	wire mosi_output_aux;
	wire sel_output_aux;

	wire signal_sdo;

	// Señal de latchinput para controlar el gating a la salida
	wire latch_input;

	// Señal de flag para activar la segunda máquina de estados
	wire flag_signal;

	// Pongo DYNLATCH y STATLATCH como wire, en vez de como output, ya que si no hay que asignar todos los bits de cada uno a los pines .pcf correspondientes 
	wire [SIZESRDYN-1:0] DYNLATCH;
	wire [SIZESRSTAT-1:0] STATLATCH;  

	wire [SIZESRDYN-1:0] DYNCNF;
	wire [SIZESRSTAT-1:0] STATCNF;

	// Instancio PLL con dos puertos (el A que permite el gating, y el B que saca un reloj continuo)
	top_pll top_pll_inst(
		.REFERENCECLK(CLK),
		.PLLOUTCORE(),
		.PLLOUTGLOBAL(clk_pll),
		.RESET(RST_N)
	);

	// Instanciación del divisor de frecuencia con un factor de 4
	freq_div #(.DIVISOR(8)) divisor_inst (
		.clk_in(clk_pll),
		.RST_N(RST_N),
		.clk_out(clk_continuous_fast)
	);

	// Instancio FSM_TEST para activar/desactivar reloj lento
	FSM_TEST_RAPIDA #(
		.BIT_SEQUENCE_DIN_INIT(16'h4321),    			// Valor personalizado para el registro dinámico
		.BIT_SEQUENCE_STAT_INIT(88'hFEDCBA9876543210012345)  // Valor personalizado para el registro estático
    	) FSM_TEST_inst_RAPIDA(
		.CLK(clk_pll),					// Rápido continuo
		.CLK_slow_original(clk_continuous_fast),		// Lento continuo, salida del divisor de frecuencia
		.CLK_uC_7(clk_out_fast),					// Salida del lento, sólo activo en los estados correspondientes
		.RST_N(RST_N),
		.SEL(aux_selection_fast),
		.flag_input(1),
		.flag_output(flag_signal),
		.MOSI(mosi_fast)
	);

	// Instanciación del divisor de frecuencia con un factor de 4
	freq_div #(.DIVISOR(16)) divisor_inst_2 (
		.clk_in(clk_pll),
		.RST_N(RST_N),
		.clk_out(clk_continuous_slow)
	);

	// Instancio FSM_TEST para activar/desactivar reloj lento
	FSM_TEST_slow #(
		.BIT_SEQUENCE_DIN_INIT(16'hABCD),    			// Valor personalizado para el registro dinámico
		.BIT_SEQUENCE_STAT_INIT(88'h123456789ABCDEF1234567)  // Valor personalizado para el registro estático
    	) FSM_TEST_inst_slow(
		.CLK(clk_pll),					// Rápido continuo
		.CLK_slow_original(clk_continuous_slow),		// Lento continuo, salida del divisor de frecuencia
		.CLK_uC_7(clk_out_slow),					// Salida del lento, sólo activo en los estados correspondientes
		.RST_N(RST_N),
		.SEL(aux_selection_slow),
		.flag_input(flag_signal),
		.MOSI(mosi_slow)
	);

	// Selección entre escritura rápida o lenta
	assign clk_output = flag_signal ? clk_out_slow : clk_out_fast;
	assign mosi_output = flag_signal ? mosi_slow : mosi_fast;
	assign sel_output = flag_signal ? aux_selection_slow : aux_selection_fast;
	//assign s14 = aux_selection_slow;
	//assign s13 = aux_selection;

	assign clk_output_aux = (flag_signal) ? clk_out_slow : clk_out_fast;
	assign mosi_output_aux = (flag_signal) ? mosi_slow : mosi_fast;
	assign sel_output_aux = (flag_signal) ? aux_selection_slow : aux_selection_fast;

	assign flag_signal_out = flag_signal;

	// Modulo emulador de recepción del chip de Earendel
	config_register_latched_dec config_register_latched_dec_inst(
		.CLK(clk_output_aux), 
		.RST_N(RST_N), 
		.SEL(sel_output_aux), 
		.SDI(miso_input), 
		//.SDI(mosi_output_aux),      // simulacion y test en la misma placa
		.SDO(signal_sdo), 
		.STATCNF(STATCNF), 
		.DYNCNF(DYNCNF), 
		.AMUXSEL(), 
		.STG2_EN(), 
		.STG1_EN(), 
		.ref_elec_en()
	);

	// Instancia del módulo XOR dyn
	xor_n_bits #(.N(16)) xor_instance_dyn (
		.a(16'h4321),
		.b(DYNCNF),
		.result(xor_out_dyn)
	);

	// Instancia del módulo XOR stat
	xor_n_bits #(.N(88)) xor_instance_stat (
		.a(88'hFEDCBA9876543210012345),
		.b(STATCNF),
		.result(xor_out_stat)
	);

	// Asignaciones para la salida	
	//assign s15 = DYNCNF[7];
	assign s14 = DYNCNF[10];
	assign s13 = DYNCNF[9];
	assign s12 = DYNCNF[8];

/*
	assign s15 = STATCNF[3];
	assign s14 = STATCNF[2];
	assign s13 = STATCNF[1];
	assign s12 = STATCNF[0];
*/


endmodule























