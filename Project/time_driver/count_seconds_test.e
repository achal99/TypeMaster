// WRITTEN BY MAC YOUNG
// @Param: draw_letter_scale - scale of letter
// @Param: draw_letter_letter - ASCII value (only supports 'a'-'z')
// @Param: draw_letter_ret - return IAR
// @Param: draw_letter_x - top left x coordinate to draw. NOTE: NOT draw_letter_draw_x
// @Param: draw_letter_y - top left y coordinate to draw. NOTE: NOT draw_letter_draw_y
// @Param: draw_letter_letter_color - color for letter
// @Param: draw_letter_background_color - color for background

				cp		draw_letter_scale 		scale
				cp		draw_letter_letter 		num100


begin			call 	count_sec_begin			count_sec_ret
				be 		draw_next_let			num1					ticker
				be 		begin 					0 						0


draw_next_let	add		draw_letter_x 			draw_letter_x 			num60
				call	draw_letter_function	draw_letter_ret
				be 		begin 					0 						0








// VARS
num0 		0
num1		1
num60		60
scale		10
num100		100



#include count_seconds.e
#include ../font/draw_letter.e
