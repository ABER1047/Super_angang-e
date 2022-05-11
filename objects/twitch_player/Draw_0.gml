/// @description Insert description here
// You can write your code in this editor
var floor_y = 512-32
draw_sprite_ext(spr_player_shadow,0,x,floor_y,image_xscale*(1 - (abs(y - floor_y)/64)),image_yscale*(1 - (abs(y - floor_y)/64)),0,c_white,image_alpha*0.3*(1 - (abs(y - floor_y)/64)))
draw_self()

draw_text_kl_scale(x,y-32,text,16,99999,image_alpha,c_white,0,0,font0,1/3,1/3,image_angle)