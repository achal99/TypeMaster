// WRITTEN BY MARIA KHALAF
// SETTING BACKGROUND TO COLOR CHARCOAL GREY

lossb	cp		vga_driver_x 		loss_menu_set_background_loss_num0
		cp		vga_driver_y 		loss_menu_set_background_loss_num0
		cp 		vga_driver_x2 		loss_menu_set_background_loss_num639
		cp 		vga_driver_y2		loss_menu_set_background_loss_num479
		cp		vga_driver_pixel	loss_menu_set_background_loss_color_charcoal_grey
		call	vga_driver_set_xy	vga_driver_ret
		be		lossbod				0										0

// Variables
loss_menu_set_background_loss_num0					0
loss_menu_set_background_loss_num639				639
loss_menu_set_background_loss_num479				479
loss_menu_set_background_loss_color_charcoal_grey	0x424242

// END OF SETTING BACKGROUND COLOR

// DRAWING BORDER

// :BORDER TOP
lossbod	cp		vga_driver_x		loss_menu_set_border_L_top_x
		cp		vga_driver_y		loss_menu_set_border_L_top_y
		cp		vga_driver_x2		loss_menu_set_border_L_top_x2
		cp 		vga_driver_y2		loss_menu_set_border_L_top_y2
		cp		vga_driver_pixel	loss_menu_set_border_L_color
		call	vga_driver_set_xy	vga_driver_ret
// :BORDER BOTTOM
	cp		vga_driver_x		loss_menu_set_border_L_bottom_x
	cp		vga_driver_y		loss_menu_set_border_L_bottom_y
	cp		vga_driver_x2		loss_menu_set_border_L_bottom_x2
	cp 		vga_driver_y2		loss_menu_set_border_L_bottom_y2
	cp		vga_driver_pixel	loss_menu_set_border_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT
	cp		vga_driver_x		loss_menu_set_border_L_right_x
	cp		vga_driver_y		loss_menu_set_border_L_right_y
	cp		vga_driver_x2		loss_menu_set_border_L_right_x2
	cp 		vga_driver_y2		loss_menu_set_border_L_right_y2
	cp		vga_driver_pixel	loss_menu_set_border_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT
	cp		vga_driver_x		loss_menu_set_border_L_left_x
	cp		vga_driver_y		loss_menu_set_border_L_left_y
	cp		vga_driver_x2		loss_menu_set_border_L_left_x2
	cp 		vga_driver_y2		loss_menu_set_border_L_left_y2
	cp		vga_driver_pixel	loss_menu_set_border_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT TOP
	cp		vga_driver_x		loss_menu_set_border_L_lt_x
	cp		vga_driver_y		loss_menu_set_border_L_lt_y
	cp		vga_driver_x2		loss_menu_set_border_L_lt_x2
	cp 		vga_driver_y2		loss_menu_set_border_L_lt_y2
	cp		vga_driver_pixel	loss_menu_set_border_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT TOP
	cp		vga_driver_x		loss_menu_set_border_L_rt_x
	cp		vga_driver_y		loss_menu_set_border_L_rt_y
	cp		vga_driver_x2		loss_menu_set_border_L_rt_x2
	cp 		vga_driver_y2		loss_menu_set_border_L_rt_y2
	cp		vga_driver_pixel	loss_menu_set_border_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT BOTTOM
	cp		vga_driver_x		loss_menu_set_border_L_lb_x
	cp		vga_driver_y		loss_menu_set_border_L_lb_y
	cp		vga_driver_x2		loss_menu_set_border_L_lb_x2
	cp 		vga_driver_y2		loss_menu_set_border_L_lb_y2
	cp		vga_driver_pixel	loss_menu_set_border_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT BOTTOM
	cp		vga_driver_x		loss_menu_set_border_L_rb_x
	cp		vga_driver_y		loss_menu_set_border_L_rb_y
	cp		vga_driver_x2		loss_menu_set_border_L_rb_x2
	cp 		vga_driver_y2		loss_menu_set_border_L_rb_y2
	cp		vga_driver_pixel	loss_menu_set_border_L_color
	call	vga_driver_set_xy	vga_driver_ret
	be		loss_GO				0							0

