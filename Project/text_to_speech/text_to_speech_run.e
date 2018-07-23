// WRITTEN BY MILO HARTSOE
// @PARAM: text_to_speech_ret - return iar


// TEXT TO SPEECH RUNNER
// NEW ROUND EVERY TIME WE OPEN THE GAME

t2s_run_begin cp	vga_driver_x 		t2s_run_num0
			cp	vga_driver_y 		t2s_run_num0
			cp 	vga_driver_x2 		t2s_run_num639
			cp 	vga_driver_y2		t2s_run_num479
			cp	vga_driver_pixel	t2s_run_charcoal_grey
			call	vga_driver_set_xy	vga_driver_ret
	cp        vga_driver_x        t2s_run_set_border_top_x
    cp        vga_driver_y        t2s_run_set_border_top_y
    cp        vga_driver_x2        t2s_run_set_border_top_x2
    cp         vga_driver_y2        t2s_run_set_border_top_y2
    cp        vga_driver_pixel    t2s_run_set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER BOTTOM
    cp        vga_driver_x        t2s_run_set_border_bottom_x
    cp        vga_driver_y        t2s_run_set_border_bottom_y
    cp        vga_driver_x2        t2s_run_set_border_bottom_x2
    cp         vga_driver_y2        t2s_run_set_border_bottom_y2
    cp        vga_driver_pixel    t2s_run_set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT
    cp        vga_driver_x        t2s_run_set_border_right_x
    cp        vga_driver_y        t2s_run_set_border_right_y
    cp        vga_driver_x2        t2s_run_set_border_right_x2
    cp         vga_driver_y2        t2s_run_set_border_right_y2
    cp        vga_driver_pixel    t2s_run_set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT
    cp        vga_driver_x        t2s_run_set_border_left_x
    cp        vga_driver_y        t2s_run_set_border_left_y
    cp        vga_driver_x2        t2s_run_set_border_left_x2
    cp         vga_driver_y2        t2s_run_set_border_left_y2
    cp        vga_driver_pixel    t2s_run_set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT TOP
    cp        vga_driver_x        t2s_run_set_border_lt_x
    cp        vga_driver_y        t2s_run_set_border_lt_y
    cp        vga_driver_x2        t2s_run_set_border_lt_x2
    cp         vga_driver_y2        t2s_run_set_border_lt_y2
    cp        vga_driver_pixel    t2s_run_set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT TOP
    cp        vga_driver_x        t2s_run_set_border_rt_x
    cp        vga_driver_y        t2s_run_set_border_rt_y
    cp        vga_driver_x2        t2s_run_set_border_rt_x2
    cp         vga_driver_y2        t2s_run_set_border_rt_y2
    cp        vga_driver_pixel    t2s_run_set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER LEFT BOTTOM
    cp        vga_driver_x        t2s_run_set_border_lb_x
    cp        vga_driver_y        t2s_run_set_border_lb_y
    cp        vga_driver_x2        t2s_run_set_border_lb_x2
    cp         vga_driver_y2        t2s_run_set_border_lb_y2
    cp        vga_driver_pixel    t2s_run_set_border_color
    call    vga_driver_set_xy    vga_driver_ret
// :BORDER RIGHT BOTTOM
    cp        vga_driver_x        t2s_run_set_border_rb_x
    cp        vga_driver_y        t2s_run_set_border_rb_y
    cp        vga_driver_x2        t2s_run_set_border_rb_x2
    cp         vga_driver_y2        t2s_run_set_border_rb_y2
    cp        vga_driver_pixel    t2s_run_set_border_color
    call    vga_driver_set_xy    vga_driver_ret
    be        text_to_speech_run_beginning                    0                            0

// Variables
t2s_run_set_border_top_x        0
t2s_run_set_border_top_y         0
t2s_run_set_border_top_x2        639
t2s_run_set_border_top_y2        9

