/// @description Insert description here
// You can write your code in this editor
speed = -image_xscale

randomize()
repeat(irandom_range(1,3))
{
var _fl_blood = instance_create_depth(x,y,depth,blood_gravity)
_fl_blood.hspeed = -(image_xscale*irandom_range(10,65)/10)
_fl_blood.vspeed = -irandom_range(10,65)/10
_fl_blood.sprite_index = sprite98
}