// Variables
loss_menu_set_border_L_top_x			0
loss_menu_set_border_L_top_y 			0
loss_menu_set_border_L_top_x2			639
loss_menu_set_border_L_top_y2			9

loss_menu_set_border_L_bottom_x		0
loss_menu_set_border_L_bottom_y 		470
loss_menu_set_border_L_bottom_x2		630
loss_menu_set_border_L_bottom_y2		479

loss_menu_set_border_L_right_x 		630
loss_menu_set_border_L_right_y 		0
loss_menu_set_border_L_right_x2 		639
loss_menu_set_border_L_right_y2 		479

loss_menu_set_border_L_left_x 		0
loss_menu_set_border_L_left_y 		0
loss_menu_set_border_L_left_x2 		9
loss_menu_set_border_L_left_y2 		479

loss_menu_set_border_L_lt_x 			0
loss_menu_set_border_L_lt_y 			0
loss_menu_set_border_L_lt_x2 			19
loss_menu_set_border_L_lt_y2 			19

loss_menu_set_border_L_rt_x 			620
loss_menu_set_border_L_rt_y 			0
loss_menu_set_border_L_rt_x2 			639
loss_menu_set_border_L_rt_y2 			19

loss_menu_set_border_L_lb_x 			0
loss_menu_set_border_L_lb_y 			460
loss_menu_set_border_L_lb_x2 			19
loss_menu_set_border_L_lb_y2 			479

loss_menu_set_border_L_rb_x  			620
loss_menu_set_border_L_rb_y  			460
loss_menu_set_border_L_rb_x2  		639
loss_menu_set_border_L_rb_y2  		479

loss_menu_set_border_L_color		0x84ffff

// END OF DRAWING BORDER

// SETTING GAME OVER LOGO

// :LETTER G
loss_GO	cp		draw_letter_scale				loss_menu_set_logo_GO_scale10
		cp		draw_letter_letter				loss_menu_set_logo_GO_letter_G
		cp		draw_letter_x					loss_menu_set_logo_GO_num50
		cp 		draw_letter_y					loss_menu_set_logo_GO_num140
		cp 		draw_letter_letter_color		loss_menu_set_logo_GO_color_letter
		cp		draw_letter_background_color	loss_menu_set_logo_GO_colorbackground_loss
		call 	draw_letter_function			draw_letter_ret
// :LETTER A
	cp		draw_letter_x			loss_menu_set_logo_GO_num110
	cp		draw_letter_letter		loss_menu_set_logo_GO_letter_A
	call 	draw_letter_function	draw_letter_ret
// :LETTER M
	cp		draw_letter_x			loss_menu_set_logo_GO_num170
	cp 		draw_letter_letter		loss_menu_set_logo_GO_letter_M
	call 	draw_letter_function	draw_letter_ret
// :LETTER E
	cp		draw_letter_x			loss_menu_set_logo_GO_num230
	cp 		draw_letter_letter		loss_menu_set_logo_GO_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER O
	cp		draw_letter_x			loss_menu_set_logo_GO_num350
	cp 		draw_letter_letter		loss_menu_set_logo_GO_letter_O
	call 	draw_letter_function	draw_letter_ret
// :LETTER V
	cp		draw_letter_x			loss_menu_set_logo_GO_num410
	cp 		draw_letter_letter		loss_menu_set_logo_GO_letter_V
	call 	draw_letter_function	draw_letter_ret
// :LETTER E
	cp		draw_letter_x			loss_menu_set_logo_GO_num470
	cp 		draw_letter_letter		loss_menu_set_logo_GO_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER R
	cp		draw_letter_x			loss_menu_set_logo_GO_num530
	cp 		draw_letter_letter		loss_menu_set_logo_GO_letter_R
	call 	draw_letter_function	draw_letter_ret
	be 		loss_b1					0						0

