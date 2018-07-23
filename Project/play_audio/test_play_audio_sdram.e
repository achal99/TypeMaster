// WRITTEN BY MILO HARTSOE
test_play_audio_sdram_start         cp 0x80000003 test_play_audio_sdram_num9
                                    cp load_audio_sdram_begin test_play_audio_sdram_begin
                                    cp load_audio_sdram_end test_play_audio_sdram_end
                                    call load_audio_sdram_load load_audio_sdram_ret

                                    cp play_audio_file_start test_play_audio_sdram_begin
                                    cp play_audio_file_end test_play_audio_sdram_end
                                    call play_audio_play_file play_audio_ret
                                    halt

test_play_audio_sdram_num9          9
test_play_audio_sdram_begin         2155560
test_play_audio_sdram_end           2232245


#include ../drivers/sd_driver/sd.e
#include play_audio_sdram.e
#include ../sdram_audio/load_audio_sdram.e
