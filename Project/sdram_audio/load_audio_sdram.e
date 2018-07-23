// WRITTEN BY MILO HARTSOE
// Load the audio between load_audio_sdram_begin and load_audio_sdram_end from sd card to sdram
// @PARAM: load_audio_sdram_begin start address
// @PARAM: load_audio_sdram_end end addresss
// @PARAM: load_audio_sdram_ret is the return IAR

load_audio_sdram_load                 cp load_audio_sdram_current_address load_audio_sdram_begin
load_audio_sdram_next                 blt load_audio_sdram_done_load load_audio_sdram_end load_audio_sdram_current_address
                                      cp sd_which_address load_audio_sdram_current_address
                                      call sd_makeread sd_return_IAR
                                      cp sdram_driver_data_write sd_data_read
                                      cp sdram_driver_which_address load_audio_sdram_current_address
                                      call sdram_driver_write sdram_driver_return_IAR
                                      add load_audio_sdram_current_address load_audio_sdram_current_address load_audio_sdram_num1
                                      be load_audio_sdram_next 0 0

load_audio_sdram_done_load            ret load_audio_sdram_ret

// PARAMS
load_audio_sdram_begin                2155560
load_audio_sdram_end                  2232245
load_audio_sdram_ret                  0

// ITERATOR
load_audio_sdram_current_address      0

// VARS
load_audio_sdram_data_to_write        0

// CONSTANTS
load_audio_sdram_num1                 1


// #include ../drivers/sd_driver/sd.e // load_audio is used by text_to_speech which already includes sd from binary_search
// #include ../drivers/sdram_driver/sdram_driver.e // play_audio_sdram uses sdram_driver.
