// WRITTEN BY MILO HARTSOE AND MAC YOUNG
// NO PARAMETERS
// RESPONSES:
// When the driver returns,
// @RESPONSE nb_keyboard_driver_ascii
// @RESPONSE nb_keyboard_driver_pr_re is whether key was pressed or released
// @RESPONSE nb_keyboard_driver_new_data_ready is 1 when there is new data, otherwise 0. Reset to 0 on next call to this function
// will contain ascii value for
// the key that was pressed




nb_keyboard_driver_begin  be nb_keyboard_driver_loop1 nb_keyboard_driver_my_flag_up nb_keyboard_driver_num1
		cp nb_keyboard_driver_new_data_ready nb_keyboard_driver_num0
		// Executing below line means my flag is down. Check if drivers flag is up
		be    nb_keyboard_driver_return  0x80000021  nb_keyboard_driver_num1
		// Executing below line means both my flag and the driver flag are down
		cp 		0x80000020 	nb_keyboard_driver_num1 			// Sets command to 1
		cp    nb_keyboard_driver_my_flag_up  nb_keyboard_driver_num1
nb_keyboard_driver_loop1	be 		nb_keyboard_driver_return	0x80000021 	nb_keyboard_driver_num0

		cp    nb_keyboard_driver_new_data_ready nb_keyboard_driver_num1

		cp 		nb_keyboard_driver_pr_re 	0x80000022			// Records what is in the response parameters in

		cp 		nb_keyboard_driver_ascii 	0x80000023			// nb_keyboard_driver_registers

		cp 		0x80000020	nb_keyboard_driver_num0			// Sets command to 0 to show the device that the E100 has seen the response
		cp    nb_keyboard_driver_my_flag_up  nb_keyboard_driver_num0
nb_keyboard_driver_return	ret		nb_keyboard_driver_end					// Returns to program

// INTERNAL VARS. DO NOT SET OUTSIDE OF DRIVER
nb_keyboard_driver_my_flag_up     0

// Constants
nb_keyboard_driver_num0 	0
nb_keyboard_driver_num1 	1

// Log
nb_keyboard_driver_debug_var			1557
nb_keyboard_driver_pr_re 					0
nb_keyboard_driver_ascii 					0
nb_keyboard_driver_new_data_ready 0

// return
nb_keyboard_driver_end	0
