// WRITTEN BY MILO HARTSOE
// @PARAM: text_to_speech_return - return IAR
// @PARAM: text_to_speech_word_ptr - pointer to space terminated word

text_to_speech_talk                 // Find word
                                    // FOR NOW, always load. TODO: only load the first time.
                                    cp load_audio_sdram_begin text_to_speech_audio_sdram_begin
                                    cp load_audio_sdram_end text_to_speech_audio_sdram_end
                                    call load_audio_sdram_load load_audio_sdram_ret
                                    cp binary_search_sd_search_word_pointer text_to_speech_word_ptr
                                    call binary_seach_sd_search binary_search_sd_ret
                                    cp 0x80000003 binary_search_sd_middle_address
                                    // check word is found (validate binary_search_sd_middle_address)
                                    bne text_to_speech_end binary_search_sd_did_find_word text_to_speech_num1
                                    // Play series of audio files
                                    cp text_to_speech_sd_current_address binary_search_sd_middle_address
text_to_speech_play_audio           // Get ARPABET letter code (Stop when endline is reached)
                                    add text_to_speech_sd_current_address text_to_speech_sd_current_address text_to_speech_num1
                                    cp sd_which_address text_to_speech_sd_current_address
                                    call sd_makeread sd_return_IAR
                                    //cp 0x80000003 sd_data_read         // FOR DEBUGGING. LETTER DATA
                                    be text_to_speech_end sd_data_read text_to_speech_ascii_newline
                                    cp text_to_speech_arpabet_code sd_data_read
                                    // Lookup start and end address of letter on sd
                                    // Play audio file from sd
                                    // Lookup array should have start: speaking_audio_data_lookup
                                    sub text_to_speech_arpabet_code text_to_speech_arpabet_code text_to_speech_arpabet_start_code
                                    cpfa play_audio_file_start speaking_audio_data_lookup text_to_speech_arpabet_code
                                    add text_to_speech_arpabet_code text_to_speech_arpabet_code text_to_speech_num1
                                    cpfa play_audio_file_end speaking_audio_data_lookup text_to_speech_arpabet_code
                                    call play_audio_play_file play_audio_ret
                                    be text_to_speech_play_audio 0 0
text_to_speech_end                  ret text_to_speech_return

text_to_speech_debug_var            -1338
text_to_speech_sd_current_address   0
text_to_speech_arpabet_code         0
text_to_speech_word_ptr             text_to_speech_word

// RETURN IAR
text_to_speech_return               0

// CONSTANTS
text_to_speech_ascii_newline        10
text_to_speech_arpabet_start_code   129     // Should be same as in parser
text_to_speech_num1                 1
text_to_speech_num2                 2

text_to_speech_audio_sdram_begin    2155560
text_to_speech_audio_sdram_end      2232245

text_to_speech_word                 65
                                    66
                                    65
                                    78
                                    68
                                    79
                                    78
                                    32

#include binary_search_sd.e
// #include ../drivers/sd_driver/sd.e   // INCLUDED BY binary_search_SD.e
                                        // SHOULD THIS BE NON BLOCKING DRIVER? Used for getting which ARPABET letter
#include ../play_audio/play_audio_sdram.e
#include speaking_audio_data.e
#include ../sdram_audio/load_audio_sdram.e
