// WRITTEN BY MILO HARTSOE
// TEST READ: check values between test_sdram_driver_read_count and test_sdram_driver_read_highestval are their addresses
                                    cp test_sdram_driver_read_count test_sdram_driver_read_num0
                                    // USE test_sdram_driver_write.e
                                    call test_sdram_driver_write_test test_sdram_driver_write_ret

test_sdram_driver_read_read_loop    blt test_sdram_driver_read_done_read test_sdram_driver_read_highestval test_sdram_driver_read_count
                                    cp sdram_driver_which_address test_sdram_driver_read_count
                                    call sdram_driver_read sdram_driver_return_IAR
                                    cp 0x80000001 test_sdram_driver_read_count
                                    bne test_sdram_driver_read_failure sdram_driver_data_read test_sdram_driver_read_count
                                    add test_sdram_driver_read_count test_sdram_driver_read_count test_sdram_driver_read_num1
                                    be test_sdram_driver_read_read_loop 0 0

test_sdram_driver_read_done_read    halt
test_sdram_driver_read_failure      cp 0x80000001 test_sdram_driver_read_num1 // Set RED LED to 1 if failure
                                    halt



test_sdram_driver_read_count       0
test_sdram_driver_read_highestval  100
test_sdram_driver_read_num0        0
test_sdram_driver_read_num1        1
test_sdram_driver_read_num2        2




// #include sdram_driver.e // included be test_sdram_driver_write.e
#include test_sdram_driver_write.e