// Variables

// :Locations
loss_menu_set_logo_GO_num140			140
loss_menu_set_logo_GO_num50			50
loss_menu_set_logo_GO_num110			110
loss_menu_set_logo_GO_num170			170
loss_menu_set_logo_GO_num230			230
loss_menu_set_logo_GO_num290			290
loss_menu_set_logo_GO_num350			350
loss_menu_set_logo_GO_num410			410
loss_menu_set_logo_GO_num470			470
loss_menu_set_logo_GO_num530 			530

// :Letters
loss_menu_set_logo_GO_letter_G		71
loss_menu_set_logo_GO_letter_A		65
loss_menu_set_logo_GO_letter_M		77
loss_menu_set_logo_GO_letter_E		69
loss_menu_set_logo_GO_letter_O		79
loss_menu_set_logo_GO_letter_V		86
loss_menu_set_logo_GO_letter_R		82


// :Others
loss_menu_set_logo_GO_scale10					10
loss_menu_set_logo_GO_color_letter			0x84ffff
loss_menu_set_logo_GO_colorbackground_loss	0x424242

// END OF SETTING OPTIONS LOGO

// DRAWING BOX1

// :BOX1 TOP
loss_b1	cp		vga_driver_x		loss_menu_set_box1_L_top_x
		cp		vga_driver_y		loss_menu_set_box1_L_top_y
		cp		vga_driver_x2		loss_menu_set_box1_L_top_x2
		cp 		vga_driver_y2		loss_menu_set_box1_L_top_y2
		cp		vga_driver_pixel	loss_menu_set_box1_L_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX1 BOTTOM
	cp		vga_driver_x		loss_menu_set_box1_L_bottom_x
	cp		vga_driver_y		loss_menu_set_box1_L_bottom_y
	cp		vga_driver_x2		loss_menu_set_box1_L_bottom_x2
	cp 		vga_driver_y2		loss_menu_set_box1_L_bottom_y2
	cp		vga_driver_pixel	loss_menu_set_box1_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 RIGHT
	cp		vga_driver_x		loss_menu_set_box1_L_right_x
	cp		vga_driver_y		loss_menu_set_box1_L_right_y
	cp		vga_driver_x2		loss_menu_set_box1_L_right_x2
	cp 		vga_driver_y2		loss_menu_set_box1_L_right_y2
	cp		vga_driver_pixel	loss_menu_set_box1_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 LEFT
	cp		vga_driver_x		loss_menu_set_box1_L_left_x
	cp		vga_driver_y		loss_menu_set_box1_L_left_y
	cp		vga_driver_x2		loss_menu_set_box1_L_left_x2
	cp 		vga_driver_y2		loss_menu_set_box1_L_left_y2
	cp		vga_driver_pixel	loss_menu_set_box1_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 LEFT TOP
	cp		vga_driver_x		loss_menu_set_box1_L_lt_x
	cp		vga_driver_y		loss_menu_set_box1_L_lt_y
	cp		vga_driver_x2		loss_menu_set_box1_L_lt_x2
	cp 		vga_driver_y2		loss_menu_set_box1_L_lt_y2
	cp		vga_driver_pixel	loss_menu_set_box1_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 RIGHT BOTTOM
	cp		vga_driver_x		loss_menu_set_box1_L_rb_x
	cp		vga_driver_y		loss_menu_set_box1_L_rb_y
	cp		vga_driver_x2		loss_menu_set_box1_L_rb_x2
	cp 		vga_driver_y2		loss_menu_set_box1_L_rb_y2
	cp		vga_driver_pixel	loss_menu_set_box1_L_color
	call	vga_driver_set_xy	vga_driver_ret
	be		loss_rep			0							0

// Variables
loss_menu_set_box1_L_top_x		160
loss_menu_set_box1_L_top_y 		260
loss_menu_set_box1_L_top_x2		479
loss_menu_set_box1_L_top_y2		264

