// WRITTEN BY MAC YOUNG AND MARIA KHALAF
// SETTING BACKGROUND TO COLOR CHARCOAL GREY

mm1	cp load_audio_sdram_begin game_two_music_start
        cp load_audio_sdram_end game_two_music_end
        call load_audio_sdram_load load_audio_sdram_ret
        cp		vga_driver_x 		set_background_num0
	cp		vga_driver_y 		set_background_num0
	cp 		vga_driver_x2 		set_backround_num639
	cp 		vga_driver_y2		set_backround_num479
	cp		vga_driver_pixel	set_backround_color_charcoal_grey
	call	vga_driver_set_xy	vga_driver_ret
	be		mmb					0									0

// Variables
set_background_num0					0
set_backround_num639				639
set_backround_num479				479
set_backround_color_charcoal_grey	0x424242

// END OF SETTING BACKROUND COLOR

// DRAWING BORDER

// :BORDER TOP
mmb	cp		vga_driver_x		set_border_mm_top_x
	cp		vga_driver_y		set_border_mm_top_y
	cp		vga_driver_x2		set_border_mm_top_x2
	cp 		vga_driver_y2		set_border_mm_top_y2
	cp		vga_driver_pixel	set_border_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER BOTTOM
	cp		vga_driver_x		set_border_mm_bottom_x
	cp		vga_driver_y		set_border_mm_bottom_y
	cp		vga_driver_x2		set_border_mm_bottom_x2
	cp 		vga_driver_y2		set_border_mm_bottom_y2
	cp		vga_driver_pixel	set_border_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT
	cp		vga_driver_x		set_border_mm_right_x
	cp		vga_driver_y		set_border_mm_right_y
	cp		vga_driver_x2		set_border_mm_right_x2
	cp 		vga_driver_y2		set_border_mm_right_y2
	cp		vga_driver_pixel	set_border_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT
	cp		vga_driver_x		set_border_mm_left_x
	cp		vga_driver_y		set_border_mm_left_y
	cp		vga_driver_x2		set_border_mm_left_x2
	cp 		vga_driver_y2		set_border_mm_left_y2
	cp		vga_driver_pixel	set_border_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT TOP
	cp		vga_driver_x		set_border_mm_lt_x
	cp		vga_driver_y		set_border_mm_lt_y
	cp		vga_driver_x2		set_border_mm_lt_x2
	cp 		vga_driver_y2		set_border_mm_lt_y2
	cp		vga_driver_pixel	set_border_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT TOP
	cp		vga_driver_x		set_border_mm_rt_x
	cp		vga_driver_y		set_border_mm_rt_y
	cp		vga_driver_x2		set_border_mm_rt_x2
	cp 		vga_driver_y2		set_border_mm_rt_y2
	cp		vga_driver_pixel	set_border_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT BOTTOM
	cp		vga_driver_x		set_border_mm_lb_x
	cp		vga_driver_y		set_border_mm_lb_y
	cp		vga_driver_x2		set_border_mm_lb_x2
	cp 		vga_driver_y2		set_border_mm_lb_y2
	cp		vga_driver_pixel	set_border_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT BOTTOM
	cp		vga_driver_x		set_border_mm_rb_x
	cp		vga_driver_y		set_border_mm_rb_y
	cp		vga_driver_x2		set_border_mm_rb_x2
	cp 		vga_driver_y2		set_border_mm_rb_y2
	cp		vga_driver_pixel	set_border_mm_color
	call	vga_driver_set_xy	vga_driver_ret
	be		mml					0							0

// Variables
set_border_mm_top_x			0
set_border_mm_top_y 		0
set_border_mm_top_x2		639
set_border_mm_top_y2		9

set_border_mm_bottom_x		0
set_border_mm_bottom_y 		470
set_border_mm_bottom_x2		630
set_border_mm_bottom_y2		479

set_border_mm_right_x 		630
set_border_mm_right_y 		0
set_border_mm_right_x2 		639
set_border_mm_right_y2 		479

set_border_mm_left_x 		0
set_border_mm_left_y 		0
set_border_mm_left_x2 		9
set_border_mm_left_y2 		479

