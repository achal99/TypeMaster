// WRITTEN BY MARIA KHALAF
// SETTING BACKGROUND TO COLOR CHARCOAL GREY

winb	cp 		vga_driver_x		set_background_win_num0
		cp 		vga_driver_y		set_background_win_num0
		cp 		vga_driver_x2 		set_background_win_num639
		cp 		vga_driver_y2		set_background_win_num479
		cp		vga_driver_pixel	set_background_win_color_charcoal_grey
		call	vga_driver_set_xy	vga_driver_ret
		be		winbod				0									0

// Variables
set_background_win_num0					0
set_background_win_num639				639
set_background_win_num479				479
set_background_win_color_charcoal_grey	0x424242

// END OF SETTING BACKGROUND COLOR

// DRAWING BORDER

// :BORDER TOP
winbod	cp		vga_driver_x		set_border_W_top_x
		cp		vga_driver_y		set_border_W_top_y
		cp		vga_driver_x2		set_border_W_top_x2
		cp 		vga_driver_y2		set_border_W_top_y2
		cp		vga_driver_pixel	set_border_W_color
		call	vga_driver_set_xy	vga_driver_ret
// :BORDER BOTTOM
	cp		vga_driver_x		set_border_W_bottom_x
	cp		vga_driver_y		set_border_W_bottom_y
	cp		vga_driver_x2		set_border_W_bottom_x2
	cp 		vga_driver_y2		set_border_W_bottom_y2
	cp		vga_driver_pixel	set_border_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT
	cp		vga_driver_x		set_border_W_right_x
	cp		vga_driver_y		set_border_W_right_y
	cp		vga_driver_x2		set_border_W_right_x2
	cp 		vga_driver_y2		set_border_W_right_y2
	cp		vga_driver_pixel	set_border_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT
	cp		vga_driver_x		set_border_W_left_x
	cp		vga_driver_y		set_border_W_left_y
	cp		vga_driver_x2		set_border_W_left_x2
	cp 		vga_driver_y2		set_border_W_left_y2
	cp		vga_driver_pixel	set_border_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT TOP
	cp		vga_driver_x		set_border_W_lt_x
	cp		vga_driver_y		set_border_W_lt_y
	cp		vga_driver_x2		set_border_W_lt_x2
	cp 		vga_driver_y2		set_border_W_lt_y2
	cp		vga_driver_pixel	set_border_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT TOP
	cp		vga_driver_x		set_border_W_rt_x
	cp		vga_driver_y		set_border_W_rt_y
	cp		vga_driver_x2		set_border_W_rt_x2
	cp 		vga_driver_y2		set_border_W_rt_y2
	cp		vga_driver_pixel	set_border_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT BOTTOM
	cp		vga_driver_x		set_border_W_lb_x
	cp		vga_driver_y		set_border_W_lb_y
	cp		vga_driver_x2		set_border_W_lb_x2
	cp 		vga_driver_y2		set_border_W_lb_y2
	cp		vga_driver_pixel	set_border_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT BOTTOM
	cp		vga_driver_x		set_border_W_rb_x
	cp		vga_driver_y		set_border_W_rb_y
	cp		vga_driver_x2		set_border_W_rb_x2
	cp 		vga_driver_y2		set_border_W_rb_y2
	cp		vga_driver_pixel	set_border_W_color
	call	vga_driver_set_xy	vga_driver_ret
	be		win_YW				0							0

// Variables
set_border_W_top_x		0
set_border_W_top_y 		0
set_border_W_top_x2		639
set_border_W_top_y2		9

set_border_W_bottom_x	0
set_border_W_bottom_y 	470
set_border_W_bottom_x2	630
set_border_W_bottom_y2	479

set_border_W_right_x 	630
set_border_W_right_y 	0
set_border_W_right_x2 	639
set_border_W_right_y2 	479

set_border_W_left_x 	0
set_border_W_left_y 	0
set_border_W_left_x2 	9
set_border_W_left_y2 	479

set_border_W_lt_x 		0
set_border_W_lt_y 		0
set_border_W_lt_x2 		19
set_border_W_lt_y2 		19

set_border_W_rt_x 		620
set_border_W_rt_y 		0
set_border_W_rt_x2 		639
set_border_W_rt_y2 		19

set_border_W_lb_x 		0
set_border_W_lb_y 		460
set_border_W_lb_x2 		19
set_border_W_lb_y2 		479

set_border_W_rb_x  		620
set_border_W_rb_y  		460
set_border_W_rb_x2  	639
set_border_W_rb_y2  	479

set_border_W_color		0x84ffff

// END OF DRAWING BORDER

// SETTING YOU WIN LOGO

