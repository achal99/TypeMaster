// WRITTEN BY MARIA KHALAF AND MILO HARTOSE
game_two_start                  call load_audio_sdram_load load_audio_sdram_ret
	cp	current_game	g3_num1
                                // SETTING BACKGROUND TO COLOR CHARCOAL GREY

game_2b cp              vga_driver_x            set_background_game_2_num0
                cp              vga_driver_y            set_background_game_2_num0
                cp              vga_driver_x2           set_background_game_2_num639
                cp              vga_driver_y2           set_background_game_2_num479
                cp              vga_driver_pixel        set_background_game_2_color_charcoal_grey
                call    vga_driver_set_xy       vga_driver_ret
                be              game_2bord                               0                                                                       0

// Variables
set_background_game_2_num0                                      0
set_background_game_2_num639                            639
set_background_game_2_num479                            479
set_background_game_2_color_charcoal_grey       0x424242

// END OF SETTING BACKGROUND COLOR

// DRAW BORDER

// :BORDER TOP
game_2bord      cp              vga_driver_x            set_border_game_2_top_x
                cp              vga_driver_y            set_border_game_2_top_y
                cp              vga_driver_x2           set_border_game_2_top_x2
                cp              vga_driver_y2           set_border_game_2_top_y2
                cp              vga_driver_pixel        set_border_game_2_color
                call    vga_driver_set_xy       vga_driver_ret
// :BORDER BOTTOM
        cp              vga_driver_x            set_border_game_2_bottom_x
        cp              vga_driver_y            set_border_game_2_bottom_y
        cp              vga_driver_x2           set_border_game_2_bottom_x2
        cp              vga_driver_y2           set_border_game_2_bottom_y2
        cp              vga_driver_pixel        set_border_game_2_color
        call    vga_driver_set_xy       vga_driver_ret
// :BORDER RIGHT
        cp              vga_driver_x            set_border_game_2_right_x
        cp              vga_driver_y            set_border_game_2_right_y
        cp              vga_driver_x2           set_border_game_2_right_x2
        cp              vga_driver_y2           set_border_game_2_right_y2
        cp              vga_driver_pixel        set_border_game_2_color
        call    vga_driver_set_xy       vga_driver_ret
// :BORDER LEFT
        cp              vga_driver_x            set_border_game_2_left_x
        cp              vga_driver_y            set_border_game_2_left_y
        cp              vga_driver_x2           set_border_game_2_left_x2
        cp              vga_driver_y2           set_border_game_2_left_y2
        cp              vga_driver_pixel        set_border_game_2_color
        call    vga_driver_set_xy       vga_driver_ret
// :BORDER LEFT TOP
        cp              vga_driver_x            set_border_game_2_lt_x
        cp              vga_driver_y            set_border_game_2_lt_y
        cp              vga_driver_x2           set_border_game_2_lt_x2
        cp              vga_driver_y2           set_border_game_2_lt_y2
        cp              vga_driver_pixel        set_border_game_2_color
        call    vga_driver_set_xy       vga_driver_ret
// :BORDER RIGHT TOP
        cp              vga_driver_x            set_border_game_2_rt_x
        cp              vga_driver_y            set_border_game_2_rt_y
        cp              vga_driver_x2           set_border_game_2_rt_x2
        cp              vga_driver_y2           set_border_game_2_rt_y2
        cp              vga_driver_pixel        set_border_game_2_color
        call    vga_driver_set_xy       vga_driver_ret
// :BORDER LEFT BOTTOM
        cp              vga_driver_x            set_border_game_2_lb_x
        cp              vga_driver_y            set_border_game_2_lb_y
        cp              vga_driver_x2           set_border_game_2_lb_x2
        cp              vga_driver_y2           set_border_game_2_lb_y2
        cp              vga_driver_pixel        set_border_game_2_color
        call    vga_driver_set_xy       vga_driver_ret
// :BORDER RIGHT BOTTOM
        cp              vga_driver_x            set_border_game_2_rb_x
        cp              vga_driver_y            set_border_game_2_rb_y
        cp              vga_driver_x2           set_border_game_2_rb_x2
        cp              vga_driver_y2           set_border_game_2_rb_y2
        cp              vga_driver_pixel        set_border_game_2_color
        call            vga_driver_set_xy       vga_driver_ret
        be              game_two_draw_instructions       0       0

// Variables
set_border_game_2_top_x         0
set_border_game_2_top_y                 0
set_border_game_2_top_x2                639
set_border_game_2_top_y2                9

set_border_game_2_bottom_x      0
set_border_game_2_bottom_y      470
set_border_game_2_bottom_x2     630
set_border_game_2_bottom_y2     479

set_border_game_2_right_x       630
set_border_game_2_right_y       0
set_border_game_2_right_x2      639
set_border_game_2_right_y2      479

set_border_game_2_left_x        0
set_border_game_2_left_y        0
set_border_game_2_left_x2       9
set_border_game_2_left_y2       479

set_border_game_2_lt_x          0
set_border_game_2_lt_y          0
set_border_game_2_lt_x2                 19
set_border_game_2_lt_y2                 19

set_border_game_2_rt_x          620
set_border_game_2_rt_y          0
set_border_game_2_rt_x2                 639
set_border_game_2_rt_y2                 19

set_border_game_2_lb_x          0
set_border_game_2_lb_y          460
set_border_game_2_lb_x2                 19
set_border_game_2_lb_y2                 479

set_border_game_2_rb_x                  620
set_border_game_2_rb_y                  460
set_border_game_2_rb_x2         639
set_border_game_2_rb_y2         479

set_border_game_2_color         0x84ffff

// END OF DRAW BORDER
                                // Draw instructions
