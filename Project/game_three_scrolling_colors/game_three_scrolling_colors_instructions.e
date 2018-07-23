// WRITTEN BY MAC YOUNG, ARJUN CHALIHA, AND MARIA KHALAF
// SETTING BACKROUND TO COLOR CHARCOAL GREY
g3instr_begin    be            g3instrs        0        0
g3instrs    cp         vga_driver_x2         g3instrset_backround_num639
    cp        current_game        g3_num2
    cp         vga_driver_y2        g3instrset_backround_num479
    cp         vga_driver_x         g3instrset_backround_num0
    cp         vga_driver_y        g3instrset_backround_num0
    cp        vga_driver_pixel    g3instrset_backround_color_charcoal_grey
    call    vga_driver_set_xy    vga_driver_ret
    be        g3instrb                    0        0

// Variables
g3instrset_backround_num0                0
g3instrset_backround_num639                639
g3instrset_backround_num479                479
g3instrset_backround_color_charcoal_grey    0x424242

// END OF SETTING BACKROUND COLOR

// DRAWING BORDER

// :BORDER TOP
g3instrb    cp        vga_driver_x        g3instrset_border_top_x
    cp        vga_driver_y        g3instrset_border_top_y
    cp        vga_driver_x2        g3instrset_border_top_x2
    cp         vga_driver_y2        g3instrset_border_top_y2
    cp        vga_driver_pixel    g3instrset_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER BOTTOM
    cp        vga_driver_x        g3instrset_border_bottom_x
    cp        vga_driver_y        g3instrset_border_bottom_y
    cp        vga_driver_x2        g3instrset_border_bottom_x2
    cp         vga_driver_y2        g3instrset_border_bottom_y2
    cp        vga_driver_pixel    g3instrset_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT
    cp        vga_driver_x        g3instrset_border_right_x
    cp        vga_driver_y        g3instrset_border_right_y
    cp        vga_driver_x2        g3instrset_border_right_x2
    cp         vga_driver_y2        g3instrset_border_right_y2
    cp        vga_driver_pixel    g3instrset_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT
    cp        vga_driver_x        g3instrset_border_left_x
    cp        vga_driver_y        g3instrset_border_left_y
    cp        vga_driver_x2        g3instrset_border_left_x2
    cp         vga_driver_y2        g3instrset_border_left_y2
    cp        vga_driver_pixel    g3instrset_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT TOP
    cp        vga_driver_x        g3instrset_border_lt_x
    cp        vga_driver_y        g3instrset_border_lt_y
    cp        vga_driver_x2        g3instrset_border_lt_x2
    cp         vga_driver_y2        g3instrset_border_lt_y2
    cp        vga_driver_pixel    g3instrset_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT TOP
    cp        vga_driver_x        g3instrset_border_rt_x
    cp        vga_driver_y        g3instrset_border_rt_y
    cp        vga_driver_x2        g3instrset_border_rt_x2
    cp         vga_driver_y2        g3instrset_border_rt_y2
    cp        vga_driver_pixel    g3instrset_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT BOTTOM
    cp        vga_driver_x        g3instrset_border_lb_x
    cp        vga_driver_y        g3instrset_border_lb_y
    cp        vga_driver_x2        g3instrset_border_lb_x2
    cp         vga_driver_y2        g3instrset_border_lb_y2
    cp        vga_driver_pixel    g3instrset_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT BOTTOM
    cp        vga_driver_x        g3instrset_border_rb_x
    cp        vga_driver_y        g3instrset_border_rb_y
    cp        vga_driver_x2        g3instrset_border_rb_x2
    cp         vga_driver_y2        g3instrset_border_rb_y2
    cp        vga_driver_pixel    g3instrset_border_color
	call    vga_driver_set_xy    vga_driver_ret

	cp	game3_text_i	g3i0
	cp	letters_text_i	g3i0
	cp	on_text_i	g3i0
	cp	game3_x		g3i85
	cp	letters_x	g3i20
	cp	on_x		g3i92
	cp	press_text_i	g3i0
	cp	press_x		g3i128

game3_text	be	letters_text	game3_text_i	g3i6
		cp	draw_letter_scale	g3i13
		cpfa		game3_letter	game3	game3_text_i
		cp	draw_letter_letter	game3_letter
		cp	draw_letter_x	game3_x
		cp	draw_letter_y	g3i100
		cp	draw_letter_letter_color	g3x_letter_color
		cp	draw_letter_background_color		g3_charcoal_grey
		call	draw_letter_function	draw_letter_ret
		add	game3_text_i	game3_text_i	g3_num1
		add	game3_x	game3_x	g3i78
		be	game3_text	0	0
