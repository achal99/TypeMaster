// WRITTEN BY MAC YOUNG, ARJUN CHALIHA, AND MARIA KHALAF
// GAME THREE IMPLEMENTATION

// NEW ROUND EVERY TIME WE OPEN THE GAME

g3_begin cp	vga_driver_x 		g3_num0
			cp	vga_driver_y 		g3_num0
			cp 	vga_driver_x2 		g3_num639
			cp 	vga_driver_y2		g3_num479
			cp	vga_driver_pixel	g3_charcoal_grey
			call	vga_driver_set_xy	vga_driver_ret
	cp        vga_driver_x        g13set_border_top_x
    cp        vga_driver_y        g13set_border_top_y
    cp        vga_driver_x2        g13set_border_top_x2
    cp         vga_driver_y2        g13set_border_top_y2
    cp        vga_driver_pixel    g13set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER BOTTOM
    cp        vga_driver_x        g13set_border_bottom_x
    cp        vga_driver_y        g13set_border_bottom_y
    cp        vga_driver_x2        g13set_border_bottom_x2
    cp         vga_driver_y2        g13set_border_bottom_y2
    cp        vga_driver_pixel    g13set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT
    cp        vga_driver_x        g13set_border_right_x
    cp        vga_driver_y        g13set_border_right_y
    cp        vga_driver_x2        g13set_border_right_x2
    cp         vga_driver_y2        g13set_border_right_y2
    cp        vga_driver_pixel    g13set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT
    cp        vga_driver_x        g13set_border_left_x
    cp        vga_driver_y        g13set_border_left_y
    cp        vga_driver_x2        g13set_border_left_x2
    cp         vga_driver_y2        g13set_border_left_y2
    cp        vga_driver_pixel    g13set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT TOP
    cp        vga_driver_x        g13set_border_lt_x
    cp        vga_driver_y        g13set_border_lt_y
    cp        vga_driver_x2        g13set_border_lt_x2
    cp         vga_driver_y2        g13set_border_lt_y2
    cp        vga_driver_pixel    g13set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT TOP
    cp        vga_driver_x        g13set_border_rt_x
    cp        vga_driver_y        g13set_border_rt_y
    cp        vga_driver_x2        g13set_border_rt_x2
    cp         vga_driver_y2        g13set_border_rt_y2
    cp        vga_driver_pixel    g13set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT BOTTOM
    cp        vga_driver_x        g13set_border_lb_x
    cp        vga_driver_y        g13set_border_lb_y
    cp        vga_driver_x2        g13set_border_lb_x2
    cp         vga_driver_y2        g13set_border_lb_y2
    cp        vga_driver_pixel    g13set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT BOTTOM
    cp        vga_driver_x        g13set_border_rb_x
    cp        vga_driver_y        g13set_border_rb_y
    cp        vga_driver_x2        g13set_border_rb_x2
    cp         vga_driver_y2        g13set_border_rb_y2
    cp        vga_driver_pixel    g13set_border_color
    call    vga_driver_set_xy    vga_driver_ret
    be        g3_beginning                    0                            0

// Variables
g13set_border_top_x        0
g13set_border_top_y         0
g13set_border_top_x2        639
g13set_border_top_y2        9

g13set_border_bottom_x        0
g13set_border_bottom_y     470
g13set_border_bottom_x2    630
g13set_border_bottom_y2    479

g13set_border_right_x         630
g13set_border_right_y         0
g13set_border_right_x2     639
g13set_border_right_y2     479

g13set_border_left_x         0
g13set_border_left_y         0
g13set_border_left_x2         9
g13set_border_left_y2         479

g13set_border_lt_x         0
g13set_border_lt_y         0
g13set_border_lt_x2         19
g13set_border_lt_y2         19

g13set_border_rt_x         620
g13set_border_rt_y         0
g13set_border_rt_x2         639
g13set_border_rt_y2         19

g13set_border_lb_x         0
g13set_border_lb_y         460
g13set_border_lb_x2         19
g13set_border_lb_y2         479

g13set_border_rb_x          620
g13set_border_rb_y          460
g13set_border_rb_x2          639
g13set_border_rb_y2          479

g13set_border_color        0x84ffff



