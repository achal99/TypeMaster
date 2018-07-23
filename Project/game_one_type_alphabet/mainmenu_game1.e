// WRITTEN BY MAC YOUNG AND MARIA KHALAF
// SETTING BACKROUND TO COLOR CHARCOAL GREY
mainmenu_game1		be			g1s		0		0
g1s	cp 		vga_driver_x2 		g1set_backround_num639
	cp		current_game		g3_num0
	cp 		vga_driver_y2		g1set_backround_num479
	cp 		vga_driver_x 		g1set_backround_num0
	cp 		vga_driver_y		g1set_backround_num0
	cp		vga_driver_pixel	g1set_backround_color_charcoal_grey
	call	vga_driver_set_xy	vga_driver_ret
	be		g1b					0		0

// Variables
g1set_backround_num0				0
g1set_backround_num639				639
g1set_backround_num479				479
g1set_backround_color_charcoal_grey	0x424242

// END OF SETTING BACKROUND COLOR

// DRAWING BORDER

// :BORDER TOP
g1b	cp		vga_driver_x		g1set_border_top_x
	cp		vga_driver_y		g1set_border_top_y
	cp		vga_driver_x2		g1set_border_top_x2
	cp 		vga_driver_y2		g1set_border_top_y2
	cp		vga_driver_pixel	g1set_border_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER BOTTOM
	cp		vga_driver_x		g1set_border_bottom_x
	cp		vga_driver_y		g1set_border_bottom_y
	cp		vga_driver_x2		g1set_border_bottom_x2
	cp 		vga_driver_y2		g1set_border_bottom_y2
	cp		vga_driver_pixel	g1set_border_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT
	cp		vga_driver_x		g1set_border_right_x
	cp		vga_driver_y		g1set_border_right_y
	cp		vga_driver_x2		g1set_border_right_x2
	cp 		vga_driver_y2		g1set_border_right_y2
	cp		vga_driver_pixel	g1set_border_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT
	cp		vga_driver_x		g1set_border_left_x
	cp		vga_driver_y		g1set_border_left_y
	cp		vga_driver_x2		g1set_border_left_x2
	cp 		vga_driver_y2		g1set_border_left_y2
	cp		vga_driver_pixel	g1set_border_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT TOP
	cp		vga_driver_x		g1set_border_lt_x
	cp		vga_driver_y		g1set_border_lt_y
	cp		vga_driver_x2		g1set_border_lt_x2
	cp 		vga_driver_y2		g1set_border_lt_y2
	cp		vga_driver_pixel	g1set_border_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT TOP
	cp		vga_driver_x		g1set_border_rt_x
	cp		vga_driver_y		g1set_border_rt_y
	cp		vga_driver_x2		g1set_border_rt_x2
	cp 		vga_driver_y2		g1set_border_rt_y2
	cp		vga_driver_pixel	g1set_border_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER LEFT BOTTOM
	cp		vga_driver_x		g1set_border_lb_x
	cp		vga_driver_y		g1set_border_lb_y
	cp		vga_driver_x2		g1set_border_lb_x2
	cp 		vga_driver_y2		g1set_border_lb_y2
	cp		vga_driver_pixel	g1set_border_color
	call	vga_driver_set_xy	vga_driver_ret
// :BORDER RIGHT BOTTOM
	cp		vga_driver_x		g1set_border_rb_x
	cp		vga_driver_y		g1set_border_rb_y
	cp		vga_driver_x2		g1set_border_rb_x2
	cp 		vga_driver_y2		g1set_border_rb_y2
	cp		vga_driver_pixel	g1set_border_color
	call	vga_driver_set_xy	vga_driver_ret
	be		game1in					0							0

// Variables
g1set_border_top_x		0
g1set_border_top_y 		0
g1set_border_top_x2		639
g1set_border_top_y2		9

g1set_border_bottom_x		0
g1set_border_bottom_y 	470
g1set_border_bottom_x2	630
g1set_border_bottom_y2	479

g1set_border_right_x 		630
g1set_border_right_y 		0
g1set_border_right_x2 	639
g1set_border_right_y2 	479

g1set_border_left_x 		0
g1set_border_left_y 		0
g1set_border_left_x2 		9
g1set_border_left_y2 		479

g1set_border_lt_x 		0
g1set_border_lt_y 		0
g1set_border_lt_x2 		19
g1set_border_lt_y2 		19

