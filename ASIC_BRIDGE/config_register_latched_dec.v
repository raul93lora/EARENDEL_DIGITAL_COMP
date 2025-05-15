/*
* Modulo tomado del codigo que me pasa Piotr
* Este modulo toma el dato que le entra bit a bit en serie
* Dependiendo de si está seleccionado el registro dinamico o estatico
* se encola en uno u otro, después se selecciona el contrario y se
* vuelca sobre el LATCH correspondiente, dinámico o estático
*/
module config_register_latched_dec(
	CLK, 
	RST_N, 
	SEL, 
	SDI, 
	SDO, 
	STATCNF, 
	DYNCNF, 
	AMUXSEL, 
	STG2_EN, 
	STG1_EN, 
	ref_elec_en
);

	// Parameters configuration
	parameter SIZESRSTAT = 88; 			// Static shift register length
	parameter SIZESRDYN = 16; 			// Dynamic shift register length
	parameter SIZEADDRMUX = 7;

	// Port configuration
	input CLK; 					// system clock
	input RST_N; 					// assync reset
	input SEL; 					// shift enable
	input SDI; 					// serial data in
	output SDO; 					// serial data out
	reg SDO;

	// Latch register para el estático
	output [SIZESRSTAT-1:0] STATCNF;
	reg [SIZESRSTAT-1:0] STATCNF;
	reg [SIZESRSTAT-1:0] STATSR;

	// Latch register para el dinámico
	output [SIZESRDYN-1 : 0 ] DYNCNF;
	reg [SIZESRDYN-1 : 0 ] DYNCNF;
	reg [SIZESRDYN-1 : 0 ] DYNSR;

	// AMUXSEL
	output [2**SIZEADDRMUX-1:0] AMUXSEL;

	// Otros registros de enable
	output [15:0] STG2_EN;
	output [3:0] STG1_EN;
	output ref_elec_en;

	// Register AMUXSEL
	reg [2**SIZEADDRMUX-1:0] AMUXSEL;

	// Other registers
	reg [15:0] STG2_EN;
	reg [3:0] STG1_EN;
	reg ref_elec_en;

	// Señales para la definición del estático y dinámico
	wire [SIZESRSTAT-1:0] STATDEF;
	wire [SIZESRDYN-1 : 0 ] DYNDEF;

	// Shift register for static or dynamic depending on SEL
	always @ (posedge CLK or negedge RST_N)
	begin 
  	if (RST_N == 1'b0) begin   
		//     	SR <= {SIZESR{64'h123ABCDE}}; // we could actually load a default config here
     		DYNSR <= DYNDEF; // we could actually load a default config here
     		STATSR <= STATDEF;
  	end else begin
   		if(SEL) begin
   	  		DYNSR[0] <= SDI;
   	  		DYNSR[SIZESRDYN-1:1] <= DYNSR[SIZESRDYN-2:0];
   		end else begin
 	  		STATSR[0] <= SDI;
   	  		STATSR[SIZESRSTAT-1:1] <= STATSR[SIZESRSTAT-2:0];
   		end
  	end
	end

	// Output mux
	always @ (*) begin
		case (SEL) 
			1'b0: SDO <= STATSR[SIZESRSTAT-1];
			1'b1: SDO <= DYNSR[SIZESRDYN-1];
		endcase
	end

	// Shadow latches
	always @ (*) begin
		if (RST_N == 1'b0) begin   
	     		STATCNF <= STATDEF;
		end else begin
			if(SEL) begin
				STATCNF <= STATSR;	
			end
		end
	end

	always @ (*) begin
		if (RST_N == 1'b0) begin   
	     		DYNCNF <= DYNDEF;
		end else begin
			if(!SEL) begin
				DYNCNF <= DYNSR;	
			end
		end
	end

	// mux address decoder
	// update the mapping to include the case when all the electrodes are off
	always @ (*) begin
		AMUXSEL <= ( 1 & DYNCNF[SIZEADDRMUX]) << DYNCNF[SIZEADDRMUX-1:0];
	     	STG2_EN <= ( 1 & DYNCNF[SIZEADDRMUX])  << DYNCNF[SIZEADDRMUX-1:SIZEADDRMUX-4];
   		STG1_EN <= ( 1 & DYNCNF[SIZEADDRMUX])  << DYNCNF[SIZEADDRMUX-1:SIZEADDRMUX-2];
   		ref_elec_en <= !DYNCNF[SIZEADDRMUX] & |(DYNCNF[SIZEADDRMUX-1:0]);
	end

	// Asignaciones
	assign DYNDEF[7:0] = 8'b00000000; // mapped to: elec_en[7:0]
	assign DYNDEF[8:8] = 1'b0; // mapped to: en_fe1
	assign DYNDEF[9:9] = 1'b0; // mapped to: en_fe3
	assign DYNDEF[10:10] = 1'b0; // mapped to: en_shield_elec
	assign DYNDEF[11:11] = 1'b0; // mapped to: en_shield_pcb
	assign DYNDEF[12:12] = 1'b0; // mapped to: en_shield_ext
	assign DYNDEF[13:13] = 1'b0; // mapped to: en_biasing
	assign DYNDEF[15:14] = 2'b01; // mapped to: spare_dyn
	assign STATDEF[3:0] = 4'b0100; // mapped to: conf_ibias_OTA
	assign STATDEF[7:4] = 4'b0101; // mapped to: conf_ibias_VddR
	assign STATDEF[11:8] = 4'b0101; // mapped to: conf_ibias_miller
	assign STATDEF[15:12] = 4'b1010; // mapped to: conf_ibias_negR
	assign STATDEF[20:16] = 5'b10000; // mapped to: conf_ref1
	assign STATDEF[25:21] = 5'b11011; // mapped to: conf_ref2
	assign STATDEF[30:26] = 5'b10000; // mapped to: conf_ref3
	assign STATDEF[31:31] = 1'b0; // mapped to: fe_hp_mode
	assign STATDEF[32:32] = 1'b0; // mapped to: shield_gnd
	assign STATDEF[36:33] = 4'b0001; // mapped to: ipair_sh_elec
	assign STATDEF[40:37] = 4'b0001; // mapped to: ifcas_sh_elec
	assign STATDEF[43:41] = 3'b000; // mapped to: sh_boost_elec
	assign STATDEF[47:44] = 4'b0001; // mapped to: ipair_sh_pcb
	assign STATDEF[51:48] = 4'b0001; // mapped to: ifcas_sh_pcb
	assign STATDEF[54:52] = 3'b000; // mapped to: sh_boost_pcb
	assign STATDEF[58:55] = 4'b0001; // mapped to: ipair_sh_ext
	assign STATDEF[62:59] = 4'b0001; // mapped to: ifcas_sh_ext
	assign STATDEF[65:63] = 3'b000; // mapped to: sh_boost_ext
	assign STATDEF[66:66] = 1'b0; // mapped to: EnExtCap_ldo3V3
	assign STATDEF[67:67] = 1'b0; // mapped to: ENIx3_ldo3V3
	assign STATDEF[68:68] = 1'b0; // mapped to: ENIx5_ldo3V3
	assign STATDEF[78:69] = 10'b1111111111; // mapped to: spare_stat1
	assign STATDEF[87:79] = 9'b000000000; // mapped to: spare_stat0

endmodule

















