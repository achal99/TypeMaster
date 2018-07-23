// WRITTEN BY MILO HARTSOE AND MAC YOUNG
nb_keyboard_driver_test_beginning 	call 	nb_keyboard_driver_begin 		nb_keyboard_driver_end					// Begins the keyboard.e file, then when done, goes to while

nb_keyboard_driver_test_test_begin	be nb_keyboard_driver_test_beginning  nb_keyboard_driver_new_data_ready    nb_keyboard_driver_test_zero
      be	nb_keyboard_driver_test_test_record	nb_keyboard_driver_pr_re		nb_keyboard_driver_test_one		// Stays in test_begin until a key was pressed
			be	nb_keyboard_driver_test_beginning	0			0

nb_keyboard_driver_test_test_record	cpfa	nb_keyboard_driver_test_ascii_array	nb_keyboard_driver_test_correct_array	nb_keyboard_driver_test_i		// Copies the current value in the array into ascii_array

nb_keyboard_driver_test_testing	bne	nb_keyboard_driver_test_wrong_pass	nb_keyboard_driver_test_ascii_array	nb_keyboard_driver_ascii		// Goes to wrong_pass if the keystroke is wrong
			add	nb_keyboard_driver_test_i		nb_keyboard_driver_test_i		nb_keyboard_driver_test_one		// Increments i by one
			blt 	nb_keyboard_driver_test_beginning	nb_keyboard_driver_test_i		nb_keyboard_driver_test_array_size	// Branches to the beginning if there is more input for password

nb_keyboard_driver_test_right_pass	cp	0x80000002		nb_keyboard_driver_test_one					// Branch if password is correct, turns on green led
			halt

nb_keyboard_driver_test_wrong_pass	cp	0x80000001		nb_keyboard_driver_test_one					// Branch if password is incorrect, turn on red led
			halt


// Variables and Constants

nb_keyboard_driver_test_i		0										// Iterator
nb_keyboard_driver_test_zero   0
nb_keyboard_driver_test_one		1
nb_keyboard_driver_test_array_size 	9
nb_keyboard_driver_test_ascii_array	0

// Arrays
nb_keyboard_driver_test_correct_array	85										// UmichE100 is the password
			109
			105
			99
			104
			69
			49
			48
			48

#include nb_keyboard_driver.e
