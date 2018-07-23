// WRITTEN BY MILO HARTSOE AND ARJUN CHALIHA
nb_sd_makeread    be   nb_sd_loop1              nb_sd_my_flag_up     nb_sd_num1    // non blocking: if my flag is up, check if the driver's flag is up.
                  be   nb_sd_loop2              nb_sd_driver_flag_up nb_sd_num1    // non blocking: if my flag is down and driver's flag is up, then return
                  cp   0x80000082               nb_sd_num0                    //nb_sd_write equal to 0 (command parameter)
nb_sd_setaddrs    cp   0x80000083               nb_sd_which_address           //sets the address specified to which address wanted
                  cp   nb_sd_data_updated       nb_sd_num0                   // Say that there is not new data. Currently loading.
nb_sd_flagup      cp   0x80000080               nb_sd_num1                   //copies 1 into command memory address
                  cp   nb_sd_my_flag_up         nb_sd_num1                   // non blocking: keep track of flag
nb_sd_loop1       be   nb_sd_return             0x80000081     nb_sd_num0    // non blocking: if driver flag is 0, then return
                  cp   nb_sd_driver_flag_up     nb_sd_num1                   // non blocking: update driver flag tracking
nb_sd_next_read   cp   nb_sd_data_read          0x80000085                   //reads data from the address and sets it to response parameter
                  cp   nb_sd_data_updated       nb_sd_num1                   // Say that there is new data
nb_sd_flag_down   cp   0x80000080               nb_sd_num0
                  cp   nb_sd_my_flag_up         nb_sd_num0
nb_sd_loop2       be   nb_sd_return             0x80000081     nb_sd_num1    //waits for response to be set to 0
                  cp   nb_sd_driver_flag_up     nb_sd_num0                   // non blocking: update driver flag tracking
nb_sd_return      ret  nb_sd_return_IAR




//constants
nb_sd_num0                 0
nb_sd_num1                 1
nb_sd_which_address        0 //change later in driver
nb_sd_data_read         	 0
nb_sd_return_IAR           0

// non blocking vars
nb_sd_my_flag_up           0
nb_sd_driver_flag_up       0
nb_sd_data_updated         0 // 1 when the function has updated data, otherwise 0
