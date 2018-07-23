// WRITTEN BY MARIA KHALAF
// SETTING BACKGROUND TO COLOR CHARCOAL GREY

optb	cp 		vga_driver_x2 		set_background_opt_num639
		cp 		vga_driver_y2		set_background_opt_num479
		cp		vga_driver_pixel	set_background_opt_color_charcoal_grey
		call	vga_driver_set_xy	vga_driver_ret
		be		optbod				0									0

// Variables
set_background_opt_num639				639
set_background_opt_num479				479
set_background_opt_color_charcoal_grey	0x424242

// END OF SETTING BACKGROUND COLOR

// DRAWING BORDER

// :BORDER TOP
optbod	cp		vga_driver_x		set_border_opt_top_x
		cp		vga_driver_y		set_border_opt_top_y
		cp		vga_driver_x2		set_border_opt_top_x2
		cp 		vga_driver_y2		set_border_opt_top_y2
		cp		vga_driver_pixel	set_border_opt_color
		call	vga_driver_set_xy	vga_driver_ret
// :BORDER BOTTOM
	cp		vga_driver_x		set_border_opt_bottom_x
	cp		vga_driver_y		set_border_opt_bottom_y
	cp		vga_driver_x2		set_border_opt_bottom_x2
	cp 		vga_driver_y2		set_border_opt_bottom_y2
	cp		vga_driver_pixel	set_border_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT
	cp		vga_driver_x		set_border_opt_right_x
	cp		vga_driver_y		set_border_opt_right_y
	cp		vga_driver_x2		set_border_opt_right_x2
	cp 		vga_driver_y2		set_border_opt_right_y2
	cp		vga_driver_pixel	set_border_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT
	cp		vga_driver_x		set_border_opt_left_x
	cp		vga_driver_y		set_border_opt_left_y
	cp		vga_driver_x2		set_border_opt_left_x2
	cp 		vga_driver_y2		set_border_opt_left_y2
	cp		vga_driver_pixel	set_border_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT TOP
	cp		vga_driver_x		set_border_opt_lt_x
	cp		vga_driver_y		set_border_opt_lt_y
	cp		vga_driver_x2		set_border_opt_lt_x2
	cp 		vga_driver_y2		set_border_opt_lt_y2
	cp		vga_driver_pixel	set_border_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT TOP
	cp		vga_driver_x		set_border_opt_rt_x
	cp		vga_driver_y		set_border_opt_rt_y
	cp		vga_driver_x2		set_border_opt_rt_x2
	cp 		vga_driver_y2		set_border_opt_rt_y2
	cp		vga_driver_pixel	set_border_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT BOTTOM
	cp		vga_driver_x		set_border_opt_lb_x
	cp		vga_driver_y		set_border_opt_lb_y
	cp		vga_driver_x2		set_border_opt_lb_x2
	cp 		vga_driver_y2		set_border_opt_lb_y2
	cp		vga_driver_pixel	set_border_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT BOTTOM
	cp		vga_driver_x		set_border_opt_rb_x
	cp		vga_driver_y		set_border_opt_rb_y
	cp		vga_driver_x2		set_border_opt_rb_x2
	cp 		vga_driver_y2		set_border_opt_rb_y2
	cp		vga_driver_pixel	set_border_opt_color
	call	vga_driver_set_xy	vga_driver_ret
	be		optlog				0							0

// Variables
set_border_opt_top_x		0
set_border_opt_top_y 		0
set_border_opt_top_x2		639
set_border_opt_top_y2		9

set_border_opt_bottom_x		0
set_border_opt_bottom_y 	470
set_border_opt_bottom_x2	630
set_border_opt_bottom_y2	479

set_border_opt_right_x 		630
set_border_opt_right_y 		0
set_border_opt_right_x2 	639
set_border_opt_right_y2 	479

set_border_opt_left_x 		0
set_border_opt_left_y 		0
set_border_opt_left_x2 		9
set_border_opt_left_y2 		479

set_border_opt_lt_x 		0
set_border_opt_lt_y 		0
set_border_opt_lt_x2 		19
set_border_opt_lt_y2 		19

set_border_opt_rt_x 		620
set_border_opt_rt_y 		0
set_border_opt_rt_x2 		639
set_border_opt_rt_y2 		19

set_border_opt_lb_x 		0
set_border_opt_lb_y 		460
set_border_opt_lb_x2 		19
set_border_opt_lb_y2 		479

set_border_opt_rb_x  		620
set_border_opt_rb_y  		460
set_border_opt_rb_x2  		639
set_border_opt_rb_y2  		479