// END OF DRAWING BORDER

g3_beginning		cp      say_sentence_ptr g3_sentence_saying_ptr
			call 	say_sentence_say_word   say_sentence_ret
			cp	current_game		g3_num2
			be	g3_round1		g3_round		g3_num0
			be	g3_round2		g3_round		g3_num1
			be	g3_round3		g3_round		g3_num2
			cp	g3_round		g3_num0
			be	g3_round1		0			0
g3_round1		add	g3_round		g3_round		g3_num1
			call	time_driver_begin	time_driver_return
			cp	g3_old_time		read_time
			cp	g3_letter_incr		g3_num0
			cp	g3_x_loc1		g3_num109
			cp	g3_type_incr		g3_num0
			cp	g3_x_loc2		g3_num109
			cp	g3_mistake_count	g3_num0
			cp	g3_type_letter		g3_sentence
// AUTO PART
g3_on_off_begin		blt	g3_final_time		g3_num35		g3_letter_incr
			be	g3_time_check		0			0
g3_final_time		call	time_driver_begin	time_driver_return
			cp	g3_time			read_time
			sub	g3_time_diff		g3_time			g3_old_time
			blt	g3_time_end_of_game	g3_num120000		g3_time_diff
			be	g3_on_off_done		0			0
g3_time_check		call	time_driver_begin	time_driver_return
			cp	g3_time			read_time
			sub	g3_time_diff		g3_time			g3_old_time
			blt	g3_time_check_yes	g3_num6000		g3_time_diff
			be	g3_time_check_no	0			0
g3_time_check_yes	cp	g3_old_time		g3_time
			be	g3_on_off_check		0			0
g3_time_check_no	be	g3_on_off_done		0			0
g3_on_off_check		cpfa	g3_checker		g3_on_off1		g3_letter_incr
			be	g3_on			g3_checker		g3_num1
			be	g3_off			0			0
g3_on			cp	draw_letter_scale	g3_scale
			cpfa	g3_current_letter	g3_sentence		g3_letter_incr
			add	g3_letter_incr		g3_letter_incr		g3_num1
			cp	draw_letter_letter	g3_current_letter
			cp	draw_letter_x		g3_x_loc1
			add	g3_x_loc1		g3_x_loc1		g3_num12
			cp	draw_letter_y		g3_y_loc1
			cp	draw_letter_letter_color g3_green
			cp	draw_letter_background_color g3_charcoal_grey
			call	draw_letter_function	draw_letter_ret
			cpfa	g3_current_letter	g3_sentence		g3_letter_incr
			be	g3_on			g3_current_letter	g3_num32
g3_on_done		be	g3_on_off_done		0			0
g3_off			cp	draw_letter_scale	g3_scale
			cpfa	g3_current_letter	g3_sentence		g3_letter_incr
			add	g3_letter_incr		g3_letter_incr		g3_num1
			cp	draw_letter_letter	g3_current_letter
			cp	draw_letter_x		g3_x_loc1
			add	g3_x_loc1		g3_x_loc1		g3_num12
			cp	draw_letter_y		g3_y_loc1
			cp	draw_letter_letter_color g3_red
			cp	draw_letter_background_color g3_charcoal_grey
			call	draw_letter_function	draw_letter_ret
			cpfa	g3_current_letter	g3_sentence		g3_letter_incr
			be	g3_on			g3_current_letter	g3_num32
g3_off_done		be	g3_on_off_done		0			0
g3_on_off_done		be	g3_typing_begin		0			0
g3_time_end_of_game	be	g3_game_over		0			0

// TYPING PART
g3_typing_begin		blt	g3_win			g3_num35		g3_type_incr
			cp	nb_keyboard_driver_new_data_ready g3_num0
			call	nb_keyboard_driver_begin nb_keyboard_driver_end
			cp	g3_key_ascii		nb_keyboard_driver_ascii
			cp	g3_key_pr_re		nb_keyboard_driver_pr_re
			cp	g3_key_ready		nb_keyboard_driver_new_data_ready
			be	g3_check_pr_re		g3_key_ready		g3_num1
			be	g3_typing_end		0			0
