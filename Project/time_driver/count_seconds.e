// WRITTEN BY MAC YOUNG
// @PARAM count_sec_begin	- begin function
// @RESP ticker - value is 1 if a second just passed, value is 0 if a second did not pass
// @PARAM count_sec_ret - return here when finished

count_sec_begin	cp		ticker					count_seconds_num0
				call 	time_driver_begin		time_driver_return
				cp		read_time1				read_time
				call	time_driver_begin		time_driver_return
				cp		read_time2				read_time
				be 		count_same_time		 	read_time1					read_time2
				cp		ticker					count_seconds_num1
				ret 	count_sec_ret
count_same_time	ret 	count_sec_ret








// VARIABLES
read_time1				0
read_time2				0
ticker					0
count_seconds_num0		0
count_seconds_num1		1
count_sec_ret		0




#include time_driver.e
