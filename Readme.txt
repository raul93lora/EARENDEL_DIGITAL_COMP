
Branches in the CEMF_MODULE_64CH repository:

cemf_64ch_dma_monitoring
------------------------
Taking the last datapack of the cemf_module_v2 branch, a modification is made 
to pass SPI pins through electrodes. Firmware team request.

cemf_module_64ch_v1
---------------------
This branch was developed before Juan José arrival and I don't know if longer used.
I recommend to delete it if it is outdated.

cemf_module_v2
---------------
cemf_module_v2 branch fixes small errors found in cemf_module_64ch_v1, like the apperance of latches.

It also has the last generated datapack in the commit:

Revision: af36d04c82a355136a3eb49bc6fd179b71ad2d72
Author: Juan José Montes Salinero <juanjose.montes@ontech.local>
Date: 16/02/2024 14:39:49
Message:
cemf_module_64ch_fsm_average:
The sync frame signal behavior has been modified for external trigger operation and load of elec config data.
cemf_module_64ch_fsm_mux:
The load of elec config data has been modified to improve the synchronization with elec config of FPGA1.
----
Modified: FPGA1/src/cemf_module_64ch_fsm_average.v
Modified: FPGA2/src/cemf_module_64ch_fsm.v

cemf_module_v3
---------------
cemf_module_v3 is modified to improve the functionality of v2. For example, use of parameters instead 
of magic numbers. New I2C module. New constraints for synthesis.
It has been tested by the firmware team and it works.
However, it needs to be tested and validated before generating a new datapack.

master
------

The master branch contains the last datapack generated for this project.
035000057 - DataPack
035000058 - DataPack

Also, it contains an alternative project where the FPGAs act as a master (CEMF_MODULE_64CH_MASTER folder).