set_border_mm_lt_x 			0
set_border_mm_lt_y 			0
set_border_mm_lt_x2 		19
set_border_mm_lt_y2 		19

set_border_mm_rt_x 			620
set_border_mm_rt_y 			0
set_border_mm_rt_x2 		639
set_border_mm_rt_y2 		19

set_border_mm_lb_x 			0
set_border_mm_lb_y 			460
set_border_mm_lb_x2 		19
set_border_mm_lb_y2 		479

set_border_mm_rb_x  		620
set_border_mm_rb_y  		460
set_border_mm_rb_x2  		639
set_border_mm_rb_y2  		479

set_border_mm_color			0x84ffff

// END OF DRAWING BORDER

// SETTING TYPEMASTER LOGO

// :LETTER T
mml	cp		draw_letter_scale				set_logo_scale9
	cp		draw_letter_letter				set_logo_letter_T
	cp		draw_letter_x					set_logo_num50
	cp 		draw_letter_y					set_logo_num70
	cp 		draw_letter_letter_color		set_logo_color_letter
	cp		draw_letter_background_color	set_logo_color_backround
	call 	draw_letter_function			draw_letter_ret
// :LETTER y
	cp		draw_letter_x			set_logo_num104
	cp 		draw_letter_letter		set_logo_letter_y
	call 	draw_letter_function	draw_letter_ret
// :LETTER p
	cp		draw_letter_x			set_logo_num158
	cp 		draw_letter_letter		set_logo_letter_p
	call 	draw_letter_function	draw_letter_ret
// :LETTER e
	cp		draw_letter_x			set_logo_num212
	cp 		draw_letter_letter		set_logo_letter_e
	call 	draw_letter_function	draw_letter_ret
// :LETTER M
	cp		draw_letter_x			set_logo_num266
	cp 		draw_letter_letter		set_logo_letter_M
	call 	draw_letter_function	draw_letter_ret
// :LETTER a
	cp		draw_letter_x			set_logo_num320
	cp 		draw_letter_letter		set_logo_letter_a
	call 	draw_letter_function	draw_letter_ret
// :LETTER s
	cp		draw_letter_x			set_logo_num374
	cp 		draw_letter_letter		set_logo_letter_s
	call 	draw_letter_function	draw_letter_ret
// :LETTER t
	cp		draw_letter_x			set_logo_num428
	cp 		draw_letter_letter		set_logo_letter_t
	call 	draw_letter_function	draw_letter_ret
// :LETTER e
	cp		draw_letter_x			set_logo_num482
	cp 		draw_letter_letter		set_logo_letter_e
	call 	draw_letter_function	draw_letter_ret
// :LETTER r
	cp		draw_letter_x			set_logo_num536
	cp 		draw_letter_letter		set_logo_letter_r
	call 	draw_letter_function	draw_letter_ret
	be 		mmnb					0					0

// Variables

// :Locations
set_logo_num50			50
set_logo_num70			70
set_logo_num104			104
set_logo_num158			158
set_logo_num212			212
set_logo_num266			266
set_logo_num320			320
set_logo_num374			374
set_logo_num428			428
set_logo_num482			482
set_logo_num536			536

// :Letters
set_logo_letter_T		84
set_logo_letter_y		121
set_logo_letter_p		112
set_logo_letter_e		101
set_logo_letter_M		77
set_logo_letter_a		97
set_logo_letter_s		115
set_logo_letter_t		116
set_logo_letter_r		114

// :Others
set_logo_scale9				9
set_logo_color_letter		0x84ffff
set_logo_color_backround	0x424242

// END OF SETTING TYPEMASTER LOGO

// DRAWING NAME BOX

// :NAME BOX TOP
mmnb	cp		vga_driver_x		set_n_box_mm_top_x
		cp		vga_driver_y		set_n_box_mm_top_y
		cp		vga_driver_x2		set_n_box_mm_top_x2
		cp 		vga_driver_y2		set_n_box_mm_top_y2
		cp		vga_driver_pixel	set_n_box_mm_color
		call	vga_driver_set_xy	vga_driver_ret