t2s_run_set_border_bottom_x        0
t2s_run_set_border_bottom_y     470
t2s_run_set_border_bottom_x2    630
t2s_run_set_border_bottom_y2    479

t2s_run_set_border_right_x         630
t2s_run_set_border_right_y         0
t2s_run_set_border_right_x2     639
t2s_run_set_border_right_y2     479

t2s_run_set_border_left_x         0
t2s_run_set_border_left_y         0
t2s_run_set_border_left_x2         9
t2s_run_set_border_left_y2         479

t2s_run_set_border_lt_x         0
t2s_run_set_border_lt_y         0
t2s_run_set_border_lt_x2         19
t2s_run_set_border_lt_y2         19

t2s_run_set_border_rt_x         620
t2s_run_set_border_rt_y         0
t2s_run_set_border_rt_x2         639
t2s_run_set_border_rt_y2         19

t2s_run_set_border_lb_x         0
t2s_run_set_border_lb_y         460
t2s_run_set_border_lb_x2         19
t2s_run_set_border_lb_y2         479

t2s_run_set_border_rb_x          620
t2s_run_set_border_rb_y          460
t2s_run_set_border_rb_x2          639
t2s_run_set_border_rb_y2          479

t2s_run_set_border_color        0x84ffff
t2s_run_charcoal_grey           0x424242
t2s_run_num0                    0
t2s_run_num639                  639
t2s_run_num479                  479



// END OF DRAWING BORDER

text_to_speech_run_beginning
                                cp draw_letter_scale text_to_speech_letter_scale
                                cp text_to_speech_word_index text_to_speech_run_num0
                                cp text_to_speech_draw_x_pos text_to_speech_draw_x_pos_init
                                cp text_to_speech_draw_y_pos text_to_speech_draw_y_pos_init
                                cp draw_letter_x text_to_speech_draw_x_pos
                                cp draw_letter_y text_to_speech_draw_y_pos
                                cp draw_letter_letter_color t2s_run_set_border_color
                                cp draw_letter_background_color t2s_run_charcoal_grey
text_to_speech_process_input    call keyboard_begin keyboard_end
                                bne text_to_speech_process_input keyboard_pr_re text_to_speech_run_num1
                                be text_to_speech_caller keyboard_ascii text_to_speech_ascii_space
                                blt text_to_speech_process_input keyboard_ascii text_to_speech_ascii_A
                                blt text_to_speech_process_input text_to_speech_ascii_[ keyboard_ascii
                                cp draw_letter_letter keyboard_ascii
                                cp draw_letter_x text_to_speech_draw_x_pos
                                call draw_letter_function draw_letter_ret
                                add text_to_speech_draw_x_pos text_to_speech_draw_x_pos text_to_speech_letter_width
                                cpta keyboard_ascii text_to_speech_run_word text_to_speech_word_index
                                add text_to_speech_word_index text_to_speech_word_index text_to_speech_run_num1
                                be text_to_speech_process_input 0 0
text_to_speech_caller           cpta text_to_speech_ascii_space text_to_speech_run_word text_to_speech_word_index
                                cp text_to_speech_word_ptr text_to_speech_run_word_start
                                call text_to_speech_talk text_to_speech_return
                                ret text_to_speech_ret


// CONTANTS
text_to_speech_run_num2         2
text_to_speech_run_num1         1
text_to_speech_run_num0         0
text_to_speech_ascii_space      32
text_to_speech_ascii_A          65
text_to_speech_ascii_[          91   // ASCII VALUE AFTER Z
text_to_speech_letter_width     55
text_to_speech_letter_scale     9
text_to_speech_draw_x_pos_init  50
text_to_speech_draw_y_pos_init  200

// VARS
text_to_speech_word_index       0
text_to_speech_draw_x_pos       0
text_to_speech_draw_y_pos       0

text_to_speech_ret              0

// WORD POINTER
text_to_speech_run_word_start   text_to_speech_run_word

// WORD BUFFER
text_to_speech_run_word         32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32
                                32



#include text_to_speech.e
