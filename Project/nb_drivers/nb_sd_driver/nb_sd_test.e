// WRITTEN BY MILO HARTSOE AND ARJUN CHALIHA
      	  cp nb_sd_which_address nb_sd_test_count
loop      be end nb_sd_test_count nb_sd_test_highestval
caller    call nb_sd_makeread nb_sd_return_IAR
					// Check if there is new data
					bne loop nb_sd_data_updated nb_sd_test_num1
					cp 0x80000001 nb_sd_data_read
					add nb_sd_test_count nb_sd_test_count nb_sd_test_num1
init1     cp nb_sd_which_address nb_sd_test_count
					be loop 0 0
end       halt



nb_sd_test_count       0
nb_sd_test_highestval  1310700
nb_sd_test_num1        1



#include nb_sd.e
