// WRITTEN BY MILO HARTSOE
                                    cp binary_search_sd_search_word_pointer test_binary_search_sd_word_ptr
                                    call binary_seach_sd_search binary_search_sd_ret
                                    cp 0x80000003 binary_search_sd_middle_address
                                    halt

test_binary_search_sd_word_ptr      test_binary_search_sd_word
test_binary_search_sd_word          65
                                    32

#include binary_search_sd.e