// :NAME BOX BOTTOM
	cp		vga_driver_x		set_n_box_mm_bottom_x
	cp		vga_driver_y		set_n_box_mm_bottom_y
	cp		vga_driver_x2		set_n_box_mm_bottom_x2
	cp 		vga_driver_y2		set_n_box_mm_bottom_y2
	cp		vga_driver_pixel	set_n_box_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :NAME BOX RIGHT
	cp		vga_driver_x		set_n_box_mm_right_x
	cp		vga_driver_y		set_n_box_mm_right_y
	cp		vga_driver_x2		set_n_box_mm_right_x2
	cp 		vga_driver_y2		set_n_box_mm_right_y2
	cp		vga_driver_pixel	set_n_box_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :NAME BOX LEFT
	cp		vga_driver_x		set_n_box_mm_left_x
	cp		vga_driver_y		set_n_box_mm_left_y
	cp		vga_driver_x2		set_n_box_mm_left_x2
	cp 		vga_driver_y2		set_n_box_mm_left_y2
	cp		vga_driver_pixel	set_n_box_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :NAME BOX LEFT TOP
	cp		vga_driver_x		set_n_box_mm_lt_x
	cp		vga_driver_y		set_n_box_mm_lt_y
	cp		vga_driver_x2		set_n_box_mm_lt_x2
	cp 		vga_driver_y2		set_n_box_mm_lt_y2
	cp		vga_driver_pixel	set_n_box_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :NAME BOX RIGHT BOTTOM
	cp		vga_driver_x		set_n_box_mm_rb_x
	cp		vga_driver_y		set_n_box_mm_rb_y
	cp		vga_driver_x2		set_n_box_mm_rb_x2
	cp 		vga_driver_y2		set_n_box_mm_rb_y2
	cp		vga_driver_pixel	set_n_box_mm_color
	call	vga_driver_set_xy	vga_driver_ret
	be		mmen				0							0

// Variables
set_n_box_mm_top_x		120
set_n_box_mm_top_y 		170
set_n_box_mm_top_x2		519
set_n_box_mm_top_y2		174

set_n_box_mm_bottom_x	120
set_n_box_mm_bottom_y 	225
set_n_box_mm_bottom_x2	519
set_n_box_mm_bottom_y2	229

set_n_box_mm_right_x 	515
set_n_box_mm_right_y 	170
set_n_box_mm_right_x2 	519
set_n_box_mm_right_y2 	229

set_n_box_mm_left_x 		120
set_n_box_mm_left_y 		170
set_n_box_mm_left_x2 	124
set_n_box_mm_left_y2 	229

set_n_box_mm_lt_x 		120
set_n_box_mm_lt_y 		170
set_n_box_mm_lt_x2 		129
set_n_box_mm_lt_y2 		179

set_n_box_mm_rb_x  		510
set_n_box_mm_rb_y  		220
set_n_box_mm_rb_x2  		519
set_n_box_mm_rb_y2  		229

set_n_box_mm_color		0xb0bec5

// END OF DRAWING BOX1

// SETTING ENTER NAME BOX

// :LETTER E
mmen	cp		draw_letter_scale				set_name_nb_scale5
		cp		draw_letter_letter				set_name_nb_letter_E
		cp		draw_letter_x					set_name_nb_num170
		cp 		draw_letter_y					set_name_nb_num178
		cp 		draw_letter_letter_color		set_name_nb_color_letter
		cp		draw_letter_background_color	set_name_nb_color_background
		call 	draw_letter_function			draw_letter_ret
// :LETTER N
	cp		draw_letter_x			set_name_nb_num200
	cp 		draw_letter_letter		set_name_nb_letter_N
	call 	draw_letter_function	draw_letter_ret
// :LETTER T
	cp		draw_letter_x			set_name_nb_num230
	cp 		draw_letter_letter		set_name_nb_letter_T
	call 	draw_letter_function	draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_name_nb_num260
	cp 		draw_letter_letter		set_name_nb_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER R
	cp		draw_letter_x			set_name_nb_num290
	cp 		draw_letter_letter		set_name_nb_letter_R
	call 	draw_letter_function	draw_letter_ret