game_two_draw_instructions      call game_two_instructions_draw game_two_instructions_return
																// Decide on which sentence
                                cp game_two_sentence_it game_two_sentence_it_start
																and game_two_which_sentence game_two_bit_mask 0x80000005
																be game_two_draw_sentence_setup game_two_which_sentence game_two_num1
																cp game_two_sentence_it game_two_sentence_it_start_2
                                // Draw sentence
game_two_draw_sentence_setup    mult game_two_draw_letter_height draw_letter_LETTER_HEIGHT game_two_draw_scale
                                add game_two_draw_letter_height game_two_draw_letter_height game_two_num3
                                mult game_two_draw_letter_width draw_letter_LETTER_WIDTH game_two_draw_scale
                                cp game_two_draw_x game_two_initial_x
                                cp game_two_draw_y game_two_initial_y
                                cp draw_letter_scale game_two_draw_scale
                                cp draw_letter_letter_color game_two_blue
                                cp draw_letter_background_color game_two_grey
game_two_draw_sentence          cpfa game_two_current_letter 0 game_two_sentence_it
                                be game_two_draw_sentence_done game_two_current_letter game_two_ascii_newline
                                cp draw_letter_letter game_two_current_letter
                                cp draw_letter_x game_two_draw_x
                                cp draw_letter_y game_two_draw_y
                                call draw_letter_function draw_letter_ret
                                add game_two_draw_x game_two_draw_x game_two_draw_letter_width
                                add game_two_sentence_it game_two_sentence_it game_two_num1
                                be game_two_draw_sentence 0 0
game_two_draw_sentence_done
                                // Go to next line and reset x
                                add game_two_draw_y game_two_initial_y game_two_draw_letter_height
                                cp game_two_draw_x game_two_initial_x
                                cp game_two_sentence_it game_two_sentence_it_start
																be game_two_process_keyboard game_two_which_sentence game_two_num1
																cp game_two_sentence_it game_two_sentence_it_start_2
                                // Process keyboard input
game_two_process_keyboard       call nb_keyboard_driver_begin nb_keyboard_driver_end
                                // Check if new data
                                be game_two_handle_audio nb_keyboard_driver_new_data_ready game_two_num0

                                // Check if new data is a key pressed (not released)
                                bne game_two_handle_audio nb_keyboard_driver_pr_re game_two_num0
                                cp draw_letter_letter nb_keyboard_driver_ascii
                                cp draw_letter_x game_two_draw_x
                                cp draw_letter_y game_two_draw_y
                                cp draw_letter_letter_color game_two_light_grey
                                // Check if letter is correct
                                cpfa game_two_current_letter 0 game_two_sentence_it
                                // Check if newline character
                                be game_two_done game_two_current_letter game_two_ascii_newline
                                be game_two_call_keyboard game_two_current_letter nb_keyboard_driver_ascii
                                // Executing the line(s) below means it is the wrong letter
                                cp draw_letter_letter_color game_two_red
                                sub game_two_draw_x game_two_draw_x game_two_draw_letter_width
                                sub game_two_sentence_it game_two_sentence_it game_two_num1
game_two_call_keyboard          call draw_letter_function draw_letter_ret
                                add game_two_draw_x game_two_draw_x game_two_draw_letter_width
                                add game_two_sentence_it game_two_sentence_it game_two_num1
                                //be game_two_process_keyboard 0 0
game_two_handle_audio
                                call nb_play_audio_sdram_play_file nb_play_audio_sdram_ret
                                be game_two_process_keyboard 0 0

game_two_done                   be	winb	0	0

// CONSTANTS
game_two_grey                   0x424242
game_two_red                    0xff6666
game_two_blue                   0x84ffff
game_two_light_grey             0xb0bec5
game_two_draw_scale             2
game_two_num0                   0
game_two_num1                   1
game_two_num2										2
game_two_num3                   3
game_two_screen_width           639
game_two_screen_height          479
game_two_ascii_newline          10
game_two_initial_x              50
game_two_initial_y              200
game_two_bit_mask               1
game_two_sentence_it_start      game_two_sentence
game_two_sentence_it_start_2    game_two_sentence_2
game_two_music_start            2232245
game_two_music_end              2505672

game_two_which_sentence					0

// LETTER SPACING
game_two_debug_var              1339
game_two_draw_letter_width      0
game_two_draw_letter_height     0

// CURRENT DRAW POSITION
game_two_draw_x                 0
game_two_draw_y                 0

// CURRENT LETTER
game_two_current_letter         0


// SENTENCE ITERATOR
game_two_sentence_it            game_two_sentence

// SENTENCE BUFFER (newline terminated)
game_two_sentence               84
                                104
                                101
                                32
                                113
                                117
                                105
                                99
                                107
                                32
                                98
                                114
                                111
                                119
                                110
                                32
                                102
                                111
                                120
                                32
                                106
                                117
                                109
                                112
                                115
                                32
                                111
                                118
                                101
                                114
                                32
                                116
                                104
                                101
                                32
                                108
                                97
                                122
                                121
                                32
                                100
                                111
                                103
                                10

// SENTENCE 2 BUFFER (newline terminated)
game_two_sentence_2             83
                                112
                                104
                                105
                                110
                                120
                                32
                                111
                                102
                                32
                                98
                                108
                                97
                                99
                                107
                                32
                                113
                                117
                                97
                                114
                                116
                                122
                                44
                                32
                                106
                                117
                                100
                                103
                                101
                                32
                                109
                                121
                                32
                                118
                                111
                                119
																10

// #include ../font/draw_letter.e
// #include ../nb_drivers/nb_keyboard_driver/nb_keyboard_driver.e
#include game_two_instructions.e
#include ../play_audio/nb_play_audio_sdram.e
// #include ../sdram_audio/load_audio_sdram.e
// #include ../drivers/sd_driver/sd.e
