// WRITTEN BY MILO HARTSOE
// Play audio file from sdram. REQUIRES HAVING ALREADY LOADED
// @Param: play_audio_file_start is the start address of the audio file
// @Param: play_audio_file_end is the end address of the audio file
// @Param: play_audio_ret is the return IAR

play_audio_play_file
                                cp play_audio_current_address play_audio_file_start
                                cp 0x80000003 play_audio_current_address
play_audio_play_loop            blt play_audio_play_file_done play_audio_file_end play_audio_current_address
                                // Read data from sdram
                                cp sdram_driver_which_address play_audio_current_address
                                call sdram_driver_read sdram_driver_return_IAR
                                cp 0x80000003 play_audio_current_address
                                // Play data
                                cp speaker_driver_sample_value sdram_driver_data_read
                                call speaker_driver_sample speaker_driver_ret

                                // Increment
                                add play_audio_current_address play_audio_current_address play_audio_num1
                                be play_audio_play_loop 0 0
play_audio_play_file_done       ret play_audio_ret

// PARAMS
play_audio_file_start           2155560
play_audio_file_end             2232245
play_audio_ret                  0

// ITERATORS
play_audio_debug_var            13334
play_audio_current_address      0

// CONSTANTS
play_audio_num0                 0
play_audio_num1                 1
play_audio_num4                 4
play_audio_num5		             	5


// #include ../drivers/sdram_driver/sdram_driver.e
// #include ../drivers/speaker_driver/speaker_driver.e
