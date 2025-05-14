####---- CreateClock list ----2
create_clock  -period 62.50 -waveform {0.00 31.25} -name {clock} [get_ports {clock}] 
create_clock  -period 1000.00 -waveform {0.00 500.00} -name {cemf_module_64ch_main|scl} [get_ports {scl}] 