set_border_opt_color		0x84ffff

// END OF DRAWING BORDER

// SETTING OPTIONS LOGO

// :LETTER O
optlog	cp		draw_letter_scale				set_logo_opt_scale10
		cp		draw_letter_letter				set_logo_opt_letter_O
		cp		draw_letter_x					set_logo_opt_num110
		cp 		draw_letter_y					set_logo_opt_num90
		cp 		draw_letter_letter_color		set_logo_opt_color_letter
		cp		draw_letter_background_color	set_logo_opt_color_background
		call 	draw_letter_function			draw_letter_ret
// :LETTER P
	cp		draw_letter_x			set_logo_opt_num170
	cp 		draw_letter_letter		set_logo_opt_letter_P
	call 	draw_letter_function	draw_letter_ret
// :LETTER T
	cp		draw_letter_x			set_logo_opt_num230
	cp 		draw_letter_letter		set_logo_opt_letter_T
	call 	draw_letter_function	draw_letter_ret
// :LETTER I
	cp		draw_letter_x			set_logo_opt_num290
	cp 		draw_letter_letter		set_logo_opt_letter_I
	call 	draw_letter_function	draw_letter_ret
// :LETTER O
	cp		draw_letter_x			set_logo_opt_num350
	cp 		draw_letter_letter		set_logo_opt_letter_O
	call 	draw_letter_function	draw_letter_ret
// :LETTER N
	cp		draw_letter_x			set_logo_opt_num410
	cp 		draw_letter_letter		set_logo_opt_letter_N
	call 	draw_letter_function	draw_letter_ret
// :LETTER S
	cp		draw_letter_x			set_logo_opt_num470
	cp 		draw_letter_letter		set_logo_opt_letter_S
	call 	draw_letter_function	draw_letter_ret
	be 		optb1					0					0

// Variables

// :Locations
set_logo_opt_num90			90
set_logo_opt_num110			110
set_logo_opt_num170			170
set_logo_opt_num230			230
set_logo_opt_num290			290
set_logo_opt_num350			350
set_logo_opt_num410			410
set_logo_opt_num470			470

// :Letters
set_logo_opt_letter_O		79
set_logo_opt_letter_P		80
set_logo_opt_letter_T		84
set_logo_opt_letter_I		73
set_logo_opt_letter_N		78
set_logo_opt_letter_S		83


// :Others
set_logo_opt_scale10			10
set_logo_opt_color_letter		0x84ffff
set_logo_opt_color_background	0x424242

// END OF SETTING OPTIONS LOGO

// DRAWING BOX1

// :BOX1 TOP
optb1	cp		vga_driver_x		set_box1_opt_top_x
		cp		vga_driver_y		set_box1_opt_top_y
		cp		vga_driver_x2		set_box1_opt_top_x2
		cp 		vga_driver_y2		set_box1_opt_top_y2
		cp		vga_driver_pixel	set_box1_opt_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX1 BOTTOM
	cp		vga_driver_x		set_box1_opt_bottom_x
	cp		vga_driver_y		set_box1_opt_bottom_y
	cp		vga_driver_x2		set_box1_opt_bottom_x2
	cp 		vga_driver_y2		set_box1_opt_bottom_y2
	cp		vga_driver_pixel	set_box1_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 RIGHT
	cp		vga_driver_x		set_box1_opt_right_x
	cp		vga_driver_y		set_box1_opt_right_y
	cp		vga_driver_x2		set_box1_opt_right_x2
	cp 		vga_driver_y2		set_box1_opt_right_y2
	cp		vga_driver_pixel	set_box1_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 LEFT
	cp		vga_driver_x		set_box1_opt_left_x
	cp		vga_driver_y		set_box1_opt_left_y
	cp		vga_driver_x2		set_box1_opt_left_x2
	cp 		vga_driver_y2		set_box1_opt_left_y2
	cp		vga_driver_pixel	set_box1_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 LEFT TOP
	cp		vga_driver_x		set_box1_opt_lt_x
	cp		vga_driver_y		set_box1_opt_lt_y
	cp		vga_driver_x2		set_box1_opt_lt_x2
	cp 		vga_driver_y2		set_box1_opt_lt_y2
	cp		vga_driver_pixel	set_box1_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX1 RIGHT BOTTOM
	cp		vga_driver_x		set_box1_opt_rb_x
	cp		vga_driver_y		set_box1_opt_rb_y
	cp		vga_driver_x2		set_box1_opt_rb_x2
	cp 		vga_driver_y2		set_box1_opt_rb_y2
	cp		vga_driver_pixel	set_box1_opt_color
	call	vga_driver_set_xy	vga_driver_ret
	be		optres1				0							0

