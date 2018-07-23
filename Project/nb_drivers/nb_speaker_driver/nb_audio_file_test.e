// WRITTEN BY MILO HARTSOE
nb_audio_file_test_play         be nb_audio_file_test_end nb_audio_file_test_count nb_audio_length_audio_data
                                bne nb_audio_file_call_speaker nb_speaker_driver_up_to_date nb_audio_file_test_num0       // Check if nonblocking audio driver is ready for new data
                                add nb_audio_file_test_count nb_audio_file_test_count nb_audio_file_test_num1
                                cpfa nb_speaker_driver_sample_value nb_audio_data nb_audio_file_test_count
nb_audio_file_call_speaker      call nb_speaker_driver_sample nb_speaker_driver_ret
                                be nb_audio_file_test_play 0 0



nb_audio_file_test_end          halt

nb_audio_file_test_num0           0
nb_audio_file_test_num1           1
nb_audio_length_audio_data        4000
nb_audio_file_test_count          0

#include nb_audio.e
#include nb_speaker_driver.e