// :LETTER N
	cp		draw_letter_x			set_name_nb_num350
	cp 		draw_letter_letter		set_name_nb_letter_N
	call 	draw_letter_function	draw_letter_ret
// :LETTER A
	cp		draw_letter_x			set_name_nb_num380
	cp 		draw_letter_letter		set_name_nb_letter_A
	call 	draw_letter_function	draw_letter_ret
// :LETTER M
	cp		draw_letter_x			set_name_nb_num410
	cp 		draw_letter_letter		set_name_nb_letter_M
	call 	draw_letter_function	draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_name_nb_num440
	cp 		draw_letter_letter		set_name_nb_letter_E
	call 	draw_letter_function	draw_letter_ret
	be 		mmb1					0					0

// Variables

// :Locations
set_name_nb_num178		178
set_name_nb_num170		170
set_name_nb_num200		200
set_name_nb_num230		230
set_name_nb_num260		260
set_name_nb_num290		290
set_name_nb_num350		350
set_name_nb_num380		380
set_name_nb_num410		410
set_name_nb_num440		440

// :Letters
set_name_nb_letter_E		69
set_name_nb_letter_N		78
set_name_nb_letter_T		84
set_name_nb_letter_R		82
set_name_nb_letter_A		65
set_name_nb_letter_M		77

// :Others
set_name_nb_scale5					5
set_name_nb_color_letter			0xb0bec5
set_name_nb_color_background		0x424242

// END OF SETTING ENTER NAME BOX


// DRAWING BOX1

// :BOX1 TOP
mmb1	cp		vga_driver_x		set_box1_mm_top_x
		cp		vga_driver_y		set_box1_mm_top_y
		cp		vga_driver_x2		set_box1_mm_top_x2
		cp 		vga_driver_y2		set_box1_mm_top_y2
		cp		vga_driver_pixel	set_box1_mm_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX1 BOTTOM
	cp		vga_driver_x		set_box1_mm_bottom_x
	cp		vga_driver_y		set_box1_mm_bottom_y
	cp		vga_driver_x2		set_box1_mm_bottom_x2
	cp 		vga_driver_y2		set_box1_mm_bottom_y2
	cp		vga_driver_pixel	set_box1_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 RIGHT
	cp		vga_driver_x		set_box1_mm_right_x
	cp		vga_driver_y		set_box1_mm_right_y
	cp		vga_driver_x2		set_box1_mm_right_x2
	cp 		vga_driver_y2		set_box1_mm_right_y2
	cp		vga_driver_pixel	set_box1_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 LEFT
	cp		vga_driver_x		set_box1_mm_left_x
	cp		vga_driver_y		set_box1_mm_left_y
	cp		vga_driver_x2		set_box1_mm_left_x2
	cp 		vga_driver_y2		set_box1_mm_left_y2
	cp		vga_driver_pixel	set_box1_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 LEFT TOP
	cp		vga_driver_x		set_box1_mm_lt_x
	cp		vga_driver_y		set_box1_mm_lt_y
	cp		vga_driver_x2		set_box1_mm_lt_x2
	cp 		vga_driver_y2		set_box1_mm_lt_y2
	cp		vga_driver_pixel	set_box1_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 RIGHT BOTTOM
	cp		vga_driver_x		set_box1_mm_rb_x
	cp		vga_driver_y		set_box1_mm_rb_y
	cp		vga_driver_x2		set_box1_mm_rb_x2
	cp 		vga_driver_y2		set_box1_mm_rb_y2
	cp		vga_driver_pixel	set_box1_mm_color
	call	vga_driver_set_xy	vga_driver_ret
	be		mmg1 				0							0

// Variables
set_box1_mm_top_x		200
set_box1_mm_top_y 		250
set_box1_mm_top_x2		439
set_box1_mm_top_y2		254