loss_menu_set_box1_L_bottom_x		160
loss_menu_set_box1_L_bottom_y 	315
loss_menu_set_box1_L_bottom_x2	479
loss_menu_set_box1_L_bottom_y2	319

loss_menu_set_box1_L_right_x 		475
loss_menu_set_box1_L_right_y 		260
loss_menu_set_box1_L_right_x2 	479
loss_menu_set_box1_L_right_y2 	319

loss_menu_set_box1_L_left_x 		160
loss_menu_set_box1_L_left_y 		260
loss_menu_set_box1_L_left_x2 		164
loss_menu_set_box1_L_left_y2 		319

loss_menu_set_box1_L_lt_x 		160
loss_menu_set_box1_L_lt_y 		260
loss_menu_set_box1_L_lt_x2 		169
loss_menu_set_box1_L_lt_y2 		269

loss_menu_set_box1_L_rb_x  		470
loss_menu_set_box1_L_rb_y  		310
loss_menu_set_box1_L_rb_x2  		479
loss_menu_set_box1_L_rb_y2  		319

loss_menu_set_box1_L_color		0xb0bec5

// END OF DRAWING BOX1

// SETTING REPLAY BOX1

// :LETTER R
loss_rep	cp		draw_letter_scale				loss_menu_set_replay_b1_L_scale5
			cp		draw_letter_letter				loss_menu_set_replay_b1_L_letter_R
			cp		draw_letter_x					loss_menu_set_replay_b1_L_num230
			cp 		draw_letter_y					loss_menu_set_replay_b1_L_num268
			cp 		draw_letter_letter_color		loss_menu_set_replay_b1_L_color_letter
			cp		draw_letter_background_color	loss_menu_set_replay_b1_L_colorbackground_loss
			call 	draw_letter_function			draw_letter_ret
// :LETTER E
	cp		draw_letter_x			loss_menu_set_replay_b1_L_num260
	cp 		draw_letter_letter		loss_menu_set_replay_b1_L_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER P
	cp		draw_letter_x			loss_menu_set_replay_b1_L_num290
	cp 		draw_letter_letter		loss_menu_set_replay_b1_L_letter_P
	call 	draw_letter_function	draw_letter_ret
// :LETTER L
	cp		draw_letter_x			loss_menu_set_replay_b1_L_num320
	cp 		draw_letter_letter		loss_menu_set_replay_b1_L_letter_L
	call 	draw_letter_function	draw_letter_ret
// :LETTER A
	cp		draw_letter_x			loss_menu_set_replay_b1_L_num350
	cp 		draw_letter_letter		loss_menu_set_replay_b1_L_letter_A
	call 	draw_letter_function	draw_letter_ret
// :LETTER Y
	cp		draw_letter_x			loss_menu_set_replay_b1_L_num380
	cp 		draw_letter_letter		loss_menu_set_replay_b1_L_letter_Y
	call 	draw_letter_function	draw_letter_ret
	be 		loss_b2					0							0

// Variables

// :Locations
loss_menu_set_replay_b1_L_num268			268
loss_menu_set_replay_b1_L_num230			230
loss_menu_set_replay_b1_L_num260			260
loss_menu_set_replay_b1_L_num290			290
loss_menu_set_replay_b1_L_num320			320
loss_menu_set_replay_b1_L_num350			350
loss_menu_set_replay_b1_L_num380			380

// :Letters
loss_menu_set_replay_b1_L_letter_R		82
loss_menu_set_replay_b1_L_letter_E		69
loss_menu_set_replay_b1_L_letter_P		80
loss_menu_set_replay_b1_L_letter_L		76
loss_menu_set_replay_b1_L_letter_A		65
loss_menu_set_replay_b1_L_letter_Y		89

// :Others
loss_menu_set_replay_b1_L_scale5					5
loss_menu_set_replay_b1_L_color_letter			0x84ffff
loss_menu_set_replay_b1_L_colorbackground_loss	0x424242

// END OF SETTING REPLAY BOX1

// DRAWING BOX2