g3_check_pr_re		be	g3_check_ascii		g3_key_pr_re		g3_num1
			be	g3_typing_end		0			0
g3_check_ascii		be	g3_type_correct		g3_key_ascii		g3_type_letter
			be	g3_type_incorrect	0			0
g3_type_incorrect	add	g3_mistake_count	g3_mistake_count	g3_num1
			be	g3_one_mist		g3_mistake_count	g3_num1
			be	g3_two_mist		g3_mistake_count	g3_num2
			be	g3_three_mist		0			0
g3_one_mist		cp	draw_letter_scale	g3_set_lives_scale
			cp	draw_letter_letter	g3_set_lives_letter
			cp	draw_letter_x		g3_set_lives_num30
			cp 	draw_letter_y		g3_set_lives_num370
			cp 	draw_letter_letter_color g3_set_lives_color
			cp	draw_letter_background_color g3_charcoal_grey
			call 	draw_letter_function	draw_letter_ret
			cp	draw_letter_scale	g3_scale
			cp	draw_letter_letter	g3_key_ascii
			cp	draw_letter_x		g3_x_loc2
			cp	draw_letter_y		g3_y_loc2
			cp	draw_letter_letter_color g3_red
			cp	draw_letter_background_color g3_charcoal_grey
			call	draw_letter_function	draw_letter_ret
			be	g3_typing_end		0			0
g3_two_mist		cp	draw_letter_scale	g3_set_lives_scale
			cp	draw_letter_x		g3_set_lives_num90
			cp	draw_letter_y		g3_set_lives_num370
			cp 	draw_letter_letter	g3_set_lives_letter
			cp 	draw_letter_letter_color g3_set_lives_color
			cp	draw_letter_background_color g3_charcoal_grey
			call 	draw_letter_function	draw_letter_ret
			cp	draw_letter_scale	g3_scale
			cp	draw_letter_letter	g3_key_ascii
			cp	draw_letter_x		g3_x_loc2
			cp	draw_letter_y		g3_y_loc2
			cp	draw_letter_letter_color g3_red
			cp	draw_letter_background_color g3_charcoal_grey
			call	draw_letter_function	draw_letter_ret
			be	g3_typing_end		0			0
g3_three_mist		be	g3_game_over		0			0
g3_type_correct		cp	draw_letter_scale	g3_scale
			cp	draw_letter_letter	g3_type_letter
			cp	draw_letter_x		g3_x_loc2
			cp	draw_letter_y		g3_y_loc2
			cp	draw_letter_letter_color g3_green
			cp	draw_letter_background_color g3_charcoal_grey
			call	draw_letter_function	draw_letter_ret
			add	g3_type_incr		g3_type_incr		g3_num1
			cpfa	g3_type_checker		g3_on_off1		g3_type_incr
			cpfa	g3_type_letter		g3_sentence		g3_type_incr
			add	g3_x_loc2		g3_x_loc2		g3_num12
			be	g3_type_correct		g3_type_checker		g3_num0
			be	g3_type_correct		g3_type_letter		g3_num32
			be	g3_typing_end		0			0
g3_typing_end		be	g3_on_off_begin		0			0
g3_game_over		be	lossb			0			0
g3_win			be	winb			0			0

// VARS
g3_set_lives_num30	30
g3_set_lives_num90	90
g3_set_lives_num370	370
g3_set_lives_letter 	120
g3_set_lives_scale	10
g3_set_lives_color	0xff9e80
g3_round		0
g3_checker		0
g3_old_time		0
g3_time_diff		0
g3_time			0
g3_mistake_count	0
g3_num0			0
g3_num1			1
g3_num2			2
g3_num12		12
g3_num32		32
g3_num35		35
g3_num109		109
g3_num479		479
g3_num639		639
g3_current_letter	0
g3_type_letter		0
g3_letter_incr		0
g3_type_incr		0
g3_type_checker		0
g3_key_ascii		0
g3_key_pr_re		0
g3_key_ready		0
g3_num6000		6000
g3_num120000		120000
g3_x_loc1		109
g3_x_loc2		109
g3_y_loc1		222
g3_y_loc2		242
g3_scale		2
g3_red			0xff8a65
g3_green		0x69f0ae
g3_charcoal_grey	0x424242