set_box1_mm_bottom_x	200
set_box1_mm_bottom_y 	305
set_box1_mm_bottom_x2	439
set_box1_mm_bottom_y2	309

set_box1_mm_right_x 	435
set_box1_mm_right_y 	250
set_box1_mm_right_x2 	439
set_box1_mm_right_y2 	309

set_box1_mm_left_x 		200
set_box1_mm_left_y 		250
set_box1_mm_left_x2 	204
set_box1_mm_left_y2 	309

set_box1_mm_lt_x 		200
set_box1_mm_lt_y 		250
set_box1_mm_lt_x2 		209
set_box1_mm_lt_y2 		259

set_box1_mm_rb_x  		430
set_box1_mm_rb_y  		300
set_box1_mm_rb_x2  		439
set_box1_mm_rb_y2  		309

set_box1_mm_color		0x84ffff

// END OF DRAWING BOX1

// SETTING GAME 1 BOX1

// :LETTER G
mmg1	cp		draw_letter_scale				set_game1_b1_scale5
		cp		draw_letter_letter				set_game1_b1_letter_G
		cp		draw_letter_x					set_game1_b1_num230
		cp 		draw_letter_y					set_game1_b1_num258
		cp 		draw_letter_letter_color		set_game1_b1_color_letter
		cp		draw_letter_background_color	set_game1_b1_color_background
		call 	draw_letter_function			draw_letter_ret
// :LETTER A
	cp		draw_letter_x			set_game1_b1_num260
	cp 		draw_letter_letter		set_game1_b1_letter_A
	call 	draw_letter_function	draw_letter_ret
// :LETTER M
	cp		draw_letter_x			set_game1_b1_num290
	cp 		draw_letter_letter		set_game1_b1_letter_M
	call 	draw_letter_function	draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_game1_b1_num320
	cp 		draw_letter_letter		set_game1_b1_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER 1
	cp		draw_letter_x			set_game1_b1_num380
	cp 		draw_letter_letter		set_game1_b1_letter_1
	call 	draw_letter_function	draw_letter_ret
	be 		mmb2					0					0

// Variables

// :Locations
set_game1_b1_num258		258
set_game1_b1_num230		230
set_game1_b1_num260		260
set_game1_b1_num290		290
set_game1_b1_num320		320
set_game1_b1_num380		380

// :Letters
set_game1_b1_letter_G		71
set_game1_b1_letter_A		65
set_game1_b1_letter_M		77
set_game1_b1_letter_E		69
set_game1_b1_letter_1		49


// :Others
set_game1_b1_scale5					5
set_game1_b1_color_letter			0x84ffff
set_game1_b1_color_background		0x424242

// END OF SETTING GAME 1 BOX1

// DRAWING BOX2

// :BOX2 TOP
mmb2	cp		vga_driver_x		set_box2_mm_top_x
		cp		vga_driver_y		set_box2_mm_top_y
		cp		vga_driver_x2		set_box2_mm_top_x2
		cp 		vga_driver_y2		set_box2_mm_top_y2
		cp		vga_driver_pixel	set_box2_mm_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX2 BOTTOM
	cp		vga_driver_x		set_box2_mm_bottom_x
	cp		vga_driver_y		set_box2_mm_bottom_y
	cp		vga_driver_x2		set_box2_mm_bottom_x2
	cp 		vga_driver_y2		set_box2_mm_bottom_y2
	cp		vga_driver_pixel	set_box2_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 RIGHT
	cp		vga_driver_x		set_box2_mm_right_x
	cp		vga_driver_y		set_box2_mm_right_y
	cp		vga_driver_x2		set_box2_mm_right_x2
	cp 		vga_driver_y2		set_box2_mm_right_y2
	cp		vga_driver_pixel	set_box2_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 LEFT
	cp		vga_driver_x		set_box2_mm_left_x
	cp		vga_driver_y		set_box2_mm_left_y
	cp		vga_driver_x2		set_box2_mm_left_x2
	cp 		vga_driver_y2		set_box2_mm_left_y2
	cp		vga_driver_pixel	set_box2_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 LEFT TOP
	cp		vga_driver_x		set_box2_mm_lt_x
	cp		vga_driver_y		set_box2_mm_lt_y
	cp		vga_driver_x2		set_box2_mm_lt_x2
	cp 		vga_driver_y2		set_box2_mm_lt_y2
	cp		vga_driver_pixel	set_box2_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 RIGHT BOTTOM
	cp		vga_driver_x		set_box2_mm_rb_x
	cp		vga_driver_y		set_box2_mm_rb_y
	cp		vga_driver_x2		set_box2_mm_rb_x2
	cp 		vga_driver_y2		set_box2_mm_rb_y2
	cp		vga_driver_pixel	set_box2_mm_color
	call	vga_driver_set_xy	vga_driver_ret
	be		mmg2				0							0

