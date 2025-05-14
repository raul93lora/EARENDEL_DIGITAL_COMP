`timescale 1ns/1ps

module TB_serializer_mod;
    
    parameter N_ELECTRODES = 55;
    parameter CLK_PERIOD = 10; // 10ns -> 100MHz clock
    
    // Señales de prueba
    reg CLK;
    reg RST_N;
    reg enable_desp;
    reg [N_ELECTRODES-1:0] electr_config_in;
    wire sr_finish;
    wire enable_config;
    wire serial_out;
    
    // Instanciar el módulo serializer_mod
    serializer_mod #(
        .N_ELECTRODES(N_ELECTRODES)
    ) serializer_inst (
        .CLK(CLK),
        .RST_N(RST_N),
        .electr_config_in(electr_config_in),
        .enable_desp(enable_desp),
        .enable_config(enable_config),
        .sr_finish(sr_finish),
        .serial_out(serial_out)
    );
    
    // Generación de reloj
    initial begin
        CLK = 0;
        forever #(CLK_PERIOD/2) CLK = ~CLK;
    end
    
    // Proceso de test
    initial begin
        // Inicialización
        RST_N = 0;
        enable_desp = 0;
        electr_config_in = 55'h3AA55AA3FF; // Patrón de prueba
        
        #20 RST_N = 1; // Liberar reset
        
        #30 enable_desp = 1; // Habilitar el desplazamiento
        #10 enable_desp = 0; // Deshabilitar señal tras iniciar
        
        // Esperar a que termine la serialización
        wait (sr_finish == 1);
        
        #20;
        $display("Test finalizado");
        $stop;
    end
    
    // Monitoreo de la salida serial
    initial begin
        $monitor("Time: %0t | Serial Out: %b | Enable Config: %b | sr_finish: %b", 
                 $time, serial_out, enable_config, sr_finish);
    end
    
endmodule
