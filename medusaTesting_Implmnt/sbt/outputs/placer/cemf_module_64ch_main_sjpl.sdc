create_clock -period 62.50 -name {clock} -waveform [list 0.00 31.25] [get_ports clock]
create_clock -period 1000.00 -name {cemf_module_64ch_main|scl} -waveform [list 0.00 500.00] [get_ports scl]
