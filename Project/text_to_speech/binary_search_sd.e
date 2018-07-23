// WRITTEN BY MILO HARTSOE
// binary_seach_sd_search function: Binary search for word1 in sd card
// @PARAM: binary_search_sd_search_word_pointer - pointer to the start of the word that is space (ASCII 32) terminated
// @PARAM: binary_search_sd_START_ADDRESS - start address of file to binary search
// @PARAM: binary_search_sd_END_ADDRESS - end address of file to binary search
// @RETURN: if found binary_search_sd_middle_address will be the address of the space after the word found.

// LED USE: set 0x80000003 to 0 will running.
// set 0x80000003 to 2 if word not found.
// set 0x80000003 to 3 if word is found.
// CHANGE LATER IF NEEDED. TODO

// Longest word in dictionary length is 34. buffer sizeof binary_search_sd_search_word is 40. Only concern if copy to this buffer.
// BE CAREFUL TAKING USER INPUT INTO THIS BUFFER. Could cause issues. TODO

binary_seach_sd_search                cp 0x80000003 binary_search_sd_num0 // DEBUGGING set to 0
                                      cp binary_search_sd_did_find_word binary_search_sd_num0
                                      cp binary_search_sd_start_address binary_search_sd_START_ADDRESS
                                      cp binary_search_sd_end_address binary_search_sd_END_ADDRESS
binary_search_sd_find                 blt binary_search_sd_not_found_word binary_search_sd_end_address binary_search_sd_start_address
                                      sub binary_search_sd_middle_address binary_search_sd_end_address binary_search_sd_start_address
                                      div binary_search_sd_middle_address binary_search_sd_middle_address binary_search_sd_num2
                                      add binary_search_sd_middle_address binary_search_sd_middle_address binary_search_sd_start_address
                                      // Go backward till newline (ASCII 10)
                                      cp 0x80000001 binary_search_sd_debug_count
                                      add binary_search_sd_debug_count binary_search_sd_debug_count binary_search_sd_num1
binary_search_sd_backward_to_newline
                                      cp sd_which_address binary_search_sd_middle_address
                                      call sd_makeread sd_return_IAR
                                      be binary_search_sd_backward_to_n_end sd_data_read binary_search_sd_ascii_newline
                                      sub binary_search_sd_middle_address binary_search_sd_middle_address binary_search_sd_num1
                                      blt binary_search_sd_backward_to_n_end binary_search_sd_middle_address binary_search_sd_START_ADDRESS
                                      be binary_search_sd_backward_to_newline 0 0
binary_search_sd_backward_to_n_end
                                      add binary_search_sd_middle_address binary_search_sd_middle_address binary_search_sd_num1
                                      cp binary_search_sd_search_word_it binary_search_sd_search_word_pointer
                                      // Read and compare till space (ASCII 32)
binary_search_sd_read_and_cmp         cp sd_which_address binary_search_sd_middle_address
                                      call sd_makeread sd_return_IAR
                                      cp binary_search_sd_letter_from_sd sd_data_read
                                      cpfa binary_search_sd_search_word_letter 0 binary_search_sd_search_word_it
                                      sub binary_search_sd_string_diff binary_search_sd_letter_from_sd binary_search_sd_search_word_letter
                                      bne binary_search_sd_read_and_cmp_end binary_search_sd_string_diff binary_search_sd_num0
                                      be binary_search_sd_read_and_cmp_end binary_search_sd_search_word_letter binary_search_sd_ascii_space
                                      add binary_search_sd_search_word_it binary_search_sd_search_word_it binary_search_sd_num1
                                      add binary_search_sd_middle_address binary_search_sd_middle_address binary_search_sd_num1
                                      be binary_search_sd_read_and_cmp 0 0
binary_search_sd_read_and_cmp_end     be binary_search_sd_found_word binary_search_sd_string_diff binary_search_sd_num0
binary_search_sd_check_to_switch_lin  sub binary_search_sd_end_minus_start_add binary_search_sd_end_address binary_search_sd_start_address
                                      blt binary_search_sd_linear_search binary_search_sd_end_minus_start_add binary_search_sd_switch_ls_constant
                                      blt binary_search_sd_check_right binary_search_sd_string_diff binary_search_sd_num0
