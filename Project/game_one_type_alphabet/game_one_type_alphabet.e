// WRITTEN BY MAC YOUNG
game_one_type_alphabet		cp 	game_one_iterator1		game_one_num97				// resets for new game
				cp	game_one_iterator2		game_one_num65
				cp	game_one_mistake_count		game_one_num0

game_one_begin_new		cp 	draw_letter_scale 		game_one_scale				// draw_letter parameters
				cp 	draw_letter_letter 		game_one_iterator2
				cp 	draw_letter_background_color 	game_one_backround_letter
				cp 	draw_letter_letter_color 	game_one_color_letter
				cp 	draw_letter_x 			game_one_xcoord
				cp 	draw_letter_y 			game_one_ycoord

game_one_next_letter		be	game_one_end		game_one_iterator2	game_one_num91		// goto end if iterator = 91
game_one_draw_letter		call 	draw_letter_function 	draw_letter_ret
game_one_keyboard_press		call	keyboard_begin		keyboard_end
game_one_pr_re			be	game_one_check_letter	keyboard_pr_re		game_one_num1
				be	game_one_keyboard_press		0			0
game_one_check_letter		bne	game_one_incorrect_let	game_one_iterator1	keyboard_ascii		// waits for new key if wrong
				add	game_one_iterator1	game_one_iterator1	game_one_num1		// increments by 1 letter
				add	game_one_iterator2	game_one_iterator2	game_one_num1		// increments by 1 letter
				cp 	draw_letter_scale 		game_one_scale				// draw_letter parameters
				cp 	draw_letter_letter 		game_one_iterator2
				cp 	draw_letter_background_color 	game_one_backround_letter
				cp 	draw_letter_letter_color 	game_one_color_letter
				cp 	draw_letter_x 			game_one_xcoord
				cp 	draw_letter_y 			game_one_ycoord
				cp	draw_letter_letter	game_one_iterator2
				be	game_one_next_letter	0			0			// goto beginning of loop

// CALL GAME END SCREEN
game_one_end			be 				winb 				0  				0


game_one_incorrect_let		add	game_one_mistake_count	game_one_mistake_count	game_one_num1
				be	g1x1			game_one_mistake_count	game_one_num1
				be	g1x2			game_one_mistake_count	game_one_num2
				be	game_one_game_over	game_one_mistake_count	game_one_num3

// CALL GAME OVER SCREEN
game_one_game_over		be 				lossb 				0				0


game_one_mistake_count	0
game_one_iterator1	0
game_one_iterator2	0
game_one_num_white	0xffffff
game_one_num_black	0
game_one_num0		0
game_one_num1		1
game_one_num2		2
game_one_num3		3
game_one_num65		65
game_one_num10 		10
game_one_num200 	200
game_one_num91		91
game_one_num97	 	97
game_one_num123		123

game_one_num480         480
game_one_num640         640

// PARAMETERS
game_one_scale			0
game_one_backround_letter	0
game_one_color_letter		0
game_one_xcoord			0
game_one_ycoord			0


// INCLUDED IN MAIN MENU
// #include ../other_menus/loss_menu.e
// #include ../other_menus/win_menu.e

#include ../../Lab/Lab8/keyboard_driver/keyboard_driver.e
// included in mainmenu_game1.e
// #include ../font/draw_letter.e
