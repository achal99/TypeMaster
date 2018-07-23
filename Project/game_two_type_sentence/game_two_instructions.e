// WRITTEN BY MILO HARTSOE
// Draw the instructions at the top of the screen
game_two_instructions_draw            // Draw sentence
                                      cp game_two_instructions_sentence_it game_two_instructions_sentence_begin
                                      cp game_two_instructions_draw_x game_two_instructions_initial_x
                                      cp game_two_instructions_draw_y game_two_instructions_initial_y
                                      cp draw_letter_scale game_two_instructions_draw_scale
                                      cp draw_letter_letter_color game_two_instructions_blue
                                      cp draw_letter_background_color game_two_instructions_grey
                                      mult game_two_instructions_draw_letter_width draw_letter_LETTER_WIDTH game_two_instructions_draw_scale
game_two_inst_draw_sentence           cpfa game_two_instructions_current_letter 0 game_two_instructions_sentence_it
                                      be game_two_inst_draw_sentence_done game_two_instructions_current_letter game_two_instructions_ascii_newline
                                      cp draw_letter_letter game_two_instructions_current_letter
                                      cp draw_letter_x game_two_instructions_draw_x
                                      cp draw_letter_y game_two_instructions_draw_y
					cp draw_letter_background_color game_two_instructions_grey_charcoal
                                      call draw_letter_function draw_letter_ret
                                      add game_two_instructions_draw_x game_two_instructions_draw_x game_two_instructions_draw_letter_width
                                      add game_two_instructions_sentence_it game_two_instructions_sentence_it game_two_num1
                                      be game_two_inst_draw_sentence 0 0
game_two_inst_draw_sentence_done      ret game_two_instructions_return




game_two_instructions_return

// CONSTANTS
game_two_instructions_grey             0xffffff
game_two_instructions_blue             0x84ffff
game_two_instructions_grey_charcoal	0x424242
game_two_instructions_sentence_begin   game_two_instructions_sentence
game_two_instructions_initial_x        100
game_two_instructions_initial_y        80
game_two_instructions_draw_scale       3
game_two_instructions_ascii_newline    10

game_two_instructions_draw_letter_width 0

game_two_instructions_draw_x           0
game_two_instructions_draw_y           0

game_two_instructions_current_letter   0

// SENTENCE ITERATOR
game_two_instructions_sentence_it      game_two_instructions_sentence

game_two_instructions_sentence         84
                                       121
                                       112
                                       101
                                       32
                                       116
                                       104
                                       101
                                       32
                                       115
                                       101
                                       110
                                       116
                                       101
                                       110
                                       99
                                       101
                                       32
                                       98
                                       101
                                       108
                                       111
                                       119
                                       10
