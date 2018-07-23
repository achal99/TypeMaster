// WRITTEN BY MILO HARTSOE
// Play audio file from sdram. REQUIRES HAVING ALREADY LOADED
// @Param: nb_play_audio_sdram_current_address is the start address of the audio file
// @Param: nb_play_audio_sdram_file_end is the end address of the audio file
// @Param: nb_play_audio_sdram_ret is the return IAR

nb_play_audio_sdram_play_file
                                cp 0x80000003 nb_play_audio_sdram_current_address
nb_play_audio_sdram_play_loop   bne nb_play_audio_sdram_read_sdram nb_play_audio_sdram_file_end nb_play_audio_sdram_current_address
                                cp nb_play_audio_sdram_current_address nb_play_audio_sdram_file_start
nb_play_audio_sdram_read_sdram  // Read data from sdram
                                cp sdram_driver_which_address nb_play_audio_sdram_current_address
                                call sdram_driver_read sdram_driver_return_IAR
                                cp 0x80000003 nb_play_audio_sdram_current_address
                                // Play data
                                cp speaker_driver_sample_value sdram_driver_data_read
                                call speaker_driver_sample speaker_driver_ret

                                // Increment
                                add nb_play_audio_sdram_current_address nb_play_audio_sdram_current_address nb_play_audio_sdram_num1
                                //be nb_play_audio_sdram_play_loop 0 0
nb_play_audio_sdram_play_file_done       ret nb_play_audio_sdram_ret

// PARAMS
nb_play_audio_sdram_file_end             2505672
nb_play_audio_sdram_file_start           2232245
nb_play_audio_sdram_ret                  0

// ITERATORS
nb_play_audio_sdram_debug_var            13334
nb_play_audio_sdram_current_address      2232245

// CONSTANTS
nb_play_audio_sdram_num0                 0
nb_play_audio_sdram_num1                 1
nb_play_audio_sdram_num4                 4
nb_play_audio_sdram_num5		             5


#include ../drivers/sdram_driver/sdram_driver.e
#include ../drivers/speaker_driver/speaker_driver.e