//OTHER ROUNDS
g3_round2		add    g3_round        g3_round        g3_num1
            call    time_driver_begin    time_driver_return
            cp    g32_old_time        read_time
            cp    g32_letter_incr        g32_num0
            cp    g32_x_loc1        g32_num109
            cp    g32_type_incr        g32_num0
            cp    g32_x_loc2        g32_num109
            cp    g32_mistake_count    g32_num0
            cp    g32_type_letter        g3_sentence
// AUTO PART
g32_on_off_begin        blt    g32_final_time        g32_num35        g32_letter_incr
            be    g32_time_check        0            0
g32_final_time        call    time_driver_begin    time_driver_return
            cp    g32_time            read_time
            sub    g32_time_diff        g32_time            g32_old_time
            blt    g32_time_end_of_game    g32_num120000        g32_time_diff
            be    g32_on_off_done        0            0
g32_time_check        call    time_driver_begin    time_driver_return
            cp    g32_time            read_time
            sub    g32_time_diff        g32_time            g32_old_time
            blt    g32_time_check_yes    g32_num6000        g32_time_diff
            be    g32_time_check_no    0            0
g32_time_check_yes    cp    g32_old_time        g32_time
            be    g32_on_off_check        0            0
g32_time_check_no    be    g32_on_off_done        0            0
g32_on_off_check        cpfa    g32_checker        g3_on_off2        g32_letter_incr
            be    g32_on            g32_checker        g32_num1
            be    g32_off            0            0
g32_on            cp    draw_letter_scale    g32_scale
            cpfa    g32_current_letter    g3_sentence        g32_letter_incr
            add    g32_letter_incr        g32_letter_incr        g32_num1
            cp    draw_letter_letter    g32_current_letter
            cp    draw_letter_x        g32_x_loc1
            add    g32_x_loc1        g32_x_loc1        g32_num12
            cp    draw_letter_y        g32_y_loc1
            cp    draw_letter_letter_color g32_green
            cp    draw_letter_background_color g32_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            cpfa    g32_current_letter    g3_sentence        g32_letter_incr
            be    g32_on            g32_current_letter    g32_num32
g32_on_done        be    g32_on_off_done        0            0
g32_off            cp    draw_letter_scale    g32_scale
            cpfa    g32_current_letter    g3_sentence        g32_letter_incr
            add    g32_letter_incr        g32_letter_incr        g32_num1
            cp    draw_letter_letter    g32_current_letter
            cp    draw_letter_x        g32_x_loc1
            add    g32_x_loc1        g32_x_loc1        g32_num12
            cp    draw_letter_y        g32_y_loc1
            cp    draw_letter_letter_color g32_red
            cp    draw_letter_background_color g32_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            cpfa    g32_current_letter    g3_sentence        g32_letter_incr
            be    g32_on            g32_current_letter    g32_num32
g32_off_done        be    g32_on_off_done        0            0
g32_on_off_done        be    g32_typing_begin        0            0
g32_time_end_of_game    be    g32_game_over        0            0

// TYPING PART
g32_typing_begin        blt    g32_win            g32_num35        g32_type_incr
            cp    nb_keyboard_driver_new_data_ready g32_num0
            call    nb_keyboard_driver_begin nb_keyboard_driver_end
            cp    g32_key_ascii        nb_keyboard_driver_ascii
            cp    g32_key_pr_re        nb_keyboard_driver_pr_re
            cp    g32_key_ready        nb_keyboard_driver_new_data_ready
            be    g32_check_pr_re        g32_key_ready        g32_num1
            be    g32_typing_end        0            0
g32_check_pr_re        be    g32_check_ascii        g32_key_pr_re        g32_num1
            be    g32_typing_end        0            0
g32_check_ascii        be    g32_type_correct        g32_key_ascii        g32_type_letter
            be    g32_type_incorrect    0            0
g32_type_incorrect    add    g32_mistake_count    g32_mistake_count    g32_num1
            be    g32_one_mist        g32_mistake_count    g32_num1
            be    g32_two_mist        g32_mistake_count    g32_num2
            be    g32_three_mist        0            0
