// WRITTEN BY MILO HARTSOE
// READ DATA (sdram_driver_makeread)
// @PARAM: sdram_driver_which_address is the address
// @PARAM: sdram_driver_return_IAR is the return IAR
// @RESPONSE: sdram_driver_data_read is the data read from sdram

sdram_driver_read           cp 0x80000032 sdram_driver_num0
                            cp 0x80000033 sdram_driver_which_address
                            cp 0x80000030 sdram_driver_num1
sdram_driver_read_wait      be sdram_driver_read_wait 0x80000031 sdram_driver_num0
                            cp sdram_driver_data_read 0x80000035
                            cp 0x80000030 sdram_driver_num0
sdram_driver_read_wait_r    be sdram_driver_read_wait_r 0x80000031 sdram_driver_num1
                            ret sdram_driver_return_IAR


// WRITE DATA (sdram_driver_write)
// @PARAM: sdram_driver_which_address is the address
// @PARAM: sdram_driver_data_write is the data to write to sdram
// @PARAM: sdram_driver_return_IAR is the return IAR

sdram_driver_write          cp 0x80000032 sdram_driver_num1
                            cp 0x80000033 sdram_driver_which_address
                            cp 0x80000034 sdram_driver_data_write
                            cp 0x80000030 sdram_driver_num1
sdram_driver_write_wait     be sdram_driver_write_wait 0x80000031 sdram_driver_num0
                            cp 0x80000030 sdram_driver_num0
sdram_driver_write_wait_r   be sdram_driver_write_wait_r 0x80000031 sdram_driver_num1
                            ret sdram_driver_return_IAR




//constants
sdram_driver_debug_var            14337
sdram_driver_num0                 0
sdram_driver_num1                 1
sdram_driver_which_address        0 // change later in driver
sdram_driver_data_read         	  0 // should change to whatever was read by sdram_driver card
sdram_driver_data_write           0
sdram_driver_return_IAR           0