// :BOX2 TOP
loss_b2	cp		vga_driver_x		loss_menu_set_box2_L_top_x
		cp		vga_driver_y		loss_menu_set_box2_L_top_y
		cp		vga_driver_x2		loss_menu_set_box2_L_top_x2
		cp 		vga_driver_y2		loss_menu_set_box2_L_top_y2
		cp		vga_driver_pixel	loss_menu_set_box2_L_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX2 BOTTOM
	cp		vga_driver_x		loss_menu_set_box2_L_bottom_x
	cp		vga_driver_y		loss_menu_set_box2_L_bottom_y
	cp		vga_driver_x2		loss_menu_set_box2_L_bottom_x2
	cp 		vga_driver_y2		loss_menu_set_box2_L_bottom_y2
	cp		vga_driver_pixel	loss_menu_set_box2_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 RIGHT
	cp		vga_driver_x		loss_menu_set_box2_L_right_x
	cp		vga_driver_y		loss_menu_set_box2_L_right_y
	cp		vga_driver_x2		loss_menu_set_box2_L_right_x2
	cp 		vga_driver_y2		loss_menu_set_box2_L_right_y2
	cp		vga_driver_pixel	loss_menu_set_box2_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 LEFT
	cp		vga_driver_x		loss_menu_set_box2_L_left_x
	cp		vga_driver_y		loss_menu_set_box2_L_left_y
	cp		vga_driver_x2		loss_menu_set_box2_L_left_x2
	cp 		vga_driver_y2		loss_menu_set_box2_L_left_y2
	cp		vga_driver_pixel	loss_menu_set_box2_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 LEFT TOP
	cp		vga_driver_x		loss_menu_set_box2_L_lt_x
	cp		vga_driver_y		loss_menu_set_box2_L_lt_y
	cp		vga_driver_x2		loss_menu_set_box2_L_lt_x2
	cp 		vga_driver_y2		loss_menu_set_box2_L_lt_y2
	cp		vga_driver_pixel	loss_menu_set_box2_L_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 RIGHT BOTTOM
	cp		vga_driver_x		loss_menu_set_box2_L_rb_x
	cp		vga_driver_y		loss_menu_set_box2_L_rb_y
	cp		vga_driver_x2		loss_menu_set_box2_L_rb_x2
	cp 		vga_driver_y2		loss_menu_set_box2_L_rb_y2
	cp		vga_driver_pixel	loss_menu_set_box2_L_color
	call	vga_driver_set_xy	vga_driver_ret
	be		loss_ex				0							0

// Variables
loss_menu_set_box2_L_top_x		160
loss_menu_set_box2_L_top_y 		340
loss_menu_set_box2_L_top_x2		479
loss_menu_set_box2_L_top_y2		344

loss_menu_set_box2_L_bottom_x		160
loss_menu_set_box2_L_bottom_y 	395
loss_menu_set_box2_L_bottom_x2	479
loss_menu_set_box2_L_bottom_y2	399

loss_menu_set_box2_L_right_x 		475
loss_menu_set_box2_L_right_y 		340
loss_menu_set_box2_L_right_x2 	479
loss_menu_set_box2_L_right_y2 	399

loss_menu_set_box2_L_left_x 		160
loss_menu_set_box2_L_left_y 		340
loss_menu_set_box2_L_left_x2 		164
loss_menu_set_box2_L_left_y2 		399

loss_menu_set_box2_L_lt_x 		160
loss_menu_set_box2_L_lt_y 		340
loss_menu_set_box2_L_lt_x2 		169
loss_menu_set_box2_L_lt_y2 		349

loss_menu_set_box2_L_rb_x  		470
loss_menu_set_box2_L_rb_y  		390
loss_menu_set_box2_L_rb_x2  		479
loss_menu_set_box2_L_rb_y2  		399

loss_menu_set_box2_L_color		0xb0bec5

// END OF DRAWING BOX2

// SETTING EXIT BOX2

