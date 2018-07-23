// WRITTEN BY MILO HARTSOE
// Check if two strings are equal (till space (ASCII 32)) (sentinel is space)
// NOTE: CAN CAUSE OVERFLOW for strings over 100 characters
// @Param: strings_equal_letter_it_1 and strings_equal_letter_it_2 - addresses of string1 and string2 start
// @Param: strings_equal_return - return IAR
// @Return: strings_equal_difference - that is 0 if equal
strings_equal_compare_strs                        cpfa strings_equal_letter_1 0 strings_equal_letter_it_1
                                                  cpfa strings_equal_letter_2 0 strings_equal_letter_it_2
                                                  sub strings_equal_difference strings_equal_letter_1 strings_equal_letter_2
                                                  bne strings_equal_compare_strs_end strings_equal_difference strings_equal_num0
                                                  be strings_equal_compare_strs_end strings_equal_letter_1 strings_equal_space
                                                  add strings_equal_letter_it_1 strings_equal_letter_it_1 strings_equal_num1
                                                  add strings_equal_letter_it_2 strings_equal_letter_it_2 strings_equal_num1
                                                  be strings_equal_compare_strs 0 0
strings_equal_compare_strs_end                    ret strings_equal_return

strings_equal_variable_start                      1337
strings_equal_difference                          0
strings_equal_return                              0
strings_equal_letter_1                            97
strings_equal_letter_2                            97
strings_equal_letter_it_1                         strings_equal_string1
strings_equal_letter_it_2                         strings_equal_string2

// CONSTANTS
strings_equal_space                               32
strings_equal_num0                                0
strings_equal_num1                                1

strings_equal_string1                             32     // END WITH SPACE
strings_equal_string2                             32     // END WITH SPACE
