// WRITTEN BY MILO HARTSOE
// TEST WRITE: set values between test_sdram_driver_write_count and test_sdram_driver_write_highestval to their address
                                    call test_sdram_driver_write_test test_sdram_driver_write_ret
                                    halt

// RUN TEST AS FUNCTION

test_sdram_driver_write_test        cp test_sdram_driver_write_count test_sdram_driver_write_num0
test_sdram_driver_write_write_loop  blt test_sdram_driver_write_done_write test_sdram_driver_write_highestval test_sdram_driver_write_count
                                    cp sdram_driver_which_address test_sdram_driver_write_count
                                    cp sdram_driver_data_write test_sdram_driver_write_count
                                    call sdram_driver_write sdram_driver_return_IAR
                                    add test_sdram_driver_write_count test_sdram_driver_write_count test_sdram_driver_write_num1
                                    be test_sdram_driver_write_write_loop 0 0

test_sdram_driver_write_done_write  ret test_sdram_driver_write_ret



test_sdram_driver_write_count       0
test_sdram_driver_write_highestval  100
test_sdram_driver_write_num0        0
test_sdram_driver_write_num1        1
test_sdram_driver_write_num2        2
test_sdram_driver_write_ret         0




#include sdram_driver.e