// Variables
set_box2_mm_top_x		200
set_box2_mm_top_y 		320
set_box2_mm_top_x2		439
set_box2_mm_top_y2		324

set_box2_mm_bottom_x	200
set_box2_mm_bottom_y 	375
set_box2_mm_bottom_x2	439
set_box2_mm_bottom_y2	379

set_box2_mm_right_x 	435
set_box2_mm_right_y 	320
set_box2_mm_right_x2 	439
set_box2_mm_right_y2 	379

set_box2_mm_left_x 		200
set_box2_mm_left_y 		320
set_box2_mm_left_x2 	204
set_box2_mm_left_y2 	379

set_box2_mm_lt_x 		200
set_box2_mm_lt_y 		320
set_box2_mm_lt_x2 		209
set_box2_mm_lt_y2 		329

set_box2_mm_rb_x  		430
set_box2_mm_rb_y  		370
set_box2_mm_rb_x2  		439
set_box2_mm_rb_y2  		379

set_box2_mm_color		0x84ffff

// END OF DRAWING BOX2

// SETTING GAME 2 BOX2

// :LETTER G
mmg2	cp		draw_letter_scale				set_game2_b2_scale5
		cp		draw_letter_letter				set_game2_b2_letter_G
		cp		draw_letter_x					set_game2_b2_num230
		cp 		draw_letter_y					set_game2_b2_num328
		cp 		draw_letter_letter_color		set_game2_b2_color_letter
		cp		draw_letter_background_color	set_game2_b2_color_background
		call 	draw_letter_function			draw_letter_ret
// :LETTER A
	cp		draw_letter_x			set_game2_b2_num260
	cp 		draw_letter_letter		set_game2_b2_letter_A
	call 	draw_letter_function	draw_letter_ret
// :LETTER M
	cp		draw_letter_x			set_game2_b2_num290
	cp 		draw_letter_letter		set_game2_b2_letter_M
	call 	draw_letter_function	draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_game2_b2_num320
	cp 		draw_letter_letter		set_game2_b2_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER 1
	cp		draw_letter_x			set_game2_b2_num380
	cp 		draw_letter_letter		set_game2_b2_letter_2
	call 	draw_letter_function	draw_letter_ret
	be 		mmb3					0					0

// Variables

// :Locations
set_game2_b2_num328		328
set_game2_b2_num230		230
set_game2_b2_num260		260
set_game2_b2_num290		290
set_game2_b2_num320		320
set_game2_b2_num380		380

// :Letters
set_game2_b2_letter_G		71
set_game2_b2_letter_A		65
set_game2_b2_letter_M		77
set_game2_b2_letter_E		69
set_game2_b2_letter_2		50


// :Others
set_game2_b2_scale5					5
set_game2_b2_color_letter			0x84ffff
set_game2_b2_color_background		0x424242

// END OF SETTING GAME 2 BOX2

// DRAWING BOX3