// Variables
set_box1_opt_top_x		160
set_box1_opt_top_y 		210
set_box1_opt_top_x2		479
set_box1_opt_top_y2		214

set_box1_opt_bottom_x	160
set_box1_opt_bottom_y 	265
set_box1_opt_bottom_x2	479
set_box1_opt_bottom_y2	269

set_box1_opt_right_x 	475
set_box1_opt_right_y 	210
set_box1_opt_right_x2 	479
set_box1_opt_right_y2 	269

set_box1_opt_left_x 	160
set_box1_opt_left_y 	210
set_box1_opt_left_x2 	164
set_box1_opt_left_y2 	269

set_box1_opt_lt_x 		160
set_box1_opt_lt_y 		210
set_box1_opt_lt_x2 		169
set_box1_opt_lt_y2 		219

set_box1_opt_rb_x  		470
set_box1_opt_rb_y  		260
set_box1_opt_rb_x2  	479
set_box1_opt_rb_y2  	269

set_box1_opt_color		0xb0bec5

// END OF DRAWING BOX1

// SETTING RESUME BOX1

// :LETTER R
optres1	cp		draw_letter_scale				set_resume_b1_scale5
		cp		draw_letter_letter				set_resume_b1_letter_R
		cp		draw_letter_x					set_resume_b1_num230
		cp 		draw_letter_y					set_resume_b1_num218
		cp 		draw_letter_letter_color		set_resume_b1_color_letter
		cp		draw_letter_background_color	set_resume_b1_color_background
		call 	draw_letter_function			draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_resume_b1_num260
	cp 		draw_letter_letter		set_resume_b1_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER S
	cp		draw_letter_x			set_resume_b1_num290
	cp 		draw_letter_letter		set_resume_b1_letter_S
	call 	draw_letter_function	draw_letter_ret
// :LETTER U
	cp		draw_letter_x			set_resume_b1_num320
	cp 		draw_letter_letter		set_resume_b1_letter_U
	call 	draw_letter_function	draw_letter_ret
// :LETTER M
	cp		draw_letter_x			set_resume_b1_num350
	cp 		draw_letter_letter		set_resume_b1_letter_M
	call 	draw_letter_function	draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_resume_b1_num380
	cp 		draw_letter_letter		set_resume_b1_letter_E
	call 	draw_letter_function	draw_letter_ret
	be 		optb2					0					0

// Variables

// :Locations
set_resume_b1_num218		218
set_resume_b1_num230		230
set_resume_b1_num260		260
set_resume_b1_num290		290
set_resume_b1_num320		320
set_resume_b1_num350		350
set_resume_b1_num380		380

// :Letters
set_resume_b1_letter_R		82
set_resume_b1_letter_E		69
set_resume_b1_letter_S		83
set_resume_b1_letter_U		85
set_resume_b1_letter_M		77


// :Others
set_resume_b1_scale5			5
set_resume_b1_color_letter		0x84ffff
set_resume_b1_color_background	0x424242

// END OF SETTING RESUME BOX1


// DRAWING BOX2

// :BOX2 TOP
optb2	cp		vga_driver_x		set_box2_opt_top_x
		cp		vga_driver_y		set_box2_opt_top_y
		cp		vga_driver_x2		set_box2_opt_top_x2
		cp 		vga_driver_y2		set_box2_opt_top_y2
		cp		vga_driver_pixel	set_box2_opt_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX2 BOTTOM
	cp		vga_driver_x		set_box2_opt_bottom_x
	cp		vga_driver_y		set_box2_opt_bottom_y
	cp		vga_driver_x2		set_box2_opt_bottom_x2
	cp 		vga_driver_y2		set_box2_opt_bottom_y2
	cp		vga_driver_pixel	set_box2_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 RIGHT
	cp		vga_driver_x		set_box2_opt_right_x
	cp		vga_driver_y		set_box2_opt_right_y
	cp		vga_driver_x2		set_box2_opt_right_x2
	cp 		vga_driver_y2		set_box2_opt_right_y2
	cp		vga_driver_pixel	set_box2_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 LEFT
	cp		vga_driver_x		set_box2_opt_left_x
	cp		vga_driver_y		set_box2_opt_left_y
	cp		vga_driver_x2		set_box2_opt_left_x2
	cp 		vga_driver_y2		set_box2_opt_left_y2
	cp		vga_driver_pixel	set_box2_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 LEFT TOP
	cp		vga_driver_x		set_box2_opt_lt_x
	cp		vga_driver_y		set_box2_opt_lt_y
	cp		vga_driver_x2		set_box2_opt_lt_x2
	cp 		vga_driver_y2		set_box2_opt_lt_y2
	cp		vga_driver_pixel	set_box2_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX2 RIGHT BOTTOM
	cp		vga_driver_x		set_box2_opt_rb_x
	cp		vga_driver_y		set_box2_opt_rb_y
	cp		vga_driver_x2		set_box2_opt_rb_x2
	cp 		vga_driver_y2		set_box2_opt_rb_y2
	cp		vga_driver_pixel	set_box2_opt_color
	call	vga_driver_set_xy	vga_driver_ret
	be		optrep2				0							0