// :LETTER Y
win_YW	cp		draw_letter_scale				set_logo_YW_scale15
		cp		draw_letter_letter				set_logo_YW_letter_Y
		cp		draw_letter_x					set_logo_YW_num30
		cp 		draw_letter_y					set_logo_YW_num100
		cp 		draw_letter_letter_color		set_logo_YW_color_letter
		cp		draw_letter_background_color	set_logo_YW_color_backround
		call 	draw_letter_function			draw_letter_ret
// :LETTER O
	cp		draw_letter_x					set_logo_YW_num120
	cp		draw_letter_letter				set_logo_YW_letter_O
	call 	draw_letter_function			draw_letter_ret
// :LETTER U
	cp		draw_letter_x			set_logo_YW_num210
	cp 		draw_letter_letter		set_logo_YW_letter_U
	call 	draw_letter_function	draw_letter_ret
// :LETTER W
	cp		draw_letter_x			set_logo_YW_num340
	cp 		draw_letter_letter		set_logo_YW_letter_W
	call 	draw_letter_function	draw_letter_ret
// :LETTER I
	cp		draw_letter_x			set_logo_YW_num430
	cp 		draw_letter_letter		set_logo_YW_letter_I
	call 	draw_letter_function	draw_letter_ret
// :LETTER N
	cp		draw_letter_x			set_logo_YW_num520
	cp 		draw_letter_letter		set_logo_YW_letter_N
	call 	draw_letter_function	draw_letter_ret
	be 		win_b1					0						0

// Variables

// :Locations
set_logo_YW_num100			100
set_logo_YW_num30			30
set_logo_YW_num120			120
set_logo_YW_num210			210
set_logo_YW_num340			340
set_logo_YW_num430			430
set_logo_YW_num520			520

// :Letters
set_logo_YW_letter_Y		89
set_logo_YW_letter_O		79
set_logo_YW_letter_U		85
set_logo_YW_letter_W		87
set_logo_YW_letter_I		73
set_logo_YW_letter_N		78

// :Others
set_logo_YW_scale15				15
set_logo_YW_color_letter		0x84ffff
set_logo_YW_color_backround		0x424242

// END OF SETTING YOU WIN LOGO


// DRAWING BOX1

// :BOX1 TOP
win_b1	cp		vga_driver_x		set_box1_W_top_x
		cp		vga_driver_y		set_box1_W_top_y
		cp		vga_driver_x2		set_box1_W_top_x2
		cp 		vga_driver_y2		set_box1_W_top_y2
		cp		vga_driver_pixel	set_box1_W_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX1 BOTTOM
	cp		vga_driver_x		set_box1_W_bottom_x
	cp		vga_driver_y		set_box1_W_bottom_y
	cp		vga_driver_x2		set_box1_W_bottom_x2
	cp 		vga_driver_y2		set_box1_W_bottom_y2
	cp		vga_driver_pixel	set_box1_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 RIGHT
	cp		vga_driver_x		set_box1_W_right_x
	cp		vga_driver_y		set_box1_W_right_y
	cp		vga_driver_x2		set_box1_W_right_x2
	cp 		vga_driver_y2		set_box1_W_right_y2
	cp		vga_driver_pixel	set_box1_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 LEFT
	cp		vga_driver_x		set_box1_W_left_x
	cp		vga_driver_y		set_box1_W_left_y
	cp		vga_driver_x2		set_box1_W_left_x2
	cp 		vga_driver_y2		set_box1_W_left_y2
	cp		vga_driver_pixel	set_box1_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 LEFT TOP
	cp		vga_driver_x		set_box1_W_lt_x
	cp		vga_driver_y		set_box1_W_lt_y
	cp		vga_driver_x2		set_box1_W_lt_x2
	cp 		vga_driver_y2		set_box1_W_lt_y2
	cp		vga_driver_pixel	set_box1_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 RIGHT BOTTOM
	cp		vga_driver_x		set_box1_W_rb_x
	cp		vga_driver_y		set_box1_W_rb_y
	cp		vga_driver_x2		set_box1_W_rb_x2
	cp 		vga_driver_y2		set_box1_W_rb_y2
	cp		vga_driver_pixel	set_box1_W_color
	call	vga_driver_set_xy	vga_driver_ret
	be		win_rep				0							0

// Variables
set_box1_W_top_x		160
set_box1_W_top_y 		260
set_box1_W_top_x2		479
set_box1_W_top_y2		264

set_box1_W_bottom_x		160
set_box1_W_bottom_y 	315
set_box1_W_bottom_x2	479
set_box1_W_bottom_y2	319

set_box1_W_right_x 		475
set_box1_W_right_y 		260
set_box1_W_right_x2 	479
set_box1_W_right_y2 	319