binary_search_sd_check_left           sub binary_search_sd_end_address binary_search_sd_middle_address binary_search_sd_num1
                                      be binary_search_sd_find 0 0
binary_search_sd_check_right          add binary_search_sd_start_address binary_search_sd_middle_address binary_search_sd_num1
                                      be binary_search_sd_find 0 0

                                      // LINEAR SEARCH
binary_search_sd_linear_search        cp 0x80000002 binary_search_sd_num1 // DEBUGGING set to 1
                                      cp binary_search_sd_debug_variable binary_search_sd_num1
                                      blt binary_search_sd_not_found_word binary_search_sd_end_address binary_search_sd_start_address
                                      // Go forward till newline
binary_search_sd_go_forward           cp sd_which_address binary_search_sd_start_address
                                      call sd_makeread sd_return_IAR
                                      be binary_search_sd_lin_s_comp_start sd_data_read binary_search_sd_ascii_newline
                                      add binary_search_sd_start_address binary_search_sd_start_address binary_search_sd_num1
                                      blt binary_search_sd_not_found_word binary_search_sd_end_address binary_search_sd_start_address
                                      be binary_search_sd_go_forward 0 0
                                      // add one to get past newline
binary_search_sd_lin_s_comp_start     add binary_search_sd_start_address binary_search_sd_start_address binary_search_sd_num1
                                      // Check if equal
                                      cp binary_search_sd_search_word_it binary_search_sd_search_word_pointer
binary_search_sd_lin_s_compare        cp sd_which_address binary_search_sd_start_address
                                      call sd_makeread sd_return_IAR
                                      cp binary_search_sd_letter_from_sd sd_data_read
                                      cpfa binary_search_sd_search_word_letter 0 binary_search_sd_search_word_it
                                      sub binary_search_sd_string_diff binary_search_sd_letter_from_sd binary_search_sd_search_word_letter
                                      bne binary_search_sd_linear_search binary_search_sd_string_diff binary_search_sd_num0
                                      be binary_search_sd_found_linear_word binary_search_sd_search_word_letter binary_search_sd_ascii_space
                                      add binary_search_sd_search_word_it binary_search_sd_search_word_it binary_search_sd_num1
                                      add binary_search_sd_start_address binary_search_sd_start_address binary_search_sd_num1
                                      be binary_search_sd_lin_s_compare 0 0
binary_search_sd_lin_s_compare_end

binary_search_sd_not_found_word       cp 0x80000004 binary_search_sd_num2 // DEBUGGING set to 2
                                      cp binary_search_sd_did_find_word binary_search_sd_num0
                                      ret binary_search_sd_ret
binary_search_sd_found_linear_word    cp binary_search_sd_middle_address binary_search_sd_start_address
binary_search_sd_found_word           cp 0x80000004 binary_search_sd_num3 // DEBUGGING set to 3
                                      cp binary_search_sd_did_find_word binary_search_sd_num1
binary_search_sd_end                  ret binary_search_sd_ret



binary_search_sd_START_ADDRESS        0
binary_search_sd_END_ADDRESS          2155560
binary_search_sd_start_address        0
binary_search_sd_end_address          0
binary_search_sd_middle_address       0
binary_search_sd_end_minus_start_add  0

// RETURN VAR
binary_search_sd_ret                  0

binary_search_sd_did_find_word        0   // 1 if found word

// VARS for comparing strings
binary_search_sd_debug_variable       1337
binary_search_sd_string_diff          0
binary_search_sd_letter_from_sd       0
binary_search_sd_search_word_it       binary_search_sd_search_word
binary_search_sd_search_word_letter   0
binary_search_sd_debug_count          1

// CONSTANTS
binary_search_sd_num0                 0
binary_search_sd_num1                 1
binary_search_sd_num2                 2
binary_search_sd_num3                 3
binary_search_sd_ascii_space          32
binary_search_sd_ascii_newline        10
binary_search_sd_switch_ls_constant   1290         // 10 * cat filename|awk '{print length, $0}'|sort -nr|head -1

binary_search_sd_search_word_pointer  binary_search_sd_search_word
binary_search_sd_search_word          65        // Buffer size 40
                                      32
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
                                      0
#include ../drivers/sd_driver/sd.e