g32_one_mist        cp    draw_letter_scale    g32_set_lives_scale
            cp    draw_letter_letter    g32_set_lives_letter
            cp    draw_letter_x        g32_set_lives_num30
            cp     draw_letter_y        g32_set_lives_num370
            cp     draw_letter_letter_color g32_set_lives_color
            cp    draw_letter_background_color g32_charcoal_grey
            call     draw_letter_function    draw_letter_ret
            cp    draw_letter_scale    g32_scale
            cp    draw_letter_letter    g32_key_ascii
            cp    draw_letter_x        g32_x_loc2
            cp    draw_letter_y        g32_y_loc2
            cp    draw_letter_letter_color g32_red
            cp    draw_letter_background_color g32_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            be    g32_typing_end        0            0
g32_two_mist        cp    draw_letter_scale    g32_set_lives_scale
            cp    draw_letter_x        g32_set_lives_num90
            cp    draw_letter_y        g32_set_lives_num370
            cp     draw_letter_letter    g32_set_lives_letter
            cp     draw_letter_letter_color g32_set_lives_color
            cp    draw_letter_background_color g32_charcoal_grey
            call     draw_letter_function    draw_letter_ret
            cp    draw_letter_scale    g32_scale
            cp    draw_letter_letter    g32_key_ascii
            cp    draw_letter_x        g32_x_loc2
            cp    draw_letter_y        g32_y_loc2
            cp    draw_letter_letter_color g32_red
            cp    draw_letter_background_color g32_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            be    g32_typing_end        0            0
g32_three_mist        be    g32_game_over        0            0
g32_type_correct        cp    draw_letter_scale    g32_scale
            cp    draw_letter_letter    g32_type_letter
            cp    draw_letter_x        g32_x_loc2
            cp    draw_letter_y        g32_y_loc2
            cp    draw_letter_letter_color g32_green
            cp    draw_letter_background_color g32_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            add    g32_type_incr        g32_type_incr        g32_num1
            cpfa    g32_type_checker        g3_on_off2        g32_type_incr
            cpfa    g32_type_letter        g3_sentence        g32_type_incr
            add    g32_x_loc2        g32_x_loc2        g32_num12
            be    g32_type_correct        g32_type_checker        g32_num0
            be    g32_type_correct        g32_type_letter        g32_num32
            be    g32_typing_end        0            0
g32_typing_end        be    g32_on_off_begin        0            0
g32_game_over        be    lossb            0            0
g32_win            be    winb            0            0

// VARS
g32_set_lives_num30    30
g32_set_lives_num90    90
g32_set_lives_num370    370
g32_set_lives_letter     120
g32_set_lives_scale    10
g32_set_lives_color    0xff9e80
g32_round        0
g32_checker        0
g32_old_time        0
g32_time_diff        0
g32_time            0
g32_mistake_count    0
g32_num0            0
g32_num1            1
g32_num2            2
g32_num12        12
g32_num32        32
g32_num35        35
g32_num109        109
g32_num479        479
g32_num639        639
g32_current_letter    0
g32_type_letter        0
g32_letter_incr        0
g32_type_incr        0
g32_type_checker        0
g32_key_ascii        0
g32_key_pr_re        0
g32_key_ready        0
g32_num6000        6000
g32_num120000        120000
g32_x_loc1        109
g32_x_loc2        109
g32_y_loc1        222
g32_y_loc2        242
g32_scale        2
g32_red            0xff6666
g32_green        0x33ff99
g32_charcoal_grey    0x424242

g3_round3    add    g3_round        g3_round        g33_num1
            call    time_driver_begin    time_driver_return
            cp    g33_old_time        read_time
            cp    g33_letter_incr        g33_num0
            cp    g33_x_loc1        g33_num109
            cp    g33_type_incr        g33_num0
            cp    g33_x_loc2        g33_num109
            cp    g33_mistake_count    g33_num0
            cp    g33_type_letter        g3_sentence
// AUTO PART
g33_on_off_begin        blt    g33_final_time        g33_num35        g33_letter_incr
            be    g33_time_check        0            0