set_box1_W_left_x 		160
set_box1_W_left_y 		260
set_box1_W_left_x2 		164
set_box1_W_left_y2 		319

set_box1_W_lt_x 		160
set_box1_W_lt_y 		260
set_box1_W_lt_x2 		169
set_box1_W_lt_y2 		269

set_box1_W_rb_x  		470
set_box1_W_rb_y  		310
set_box1_W_rb_x2  		479
set_box1_W_rb_y2  		319

set_box1_W_color		0xb0bec5

// END OF DRAWING BOX1

// SETTING REPLAY BOX1

// :LETTER R
win_rep	cp		draw_letter_scale				set_replay_b1_W_scale5
		cp		draw_letter_letter				set_replay_b1_W_letter_R
		cp		draw_letter_x					set_replay_b1_W_num230
		cp 		draw_letter_y					set_replay_b1_W_num268
		cp 		draw_letter_letter_color		set_replay_b1_W_color_letter
		cp		draw_letter_background_color	set_replay_b1_W_colorbackground_win
		call 	draw_letter_function			draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_replay_b1_W_num260
	cp 		draw_letter_letter		set_replay_b1_W_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER P
	cp		draw_letter_x			set_replay_b1_W_num290
	cp 		draw_letter_letter		set_replay_b1_W_letter_P
	call 	draw_letter_function	draw_letter_ret
// :LETTER L
	cp		draw_letter_x			set_replay_b1_W_num320
	cp 		draw_letter_letter		set_replay_b1_W_letter_L
	call 	draw_letter_function	draw_letter_ret
// :LETTER A
	cp		draw_letter_x			set_replay_b1_W_num350
	cp 		draw_letter_letter		set_replay_b1_W_letter_A
	call 	draw_letter_function	draw_letter_ret
// :LETTER Y
	cp		draw_letter_x			set_replay_b1_W_num380
	cp 		draw_letter_letter		set_replay_b1_W_letter_Y
	call 	draw_letter_function	draw_letter_ret
	be 		win_b2					0							0

// Variables

// :Locations
set_replay_b1_W_num268			268
set_replay_b1_W_num230			230
set_replay_b1_W_num260			260
set_replay_b1_W_num290			290
set_replay_b1_W_num320			320
set_replay_b1_W_num350			350
set_replay_b1_W_num380			380

// :Letters
set_replay_b1_W_letter_R		82
set_replay_b1_W_letter_E		69
set_replay_b1_W_letter_P		80
set_replay_b1_W_letter_L		76
set_replay_b1_W_letter_A		65
set_replay_b1_W_letter_Y		89

// :Others
set_replay_b1_W_scale5					5
set_replay_b1_W_color_letter			0x84ffff
set_replay_b1_W_colorbackground_win		0x424242

// END OF SETTING REPLAY BOX1

// DRAWING BOX2

// :BOX2 TOP
win_b2	cp		vga_driver_x		set_box2_W_top_x
		cp		vga_driver_y		set_box2_W_top_y
		cp		vga_driver_x2		set_box2_W_top_x2
		cp 		vga_driver_y2		set_box2_W_top_y2
		cp		vga_driver_pixel	set_box2_W_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX2 BOTTOM
	cp		vga_driver_x		set_box2_W_bottom_x
	cp		vga_driver_y		set_box2_W_bottom_y
	cp		vga_driver_x2		set_box2_W_bottom_x2
	cp 		vga_driver_y2		set_box2_W_bottom_y2
	cp		vga_driver_pixel	set_box2_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 RIGHT
	cp		vga_driver_x		set_box2_W_right_x
	cp		vga_driver_y		set_box2_W_right_y
	cp		vga_driver_x2		set_box2_W_right_x2
	cp 		vga_driver_y2		set_box2_W_right_y2
	cp		vga_driver_pixel	set_box2_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 LEFT
	cp		vga_driver_x		set_box2_W_left_x
	cp		vga_driver_y		set_box2_W_left_y
	cp		vga_driver_x2		set_box2_W_left_x2
	cp 		vga_driver_y2		set_box2_W_left_y2
	cp		vga_driver_pixel	set_box2_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 LEFT TOP
	cp		vga_driver_x		set_box2_W_lt_x
	cp		vga_driver_y		set_box2_W_lt_y
	cp		vga_driver_x2		set_box2_W_lt_x2
	cp 		vga_driver_y2		set_box2_W_lt_y2
	cp		vga_driver_pixel	set_box2_W_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 RIGHT BOTTOM
	cp		vga_driver_x		set_box2_W_rb_x
	cp		vga_driver_y		set_box2_W_rb_y
	cp		vga_driver_x2		set_box2_W_rb_x2
	cp 		vga_driver_y2		set_box2_W_rb_y2
	cp		vga_driver_pixel	set_box2_W_color
	call	vga_driver_set_xy	vga_driver_ret
	be		win_ex				0							0

