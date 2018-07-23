// WRITTEN BY MILO HARTSOE
// Call speaker_driver_sound to make sound
// @Param: set speaker_driver_sample_value to the sample value
// @Param: return IAR should be set to speaker_driver_ret
speaker_driver_sample   cp 0x80000042 speaker_driver_sample_value
                        cp 0x80000040 speaker_driver_num1
speaker_driver_wait     be speaker_driver_wait speaker_driver_num0 0x80000041
                        cp 0x80000040 speaker_driver_num0
speaker_driver_wait_r   be speaker_driver_wait_r speaker_driver_num1 0x80000041
                        ret speaker_driver_ret

speaker_driver_ret          0
speaker_driver_num0         0
speaker_driver_num1         1
speaker_driver_sample_value 100000