letters_text	be	on_text	letters_text_i	g3i50
    	  	cp    draw_letter_scale    g3i2
    	    	cpfa letters_letter   letters       letters_text_i
    	    	cp    draw_letter_letter    letters_letter
    	    	cp    draw_letter_x    letters_x
     	   	cp    draw_letter_y    g3i300
     	   	cp    draw_letter_letter_color    g3i_letter_color
      	  	cp    draw_letter_background_color        g3_charcoal_grey
		call	draw_letter_function	draw_letter_ret
      	  	add    letters_text_i    letters_text_i    g3_num1
		add    letters_x    letters_x    g3i12
        	be    letters_text	0	0
on_text		be	press_text	on_text_i	g3i38
		cp    draw_letter_scale    g3i2
                cpfa  on_letter  on        on_text_i
                cp    draw_letter_letter    on_letter
                cp    draw_letter_x    on_x
                cp    draw_letter_y    g3i320
                cp    draw_letter_letter_color    g3i_letter_color
                cp    draw_letter_background_color        g3_charcoal_grey
		call	draw_letter_function	draw_letter_ret
                add    on_text_i    on_text_i    g3_num1
		add    on_x    on_x    g3i12
            	be    on_text	0	0
press_text	be	g3i_cont	press_text_i	g3i32
        	cp    draw_letter_scale    g3i2
                cpfa  press_letter   press       press_text_i
                cp    draw_letter_letter    press_letter
                cp    draw_letter_x    press_x
                cp    draw_letter_y    g3i360
                cp    draw_letter_letter_color    g3i_letter_color
                cp    draw_letter_background_color        g3_charcoal_grey
		call	draw_letter_function	draw_letter_ret
                add    press_text_i    press_text_i    g3_num1
		add    press_x    press_x    g3i12
                be    press_text	0	0
g3i_cont	be	g3_insr_final	0	0




game3_text_i	0
game3_letter	0
game3_x		0
letters_text_i	0
letters_x	0
letters_letter	0
on_text_i	0
on_letter	0
on_x		0
press_text_i	0
press_letter	0
press_x		0
g3x_letter_color    0x84ffff
g3i_letter_color	0xb0bec5
g3i0	0
g3i50	50
g3i6	6
g3i78	78
g3i100	100
g3i85	85
g3i12	12
g3i20	20
g3i300	300
g3i38	37
g3i92	95
g3i320	320
g3i32	32
g3i128	128
g3i360	360
g3i2	2
g3i13	13















g3_insr_final	call	keyboard_begin	keyboard_end
	cp	g3_insr_val	keyboard_ascii
	bne	g3_insr_final	g3_insr_val	g3_insr_num32
	be	g3_begin	0	0
g3_insr_num32	32
g3_insr_val	0


//ARRS
game3	71
	97
	109
	101
	32
	51

letters	76
 101
 116
 116
 101
 114
 115
 32
 119
 105
 108
 108
 32
 97
 112
 112
 101
 97
 114
 32
 111
 110
 32
 116
 104
 101
 32
 115
 99
 114
 101
 101
 110
 46
 32
 84
 121
 112
 101
 32
 103
 114
 101
 101
 110
 32
 111
 110
 101
 115


on	111
 110
 32
 121
 111
 117
 114
 32
 107
 101
 121
 98
 111
 97
 114
 100
 32
 97
 110
 100
 32
 105
 103
 110
 111
 114
 101
 32
 114
 101
 100
 32
 111
 110
 101
 115
 46
press 80
 114
 101
 115
 115
 32
 115
 112
 97
 99
 101
 32
 119
 104
 101
 110
 32
 114
 101
 97
 100
 121
 32
 116
 111
 32
 98
 101
 103
 105
 110
 46



// Variables
g3instrset_border_top_x        0
g3instrset_border_top_y         0
g3instrset_border_top_x2        639
g3instrset_border_top_y2        9

g3instrset_border_bottom_x        0
g3instrset_border_bottom_y     470
g3instrset_border_bottom_x2    630
g3instrset_border_bottom_y2    479

g3instrset_border_right_x         630
g3instrset_border_right_y         0
g3instrset_border_right_x2     639
g3instrset_border_right_y2     479

g3instrset_border_left_x         0
g3instrset_border_left_y         0
g3instrset_border_left_x2         9
g3instrset_border_left_y2         479

g3instrset_border_lt_x         0
g3instrset_border_lt_y         0
g3instrset_border_lt_x2         19
g3instrset_border_lt_y2         19

g3instrset_border_rt_x         620
g3instrset_border_rt_y         0
g3instrset_border_rt_x2         639
g3instrset_border_rt_y2         19

g3instrset_border_lb_x         0
g3instrset_border_lb_y         460
g3instrset_border_lb_x2         19
g3instrset_border_lb_y2         479

g3instrset_border_rb_x          620
g3instrset_border_rb_y          460
g3instrset_border_rb_x2          639
g3instrset_border_rb_y2          479

g3instrset_border_color        0x84ffff