// Variables
set_box2_opt_top_x		160
set_box2_opt_top_y 		290
set_box2_opt_top_x2		479
set_box2_opt_top_y2		294

set_box2_opt_bottom_x	160
set_box2_opt_bottom_y 	345
set_box2_opt_bottom_x2	479
set_box2_opt_bottom_y2	349

set_box2_opt_right_x 	475
set_box2_opt_right_y 	290
set_box2_opt_right_x2 	479
set_box2_opt_right_y2 	349

set_box2_opt_left_x 	160
set_box2_opt_left_y 	290
set_box2_opt_left_x2 	164
set_box2_opt_left_y2 	349

set_box2_opt_lt_x 		160
set_box2_opt_lt_y 		290
set_box2_opt_lt_x2 		169
set_box2_opt_lt_y2 		299

set_box2_opt_rb_x  		470
set_box2_opt_rb_y  		340
set_box2_opt_rb_x2  	479
set_box2_opt_rb_y2  	349

set_box2_opt_color		0xb0bec5

// END OF DRAWING BOX2


// SETTING REPLAY BOX2

// :LETTER R
optrep2	cp		draw_letter_scale				set_replay_b2_scale5
		cp		draw_letter_letter				set_replay_b2_letter_R
		cp		draw_letter_x					set_replay_b2_num230
		cp 		draw_letter_y					set_replay_b2_num298
		cp 		draw_letter_letter_color		set_replay_b2_color_letter
		cp		draw_letter_background_color	set_replay_b2_color_background
		call 	draw_letter_function			draw_letter_ret
// :LETTER E
	cp		draw_letter_x			set_replay_b2_num260
	cp 		draw_letter_letter		set_replay_b2_letter_E
	call 	draw_letter_function	draw_letter_ret
// :LETTER P
	cp		draw_letter_x			set_replay_b2_num290
	cp 		draw_letter_letter		set_replay_b2_letter_P
	call 	draw_letter_function	draw_letter_ret
// :LETTER L
	cp		draw_letter_x			set_replay_b2_num320
	cp 		draw_letter_letter		set_replay_b2_letter_L
	call 	draw_letter_function	draw_letter_ret
// :LETTER A
	cp		draw_letter_x			set_replay_b2_num350
	cp 		draw_letter_letter		set_replay_b2_letter_A
	call 	draw_letter_function	draw_letter_ret
// :LETTER Y
	cp		draw_letter_x			set_replay_b2_num380
	cp 		draw_letter_letter		set_replay_b2_letter_Y
	call 	draw_letter_function	draw_letter_ret
	be 		optb3					0					0

// Variables

// :Locations
set_replay_b2_num298			298
set_replay_b2_num230			230
set_replay_b2_num260			260
set_replay_b2_num290			290
set_replay_b2_num320			320
set_replay_b2_num350			350
set_replay_b2_num380			380

// :Letters
set_replay_b2_letter_R		82
set_replay_b2_letter_E		69
set_replay_b2_letter_P		80
set_replay_b2_letter_L		76
set_replay_b2_letter_A		65
set_replay_b2_letter_Y		89

// :Others
set_replay_b2_scale5			5
set_replay_b2_color_letter		0x84ffff
set_replay_b2_color_background	0x424242

// END OF SETTING REPLAY BOX2

// DRAWING BOX3

// :BOX3 TOP
optb3	cp		vga_driver_x		set_box3_opt_top_x
		cp		vga_driver_y		set_box3_opt_top_y
		cp		vga_driver_x2		set_box3_opt_top_x2
		cp 		vga_driver_y2		set_box3_opt_top_y2
		cp		vga_driver_pixel	set_box3_opt_color
		call	vga_driver_set_xy	vga_driver_ret
