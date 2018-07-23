// WRITTEN BY MILO HARTSOE
// draw_letter_function: Draw letter function
// @Param: draw_letter_scale - scale of letter
// @Param: draw_letter_letter - ASCII value (only supports 'a'-'z')
// @Param: draw_letter_ret - return IAR
// @Param: draw_letter_x - top left x coordinate to draw. NOTE: NOT draw_letter_draw_x
// @Param: draw_letter_y - top left y coordinate to draw. NOTE: NOT draw_letter_draw_y
// @Param: draw_letter_letter_color - color for letter
// @Param: draw_letter_background_color - color for background
// NOTE FOR FUTURE: Could be modified to not print over all pixels in grid. Transparent font possible.
//                  Could say if draw_letter_background_color is -1, then do not draw
// Could be optimized for storage with storing each row as one number and bit shifting

draw_letter_function
                                    // Set index to start of letter data
                                    cpfa draw_letter_data_start letter_data_lookup_letter draw_letter_letter
                                    cp draw_letter_data_index draw_letter_num0
                                    cp draw_letter_draw_y draw_letter_y
                                    add draw_letter_draw_end_y draw_letter_draw_y draw_letter_scale
                                    cp draw_letter_count_y draw_letter_num0
draw_letter_height_loop             be draw_letter_function_end draw_letter_count_y draw_letter_LETTER_HEIGHT
                                    cp draw_letter_draw_x draw_letter_x
                                    add draw_letter_draw_end_x draw_letter_x draw_letter_scale
                                    cp draw_letter_count_x draw_letter_num0
draw_letter_width_loop              be draw_letter_increment_height draw_letter_count_x draw_letter_LETTER_WIDTH
                                    // Set pixel x,y. TODO: Implement scaling
                                    cp vga_driver_x draw_letter_draw_x
                                    cp vga_driver_x2 draw_letter_draw_end_x
                                    cp vga_driver_y draw_letter_draw_y
                                    cp vga_driver_y2 draw_letter_draw_end_y
                                    // Increment count
                                    add draw_letter_count_x draw_letter_count_x draw_letter_num1
                                    // Draw correct color
                                    add draw_letter_back_or_for_grnd draw_letter_data_start draw_letter_data_index
                                    cpfa draw_letter_back_or_for_grnd 0 draw_letter_back_or_for_grnd
                                    be draw_letter_draw_foreground draw_letter_back_or_for_grnd draw_letter_num1
draw_letter_draw_background         cp vga_driver_pixel draw_letter_background_color
                                    be draw_letter_call_driver 0 0
draw_letter_draw_foreground         cp vga_driver_pixel draw_letter_letter_color
draw_letter_call_driver             call vga_driver_set_xy vga_driver_ret
draw_letter_increment_width         add draw_letter_draw_x draw_letter_draw_x draw_letter_scale
                                    add draw_letter_draw_end_x draw_letter_draw_x draw_letter_scale
draw_letter_increment_index         add draw_letter_data_index draw_letter_data_index draw_letter_num1
draw_letter_width_loop_end          be draw_letter_width_loop 0 0

draw_letter_increment_height        add draw_letter_draw_y draw_letter_draw_y draw_letter_scale
                                    add draw_letter_draw_end_y draw_letter_draw_y draw_letter_scale
draw_letter_increment_count_y       add draw_letter_count_y draw_letter_count_y draw_letter_num1
draw_letter_height_loop_end         be draw_letter_height_loop 0 0

draw_letter_function_end            ret draw_letter_ret

debug_number                        1337
draw_letter_draw_x                  0
draw_letter_draw_y                  0
draw_letter_draw_end_x              0
draw_letter_draw_end_y              0
draw_letter_count_x                 0
draw_letter_count_y                 0
draw_letter_data_index              0
draw_letter_data_start              0
draw_letter_back_or_for_grnd        0

// RELATED TO SIZE OF LETTERS:
draw_letter_LETTER_WIDTH            6
draw_letter_LETTER_HEIGHT           8

// CONSTANTS
draw_letter_num0                    0
draw_letter_num1                    1

// PARAMETERS
draw_letter_scale                   0
draw_letter_letter                  0
draw_letter_ret                     0
draw_letter_x                       0
draw_letter_y                       0
draw_letter_letter_color            16711680 // RED
draw_letter_background_color        16777215 // WHITE

// DATA: 0 means background. 1 means letter/foreground
// In letter_data.e


#include ../../Lab/Lab8/vga_driver/vga_driver.e
#include letter_data.e