g33_final_time        call    time_driver_begin    time_driver_return
            cp    g33_time            read_time
            sub    g33_time_diff        g33_time            g33_old_time
            blt    g33_time_end_of_game    g33_num120000        g33_time_diff
            be    g33_on_off_done        0            0
g33_time_check        call    time_driver_begin    time_driver_return
            cp    g33_time            read_time
            sub    g33_time_diff        g33_time            g33_old_time
            blt    g33_time_check_yes    g33_num6000        g33_time_diff
            be    g33_time_check_no    0            0
g33_time_check_yes    cp    g33_old_time        g33_time
            be    g33_on_off_check        0            0
g33_time_check_no    be    g33_on_off_done        0            0
g33_on_off_check        cpfa    g33_checker        g3_on_off3        g33_letter_incr
            be    g33_on            g33_checker        g33_num1
            be    g33_off            0            0
g33_on            cp    draw_letter_scale    g33_scale
            cpfa    g33_current_letter    g3_sentence        g33_letter_incr
            add    g33_letter_incr        g33_letter_incr        g33_num1
            cp    draw_letter_letter    g33_current_letter
            cp    draw_letter_x        g33_x_loc1
            add    g33_x_loc1        g33_x_loc1        g33_num12
            cp    draw_letter_y        g33_y_loc1
            cp    draw_letter_letter_color g33_green
            cp    draw_letter_background_color g33_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            cpfa    g33_current_letter    g3_sentence        g33_letter_incr
            be    g33_on            g33_current_letter    g33_num32
g33_on_done        be    g33_on_off_done        0            0
g33_off            cp    draw_letter_scale    g33_scale
            cpfa    g33_current_letter    g3_sentence        g33_letter_incr
            add    g33_letter_incr        g33_letter_incr        g33_num1
            cp    draw_letter_letter    g33_current_letter
            cp    draw_letter_x        g33_x_loc1
            add    g33_x_loc1        g33_x_loc1        g33_num12
            cp    draw_letter_y        g33_y_loc1
            cp    draw_letter_letter_color g33_red
            cp    draw_letter_background_color g33_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            cpfa    g33_current_letter    g3_sentence        g33_letter_incr
            be    g33_on            g33_current_letter    g33_num32
g33_off_done        be    g33_on_off_done        0            0
g33_on_off_done        be    g33_typing_begin        0            0
g33_time_end_of_game    be    g33_game_over        0            0

// TYPING PART
g33_typing_begin        blt    g33_win            g33_num35        g33_type_incr
            cp    nb_keyboard_driver_new_data_ready g33_num0
            call    nb_keyboard_driver_begin nb_keyboard_driver_end
            cp    g33_key_ascii        nb_keyboard_driver_ascii
            cp    g33_key_pr_re        nb_keyboard_driver_pr_re
            cp    g33_key_ready        nb_keyboard_driver_new_data_ready
            be    g33_check_pr_re        g33_key_ready        g33_num1
            be    g33_typing_end        0            0
g33_check_pr_re        be    g33_check_ascii        g33_key_pr_re        g33_num1
            be    g33_typing_end        0            0
g33_check_ascii        be    g33_type_correct        g33_key_ascii        g33_type_letter
            be    g33_type_incorrect    0            0
g33_type_incorrect    add    g33_mistake_count    g33_mistake_count    g33_num1
            be    g33_one_mist        g33_mistake_count    g33_num1
            be    g33_two_mist        g33_mistake_count    g33_num2
            be    g33_three_mist        0            0
g33_one_mist        cp    draw_letter_scale    g33_set_lives_scale
            cp    draw_letter_letter    g33_set_lives_letter
            cp    draw_letter_x        g33_set_lives_num30
            cp     draw_letter_y        g33_set_lives_num370
            cp     draw_letter_letter_color g33_set_lives_color
            cp    draw_letter_background_color g33_charcoal_grey
            call     draw_letter_function    draw_letter_ret
            cp    draw_letter_scale    g33_scale
            cp    draw_letter_letter    g33_key_ascii
            cp    draw_letter_x        g33_x_loc2
            cp    draw_letter_y        g33_y_loc2
            cp    draw_letter_letter_color g33_red
            cp    draw_letter_background_color g33_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            be    g33_typing_end        0            0