// Variables
set_box2_W_top_x		160
set_box2_W_top_y 		340
set_box2_W_top_x2		479
set_box2_W_top_y2		344

set_box2_W_bottom_x		160
set_box2_W_bottom_y 	395
set_box2_W_bottom_x2	479
set_box2_W_bottom_y2	399

set_box2_W_right_x 		475
set_box2_W_right_y 		340
set_box2_W_right_x2 	479
set_box2_W_right_y2 	399

set_box2_W_left_x 		160
set_box2_W_left_y 		340
set_box2_W_left_x2 		164
set_box2_W_left_y2 		399

set_box2_W_lt_x 		160
set_box2_W_lt_y 		340
set_box2_W_lt_x2 		169
set_box2_W_lt_y2 		349

set_box2_W_rb_x  		470
set_box2_W_rb_y  		390
set_box2_W_rb_x2  		479
set_box2_W_rb_y2  		399

set_box2_W_color		0xb0bec5

// END OF DRAWING BOX2

// SETTING EXIT BOX2

// :LETTER E
win_ex	cp		draw_letter_scale				set_exit_b2_W_scale5
		cp		draw_letter_letter				set_exit_b2_W_letter_E
		cp		draw_letter_x					set_exit_b2_W_num260
		cp 		draw_letter_y					set_exit_b2_W_num348
		cp 		draw_letter_letter_color		set_exit_b2_W_color_letter
		cp		draw_letter_background_color	set_exit_b2_W_colorbackground_win
		call 	draw_letter_function			draw_letter_ret
// :LETTER X
	cp		draw_letter_x			set_exit_b2_W_num290
	cp 		draw_letter_letter		set_exit_b2_W_letter_X
	call 	draw_letter_function	draw_letter_ret
// :LETTER I
	cp		draw_letter_x			set_exit_b2_W_num320
	cp 		draw_letter_letter		set_exit_b2_W_letter_I
	call 	draw_letter_function	draw_letter_ret
// :LETTER T
	cp		draw_letter_x			set_exit_b2_W_num350
	cp 		draw_letter_letter		set_exit_b2_W_letter_T
	call 	draw_letter_function	draw_letter_ret
	be		win_end					0							0

// Variables

// :Locations
set_exit_b2_W_num348			348
set_exit_b2_W_num260			260
set_exit_b2_W_num290			290
set_exit_b2_W_num320			320
set_exit_b2_W_num350			350


// :Letters
set_exit_b2_W_letter_E		69
set_exit_b2_W_letter_X		88
set_exit_b2_W_letter_I		73
set_exit_b2_W_letter_T		84

// :Others
set_exit_b2_W_scale5					5
set_exit_b2_W_color_letter				0x84ffff
set_exit_b2_W_colorbackground_win		0x424242

// END OF SETTING EXIT BOX2

// END OF PROGRAM

win_end			be 		wm_game_branching_begin 	0 			0
wm_game_branching_begin	call	ts_driver_set_command_on	ts_driver_return_address

wm_game_branching_check	be	wm_game_branching_read		ts_driver_pressed	wm_game_branching_num1
			be	wm_game_branching_begin				0			0
wm_game_branching_read	cp	wm_game_branching_x		ts_driver_x_loc
			cp	wm_game_branching_y		ts_driver_y_loc
wm_game_branching_branch	be	wm_replay			0			0
wm_replay		blt	wm_exit				wm_game_branching_x		wm_box1_x
				blt	wm_exit				wm_box1_x2				wm_game_branching_x
				blt	wm_exit				wm_game_branching_y		wm_box1_y
				blt	wm_exit				wm_box1_y2				wm_game_branching_y
				be	mainmenu_game1					g3_num0			current_game
				be	g3_begin		current_game			g3_num2
				be	g2_start_up_again		0				0
wm_exit 		blt	wm_restart			wm_game_branching_x		wm_box2_x
				blt	wm_restart			wm_box2_x2				wm_game_branching_x
				blt	wm_restart			wm_game_branching_y		wm_box2_y
				blt	wm_restart			wm_box2_y2				wm_game_branching_y
				be 	mm1 							0			0
wm_restart		be 	wm_game_branching_begin 		0 			0
// :Variables
wm_game_branching_x	0
wm_game_branching_y	0
wm_game_branching_num0	0
wm_game_branching_num1	0
wm_box1_x 	160
wm_box1_y 	260
wm_box1_x2 	479
wm_box1_y2 	319
wm_box2_x 	160
wm_box2_y 	340
wm_box2_x2 	479
wm_box2_y2 	399

// INCLUDED IN LOSS MENU
// #include ../font/draw_letter.e
