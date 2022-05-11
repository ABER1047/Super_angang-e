/// @description Insert description here
// You can write your code in this editor
var floor_y = obj_stage.y-48
draw_sprite_ext(spr_shadow,0,x,floor_y,image_xscale*(1 - (abs(y - floor_y)/64)),image_yscale*(1 - (abs(y - floor_y)/64)),0,c_white,image_alpha*0.3*(1 - (abs(y - floor_y)/64)))
draw_self()