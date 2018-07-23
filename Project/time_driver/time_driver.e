// WRITTEN BY MAC YOUNG
// NO PARAM
// @RESPONSE - read_time - read in the current time, goes up by 1 number every 8000th of a second
// @RESPONSE - time_driver_return   - return here when you call the driver



time_driver_begin	cp		read_time		0x80000005
					ret 	time_driver_return


// VARIABLES
read_time 		0
time_driver_return  	0