// :BOX3 TOP
mmb3	cp		vga_driver_x		set_box3_mm_top_x
		cp		vga_driver_y		set_box3_mm_top_y
		cp		vga_driver_x2		set_box3_mm_top_x2
		cp 		vga_driver_y2		set_box3_mm_top_y2
		cp		vga_driver_pixel	set_box3_mm_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX3 BOTTOM
	cp		vga_driver_x		set_box3_mm_bottom_x
	cp		vga_driver_y		set_box3_mm_bottom_y
	cp		vga_driver_x2		set_box3_mm_bottom_x2
	cp 		vga_driver_y2		set_box3_mm_bottom_y2
	cp		vga_driver_pixel	set_box3_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX3 RIGHT
	cp		vga_driver_x		set_box3_mm_right_x
	cp		vga_driver_y		set_box3_mm_right_y
	cp		vga_driver_x2		set_box3_mm_right_x2
	cp 		vga_driver_y2		set_box3_mm_right_y2
	cp		vga_driver_pixel	set_box3_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX3 LEFT
	cp		vga_driver_x		set_box3_mm_left_x
	cp		vga_driver_y		set_box3_mm_left_y
	cp		vga_driver_x2		set_box3_mm_left_x2
	cp 		vga_driver_y2		set_box3_mm_left_y2
	cp		vga_driver_pixel	set_box3_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX3 LEFT TOP
	cp		vga_driver_x		set_box3_mm_lt_x
	cp		vga_driver_y		set_box3_mm_lt_y
	cp		vga_driver_x2		set_box3_mm_lt_x2
	cp 		vga_driver_y2		set_box3_mm_lt_y2
	cp		vga_driver_pixel	set_box3_mm_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX3 RIGHT BOTTOM
	cp		vga_driver_x		set_box3_mm_rb_x
	cp		vga_driver_y		set_box3_mm_rb_y
	cp		vga_driver_x2		set_box3_mm_rb_x2
	cp 		vga_driver_y2		set_box3_mm_rb_y2
	cp		vga_driver_pixel	set_box3_mm_color
	call	vga_driver_set_xy	vga_driver_ret
	be		mmg3				0							0

// Variables
set_box3_mm_top_x		200
set_box3_mm_top_y 		390
set_box3_mm_top_x2		439
set_box3_mm_top_y2		394

set_box3_mm_bottom_x	200
set_box3_mm_bottom_y 	445
set_box3_mm_bottom_x2	439
set_box3_mm_bottom_y2	449

set_box3_mm_right_x 	435
set_box3_mm_right_y 	390
set_box3_mm_right_x2 	439
set_box3_mm_right_y2 	449

set_box3_mm_left_x 		200
set_box3_mm_left_y 		390
set_box3_mm_left_x2 	204
set_box3_mm_left_y2 	449

set_box3_mm_lt_x 		200
set_box3_mm_lt_y 		390
set_box3_mm_lt_x2 		209
set_box3_mm_lt_y2 		399

set_box3_mm_rb_x  		430
set_box3_mm_rb_y  		440
set_box3_mm_rb_x2  		439
set_box3_mm_rb_y2  		449

set_box3_mm_color		0x84ffff

// END OF DRAWING BOX2

// SETTING GAME 3 BOX3

// :LETTER G
mmg3	cp		draw_letter_scale				set_game3_b3_scale5
		cp		draw_letter_letter				set_game3_b3_letter_G
		cp		draw_letter_x					set_game3_b3_num230
		cp 		draw_letter_y					set_game3_b3_num398
		cp 		draw_letter_letter_color		set_game3_b3_color_letter
		cp		draw_letter_background_color	set_game3_b3_color_background
		call 	draw_letter_function			draw_letter_ret
// :LETTER A
	cp		draw_letter_x			set_game3_b3_num260
	cp 		draw_letter_letter		set_game3_b3_letter_A
	call 	draw_letter_function	draw_letter_ret
// :LETTER M
	cp		draw_letter_x			set_game3_b3_num290
	cp 		draw_letter_letter		set_game3_b3_letter_M
	call 	draw_letter_function	draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_game3_b3_num320
	cp 		draw_letter_letter		set_game3_b3_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER 1
	cp		draw_letter_x			set_game3_b3_num380
	cp 		draw_letter_letter		set_game3_b3_letter_3
	call 	draw_letter_function	draw_letter_ret
	be 		mm7						0					0

// Variables

