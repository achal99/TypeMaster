// WRITTEN BY MILO HARTSOE
audio_file_play   be audio_file_end audio_file_count length_audio_data
                  cpfa speaker_driver_sample_value audio_data audio_file_count
                  call speaker_driver_sample speaker_driver_ret
                  add audio_file_count audio_file_count audio_file_num1
                  be audio_file_play 0 0



audio_file_end    halt

audio_file_num1   1
length_audio_data 4000
audio_file_count  0
#include audio.e
#include speaker_driver.e
