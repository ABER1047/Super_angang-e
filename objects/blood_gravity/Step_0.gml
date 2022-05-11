/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_stage)
{
var _fl_blood = instance_create_depth(x,y,8,blood_on_floor)
_fl_blood.scale_dir = choose(-1,1)
_fl_blood.sprite_index = sprite99
instance_destroy()
}

if y > room_height+100
{
instance_destroy()
}

image_alpha += 0.1
speed += (0 - speed)*0.01