g1set_border_rt_x 		620
g1set_border_rt_y 		0
g1set_border_rt_x2 		639
g1set_border_rt_y2 		19

g1set_border_lb_x 		0
g1set_border_lb_y 		460
g1set_border_lb_x2 		19
g1set_border_lb_y2 		479

g1set_border_rb_x  		620
g1set_border_rb_y  		460
g1set_border_rb_x2  		639
g1set_border_rb_y2  		479

g1set_border_color		0x84ffff

// END OF DRAWING BORDER
game1in	cp	game1i_text_i	g3_num0
	cp	game1i_x		g1i29




game1	be	g1l 	game1i_text_i	g1i97
		cp	draw_letter_scale	g1i1
		cpfa		game1i_letter	game1i	game1i_text_i
		cp	draw_letter_letter	game1i_letter
		cp	draw_letter_x	game1i_x
		cp	draw_letter_y	g1i39
		cp	draw_letter_letter_color	g1x_letter_color
		cp	draw_letter_background_color		g1_charcoal_grey
		call	draw_letter_function	draw_letter_ret
		add	game1i_text_i	game1i_text_i	g3_num1
		add	game1i_x	game1i_x	g1i6
		be	game1	0	0



//VARS
game1i_text_i	0
game1i_letter	0
game1i_x		29
g1i97			97
g1i1 			1
g1i29 			29
g1i39 			39
g1i6			6
g1_charcoal_grey    0x424242
g1x_letter_color	0xb0bec5
//ARR
game1i 84
 121
 112
 101
 32
 105
 110
 32
 116
 104
 101
 32
 97
 108
 112
 104
 97
 98
 101
 116
 32
 115
 116
 97
 114
 116
 105
 110
 103
 32
 102
 114
 111
 109
 32
 97
 32
 97
 108
 108
 32
 116
 104
 101
 32
 119
 97
 121
 32
 116
 111
 32
  122
 46
  32
 89
 111
 117
 32
 97
  114
 101
 32
 97
  108
 108
 111
 119
 101
 100
 32
 116
 104
 114
 101
  101
 32
 109
 105
  115
 116
 97
 107
 101
 115
 46
 32
 71
 111
 111
 100
 32
 108
 117
 99
 107
 33


// DISPLAY LETTER

g1l	cp		game_one_scale					g1set_logo_scale
	cp		game_one_xcoord					g1set_letter_num_230
	cp 		game_one_ycoord					g1set_letter_num_50
	cp 		game_one_color_letter				g1set_letter_color
	cp		game_one_backround_letter			g1set_letter_color_backround
	be		game_one_type_alphabet		0		0

// Variables

// :Locations
g1set_letter_num_230			230
g1set_letter_num_50			50

// :Letters
g1set_logo_letter 			64

// :Others
g1set_logo_scale				40
g1set_letter_color			 0x84ffff
g1set_letter_color_backround	0x424242

// END OF DISPLAY LETTER

// DRAWING LIVES

// :FIRST x
g1x1 	cp		draw_letter_scale				set_lives_scale
	cp		draw_letter_letter				set_lives_letter
	cp		draw_letter_x					set_lives_num_30
	cp 		draw_letter_y					set_lives_num_370
	cp 		draw_letter_letter_color			set_lives_color
	cp		draw_letter_background_color			set_lives_color_backround
	call 		draw_letter_function				draw_letter_ret
	be		game_one_next_letter		0		0
// :SECOND x
g1x2	cp		draw_letter_scale				set_lives_scale
	cp		draw_letter_x					set_lives_num_90
	cp		draw_letter_y					set_lives_num_370
	cp 		draw_letter_letter				set_lives_letter
	cp 		draw_letter_letter_color			set_lives_color
	cp		draw_letter_background_color			set_lives_color_backround
	call 		draw_letter_function				draw_letter_ret
	be		game_one_next_letter		0		0
// :THIRD x
g1x3	cp		draw_letter_x					set_lives_num_150
	cp 		draw_letter_letter				set_lives_letter
	call 		draw_letter_function				draw_letter_ret
	be		g1_end 				0					0

// :Locations
set_lives_num_30			30
set_lives_num_90			90
set_lives_num_150			150
set_lives_num_370			370

// :Letters
set_lives_letter 			120

// :Others
set_lives_scale				10
set_lives_color			0xff9e80
set_lives_color_backround	0x424242

// END OF DRAWING LIVES

// END OF PROGRAM

g1_end	halt

// #include ../font/draw_letter.e
#include game_one_type_alphabet.e