g33_two_mist        cp    draw_letter_scale    g33_set_lives_scale
            cp    draw_letter_x        g33_set_lives_num90
            cp    draw_letter_y        g33_set_lives_num370
            cp     draw_letter_letter    g33_set_lives_letter
            cp     draw_letter_letter_color g33_set_lives_color
            cp    draw_letter_background_color g33_charcoal_grey
            call     draw_letter_function    draw_letter_ret
            cp    draw_letter_scale    g33_scale
            cp    draw_letter_letter    g33_key_ascii
            cp    draw_letter_x        g33_x_loc2
            cp    draw_letter_y        g33_y_loc2
            cp    draw_letter_letter_color g33_red
            cp    draw_letter_background_color g33_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            be    g33_typing_end        0            0
g33_three_mist        be    g33_game_over        0            0
g33_type_correct        cp    draw_letter_scale    g33_scale
            cp    draw_letter_letter    g33_type_letter
            cp    draw_letter_x        g33_x_loc2
            cp    draw_letter_y        g33_y_loc2
            cp    draw_letter_letter_color g33_green
            cp    draw_letter_background_color g33_charcoal_grey
            call    draw_letter_function    draw_letter_ret
            add    g33_type_incr        g33_type_incr        g33_num1
            cpfa    g33_type_checker        g3_on_off3        g33_type_incr
            cpfa    g33_type_letter        g3_sentence        g33_type_incr
            add    g33_x_loc2        g33_x_loc2        g33_num12
            be    g33_type_correct        g33_type_checker        g33_num0
            be    g33_type_correct        g33_type_letter        g33_num32
            be    g33_typing_end        0            0
g33_typing_end        be    g33_on_off_begin        0            0
g33_game_over        be    lossb            0            0
g33_win            be    winb            0            0

// VARS
g33_set_lives_num30    30
g33_set_lives_num90    90
g33_set_lives_num370    370
g33_set_lives_letter     120
g33_set_lives_scale    10
g33_set_lives_color    0xff9e80
g33_round        0
g33_checker        0
g33_old_time        0
g33_time_diff        0
g33_time            0
g33_mistake_count    0
g33_num0            0
g33_num1            1
g33_num2            2
g33_num12        12
g33_num32        32
g33_num35        35
g33_num109        109
g33_num479        479
g33_num639        639
g33_current_letter    0
g33_type_letter        0
g33_letter_incr        0
g33_type_incr        0
g33_type_checker        0
g33_key_ascii        0
g33_key_pr_re        0
g33_key_ready        0
g33_num6000        6000
g33_num120000        120000
g33_x_loc1        109
g33_x_loc2        109
g33_y_loc1        222
g33_y_loc2        242
g33_scale        2
g33_red            0xff6666
g33_green        0x33ff99
g33_charcoal_grey    0x424242


// ARRS
g3_sentence		104	// h
			111	// o
			119	// w
			32	//
			118	// v
			101	// e
			120	// x
			105	// i
			110	// n
			103	// g
			108	// l
			121	// y
			32	//
			113	// q
			117	// u
			105	// i
			99	// c
			107	// k
			32	//
			100	// d
			97	// a
			102	// f
			116	// t
			32	//
			122	// z
			101	// e
			98	// b
			114	// r
			97	// a
			115	// s
			32	//
			106	// j
			117	// u
			109	// m
			112	// p
			10	// newline

g3_sentence_saying_ptr  g3_sentence_saying
g3_sentence_saying		72
                                79
                                87
                                32
                                86
                                69
                                88
                                73
                                78
                                71
                                32
                                76
                                69
                                69
                                32
                                81
                                85
                                73
                                67
                                75
                                32
                                68
                                65
                                70
                                84
                                32
                                90
                                69
                                66
                                82
                                65
                                83
                                32
                                74
                                85
                                77
                                80
                                32
			        10	// newline

g3_on_off1		1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			1

g3_on_off2		1
			1
			0
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1

g3_on_off3		1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1
			0
			1
			1

#include ../time_driver/time_driver.e
#include ../nb_drivers/nb_keyboard_driver/nb_keyboard_driver.e
#include game_three_scrolling_colors_instructions.e
#include ../text_to_speech/say_sentence.e