// :LETTER E
loss_ex	cp		draw_letter_scale				loss_menu_set_exit_b2_L_scale5
		cp		draw_letter_letter				loss_menu_set_exit_b2_L_letter_E
		cp		draw_letter_x					loss_menu_set_exit_b2_L_num260
		cp 		draw_letter_y					loss_menu_set_exit_b2_L_num348
		cp 		draw_letter_letter_color		loss_menu_set_exit_b2_L_color_letter
		cp		draw_letter_background_color	loss_menu_set_exit_b2_L_colorbackground_loss
		call 	draw_letter_function			draw_letter_ret
// :LETTER X
	cp		draw_letter_x			loss_menu_set_exit_b2_L_num290
	cp 		draw_letter_letter		loss_menu_set_exit_b2_L_letter_X
	call 	draw_letter_function	draw_letter_ret
// :LETTER I
	cp		draw_letter_x			loss_menu_set_exit_b2_L_num320
	cp 		draw_letter_letter		loss_menu_set_exit_b2_L_letter_I
	call 	draw_letter_function	draw_letter_ret
// :LETTER T
	cp		draw_letter_x			loss_menu_set_exit_b2_L_num350
	cp 		draw_letter_letter		loss_menu_set_exit_b2_L_letter_T
	call 	draw_letter_function	draw_letter_ret
	be		lm_game_branching_begin		0							0

// Variables

// :Locations
loss_menu_set_exit_b2_L_num348		348
loss_menu_set_exit_b2_L_num260		260
loss_menu_set_exit_b2_L_num290		290
loss_menu_set_exit_b2_L_num320		320
loss_menu_set_exit_b2_L_num350		350

// :Letters
loss_menu_set_exit_b2_L_letter_E		69
loss_menu_set_exit_b2_L_letter_X		88
loss_menu_set_exit_b2_L_letter_I		73
loss_menu_set_exit_b2_L_letter_T		84

// :Others
loss_menu_set_exit_b2_L_scale5					5
loss_menu_set_exit_b2_L_color_letter				0x84ffff
loss_menu_set_exit_b2_L_colorbackground_loss		0x424242

// END OF SETTING EXIT BOX2

// END OF PROGRAM

lm_game_branching_begin	call	ts_driver_set_command_on	ts_driver_return_address

lm_game_branching_check	be	lm_game_branching_read		ts_driver_pressed	lm_game_branching_num1
			be	lm_game_branching_begin				0			0
lm_game_branching_read	cp	lm_game_branching_x		ts_driver_x_loc
			cp	lm_game_branching_y		ts_driver_y_loc
lm_game_branching_branch	be	lm_replay			0			0
lm_replay			blt	lm_exit				lm_game_branching_x		lm_box1_x
				blt	lm_exit				lm_box1_x2				lm_game_branching_x
				blt	lm_exit				lm_game_branching_y		lm_box1_y
				blt	lm_exit				lm_box1_y2				lm_game_branching_y

				be	mainmenu_game1					g3_num0			current_game
				be	g3_begin		current_game			g3_num2
				be	g2_start_up_again		0				0
//IMPL G2 INTO MENU
g2_start_up_again		be	game_two_start	0	0
lm_exit 			blt	lm_restart			lm_game_branching_x		lm_box2_x
				blt	lm_restart			lm_box2_x2				lm_game_branching_x
				blt	lm_restart			lm_game_branching_y		lm_box2_y
				blt	lm_restart			lm_box2_y2				lm_game_branching_y
				be 	mm1 							0			0
lm_restart			be 	lm_game_branching_begin 		0 			0
// :Variables
lm_game_branching_x	0
lm_game_branching_y	0
lm_game_branching_num0	0
lm_game_branching_num1	0
lm_box1_x 	160
lm_box1_y 	260
lm_box1_x2 	479
lm_box1_y2 	319
lm_box2_x 	160
lm_box2_y 	340
lm_box2_x2 	479
lm_box2_y2 	399


// INCLUDED IN MAIN MENU
// #include ../font/draw_letter.e
