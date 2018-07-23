// WRITTEN BY MILO HARTSOE

                            // Set screen to black
                            cp vga_driver_x test_font_num0
                            cp vga_driver_y test_font_num0
                            cp vga_driver_x2 test_font_num640
                            cp vga_driver_y2 test_font_num480
                            cp vga_driver_pixel test_font_black
                            call vga_driver_set_xy vga_driver_ret
                            cp draw_letter_scale test_font_num1
                            cp draw_letter_letter test_font_num97
                            cp draw_letter_background_color test_font_black
                            cp draw_letter_letter_color test_font_white
                            cp draw_letter_x test_font_num0
                            cp draw_letter_y test_font_num0
                            cp draw_letter_scale test_font_scaling
                            call draw_letter_function draw_letter_ret
                            // Draw all the letters a - z
test_font_draw_lowercase    be end test_font_letter_choice test_font_letter_z
                            add test_font_letter_choice test_font_letter_choice test_font_num1
                            mult test_font_pixel_width draw_letter_LETTER_WIDTH test_font_scaling
                            add test_font_drawing_x test_font_drawing_x test_font_pixel_width
                            add test_font_drawing_x test_font_drawing_x test_font_spacing
                            cp draw_letter_letter test_font_letter_choice
                            cp draw_letter_x test_font_drawing_x
                            cp draw_letter_y test_font_drawing_y
                            call draw_letter_function draw_letter_ret
                            be test_font_draw_lowercase 0 0
end                         halt

test_font_num0              0
test_font_num1              1
test_font_scaling           3
test_font_num480            479
test_font_num640            639
test_font_num97             97
test_font_black             0
test_font_white             0xffffff
test_font_letter_choice     97
test_font_letter_z          122
test_font_drawing_x         0
test_font_drawing_y         0
test_font_spacing           5
test_font_pixel_width       0

#include draw_letter.e
