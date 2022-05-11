/// @description Insert description here
// You can write your code in this editor
draw_self()
image_alpha -= 0.005
a += 0.02
if image_alpha <= 0
{
instance_destroy()
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,$FFFF00FF,image_alpha*a)

hspeed += (0 - hspeed)*0.1