// WRITTEN BY MILO HARTSOE
// Call nb_speaker_driver_sound to make sound
// @Param: set nb_speaker_driver_sample_value to the sample value
// @Param: return IAR should be set to nb_speaker_driver_ret
// @Non-blocking signal: nb_speaker_driver_up_to_date is 0 when ready for new data, otherwise 1.

// NOTE: nb_speaker_driver_up_to_date is kind of redundant with nb_speaker_driver_my_flag_up, but allows for better interface

nb_speaker_driver_sample   be nb_speaker_driver_wait nb_speaker_driver_my_flag_up nb_speaker_driver_num1      // If my flag is up, don't copy new data.
                           be nb_speaker_driver_end 0x80000041 nb_speaker_driver_num1                 /// If my flag is down and the driver's flag is up, then return
                           cp 0x80000042 nb_speaker_driver_sample_value                       // Otherwise, my flag is down and driver's flag is down. So, you can use new data
                           cp 0x80000040 nb_speaker_driver_num1                              // Set my flag to up
                           cp nb_speaker_driver_my_flag_up nb_speaker_driver_num1            // Set my flag to up (variable my flag)
                           cp nb_speaker_driver_up_to_date nb_speaker_driver_num1            // No longer ready for new data (until this data is processed)
nb_speaker_driver_wait     be nb_speaker_driver_end nb_speaker_driver_num0 0x80000041
                           cp 0x80000040 nb_speaker_driver_num0                              // Set my flag to down
                           cp nb_speaker_driver_my_flag_up nb_speaker_driver_num0            // Set my flag to down (variable my flag)
                           cp nb_speaker_driver_up_to_date nb_speaker_driver_num0            // Ready for new data
nb_speaker_driver_end      ret nb_speaker_driver_ret

nb_speaker_driver_ret          0
nb_speaker_driver_num0         0
nb_speaker_driver_num1         1
nb_speaker_driver_sample_value 100000

nb_speaker_driver_my_flag_up   0
nb_speaker_driver_up_to_date   0    // 0 if ready for new data, otherwise 1.
