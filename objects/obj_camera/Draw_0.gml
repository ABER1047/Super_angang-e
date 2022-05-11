/// @description Insert description here
// You can write your code in this editor
global.w_alpha += (-0.01 - global.w_alpha)*0.1

draw_set_alpha(global.w_alpha)
draw_set_color(c_white)
draw_line_width(-300,-300,room_width+300,room_height+300,99999)