// :Locations
set_game3_b3_num398		398
set_game3_b3_num230		230
set_game3_b3_num260		260
set_game3_b3_num290		290
set_game3_b3_num320		320
set_game3_b3_num380		380

// :Letters
set_game3_b3_letter_G		71
set_game3_b3_letter_A		65
set_game3_b3_letter_M		77
set_game3_b3_letter_E		69
set_game3_b3_letter_3		51


// :Others
set_game3_b3_scale5			5
set_game3_b3_color_letter			0x84ffff
set_game3_b3_color_background		0x424242

// END OF SETTING GAME 3 BOX3


// BRANCH TO GAME 1, 2, OR 3

mm7			be	game_branching_begin		0			0
// --checks where we tapped and goes to that corresponding branch
game_branching_begin	call	ts_driver_set_command_on	ts_driver_return_address

game_branching_check	be	game_branching_read		ts_driver_pressed	game_branching_num1
			be	game_branching_begin		0			0
game_branching_read	cp	game_branching_x		ts_driver_x_loc
			cp	game_branching_y		ts_driver_y_loc
game_branching_branch	be	game1_check			0			0
game1_check		blt	game2_check			game_branching_x	gbset_box1_x
			blt	game2_check			gbset_box1_x2		game_branching_x
			blt	game2_check			game_branching_y	gbset_box1_y
			blt	game2_check			gbset_box1_y2		game_branching_y
			be	game_branching_game1		0			0
game2_check		blt	game3_check			game_branching_x	gbset_box2_x
			blt	game3_check			gbset_box2_x2		game_branching_x
			blt	game3_check			game_branching_y	gbset_box2_y
			blt	game3_check			gbset_box2_y2		game_branching_y
			be	game_branching_game2		0			0
game3_check		blt	type_name_check			game_branching_x	gbset_box3_x
			blt	type_name_check			gbset_box3_x2		game_branching_x
			blt	type_name_check			game_branching_y	gbset_box3_y
			blt	type_name_check			gbset_box3_y2		game_branching_y
			be	game_branching_game3		0			0
type_name_check		blt	game_branching_begin		game_branching_x	gbset_name_box_x
			blt	game_branching_begin		gbset_name_box_x2	game_branching_x
			blt	game_branching_begin		game_branching_y	gbset_name_box_y
			blt	game_branching_begin		gbset_name_box_y2	game_branching_y
			be	game_branching_type_name	0			0



game_branching_game1		be	mainmenu_game1			0			0
game_branching_game2		be	game_two_start	0 	0
game_branching_game3		be	g3instr_begin			0			0
game_branching_type_name	call t2s_run_begin text_to_speech_ret
													be mm1 0 0

// :Variables
game_branching_x	0
game_branching_y	0
game_branching_num0	0
game_branching_num1	0
gbset_box1_x		190
gbset_box1_y		250
gbset_box1_x2		449
gbset_box1_y2		299
gbset_box2_x		190
gbset_box2_y		320
gbset_box2_x2		449
gbset_box2_y2		369
gbset_box3_y		390
gbset_box3_x		190
gbset_box3_x2		449
gbset_box3_y2		439
gbset_name_box_x	120
gbset_name_box_y	170
gbset_name_box_x2	519
gbset_name_box_y2	219



// VERY IMPORTANT VARIABLES
current_game		0

// END OF BRANCH TO GAME


// END OF PROGRAM

mm_end	halt

#include	../game_one_type_alphabet/mainmenu_game1.e 			mainmenu_game1
#include ../font/draw_letter.e 									draw_letter
// #include ../drivers etc. etc.								vga_driver
// #include game_one_type_alphabet.e 							game_one_alphabet
// #include ../../Lab/Lab8/keyboard_driver/keyboard_driver.e 	keyboard_driver
#include	../drivers/ts_driver/ts_driver.e 					ts_driver.e
#include ../other_menus/loss_menu.e 							loss_menu
#include ../other_menus/win_menu.e 								win_menu
#include ../game_three_scrolling_colors/game_three_scrolling_colors.e
#include ../text_to_speech/text_to_speech_run.e
#include ../game_two_type_sentence/game_two.e