// :BOX3 BOTTOM
	cp		vga_driver_x		set_box3_opt_bottom_x
	cp		vga_driver_y		set_box3_opt_bottom_y
	cp		vga_driver_x2		set_box3_opt_bottom_x2
	cp 		vga_driver_y2		set_box3_opt_bottom_y2
	cp		vga_driver_pixel	set_box3_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX3 RIGHT
	cp		vga_driver_x		set_box3_opt_right_x
	cp		vga_driver_y		set_box3_opt_right_y
	cp		vga_driver_x2		set_box3_opt_right_x2
	cp 		vga_driver_y2		set_box3_opt_right_y2
	cp		vga_driver_pixel	set_box3_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX3 LEFT
	cp		vga_driver_x		set_box3_opt_left_x
	cp		vga_driver_y		set_box3_opt_left_y
	cp		vga_driver_x2		set_box3_opt_left_x2
	cp 		vga_driver_y2		set_box3_opt_left_y2
	cp		vga_driver_pixel	set_box3_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX3 LEFT TOP
	cp		vga_driver_x		set_box3_opt_lt_x
	cp		vga_driver_y		set_box3_opt_lt_y
	cp		vga_driver_x2		set_box3_opt_lt_x2
	cp 		vga_driver_y2		set_box3_opt_lt_y2
	cp		vga_driver_pixel	set_box3_opt_color
	call	vga_driver_set_xy	vga_driver_ret
// :BOX3 RIGHT BOTTOM
	cp		vga_driver_x		set_box3_opt_rb_x
	cp		vga_driver_y		set_box3_opt_rb_y
	cp		vga_driver_x2		set_box3_opt_rb_x2
	cp 		vga_driver_y2		set_box3_opt_rb_y2
	cp		vga_driver_pixel	set_box3_opt_color
	call	vga_driver_set_xy	vga_driver_ret
	be		optex3				0							0

// Variables
set_box3_opt_top_x		160
set_box3_opt_top_y 		370
set_box3_opt_top_x2		479
set_box3_opt_top_y2		374

set_box3_opt_bottom_x	160
set_box3_opt_bottom_y 	425
set_box3_opt_bottom_x2	479
set_box3_opt_bottom_y2	429

set_box3_opt_right_x 	475
set_box3_opt_right_y 	370
set_box3_opt_right_x2 	479
set_box3_opt_right_y2 	429

set_box3_opt_left_x 	160
set_box3_opt_left_y 	370
set_box3_opt_left_x2 	164
set_box3_opt_left_y2 	429

set_box3_opt_lt_x 		160
set_box3_opt_lt_y 		370
set_box3_opt_lt_x2 		169
set_box3_opt_lt_y2 		379

set_box3_opt_rb_x  		470
set_box3_opt_rb_y  		420
set_box3_opt_rb_x2  	479
set_box3_opt_rb_y2  	429

set_box3_opt_color		0xb0bec5

// END OF DRAWING BOX3

// SETTING EXIT BOX3

// :LETTER E
optex3	cp		draw_letter_scale				set_exit_b3_scale5
		cp		draw_letter_letter				set_exit_b3_letter_E
		cp		draw_letter_x					set_exit_b3_num260
		cp 		draw_letter_y					set_exit_b3_num378
		cp 		draw_letter_letter_color		set_exit_b3_color_letter
		cp		draw_letter_background_color	set_exit_b3_color_background
		call 	draw_letter_function			draw_letter_ret
// :LETTER X
	cp		draw_letter_x			set_exit_b3_num290
	cp 		draw_letter_letter		set_exit_b3_letter_X
	call 	draw_letter_function	draw_letter_ret
// :LETTER I
	cp		draw_letter_x			set_exit_b3_num320
	cp 		draw_letter_letter		set_exit_b3_letter_I
	call 	draw_letter_function	draw_letter_ret
// :LETTER T
	cp		draw_letter_x			set_exit_b3_num350
	cp 		draw_letter_letter		set_exit_b3_letter_T
	call 	draw_letter_function	draw_letter_ret
	be		opt_end					0							0

// Variables

// :Locations
set_exit_b3_num378			378
set_exit_b3_num260			260
set_exit_b3_num290			290
set_exit_b3_num320			320
set_exit_b3_num350			350

// :Letters
set_exit_b3_letter_E		69
set_exit_b3_letter_X		88
set_exit_b3_letter_I		73
set_exit_b3_letter_T		84

// :Others
set_exit_b3_scale5				5
set_exit_b3_color_letter		0x84ffff
set_exit_b3_color_background	0x424242

// END OF SETTING EXIT BOX3

// END OF PROGRAM

opt_end		halt

#include ../font/draw_letter.e
