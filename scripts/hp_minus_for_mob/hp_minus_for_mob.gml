var random_val = choose(0,0,0,1)
if random_val = 1
{
var random_plus_damage = irandom_range(-5,15)
}
else
{
var random_plus_damage = 0
}

var _damage = (argument0+random_plus_damage)/armored_level
if _damage <= 0
{
_damage = 0
}
hp -= _damage
var d_ef = instance_create_depth(x,y,depth-1,draw_hp_m)
d_ef.d_text = _damage


if argument0+random_plus_damage <= argument0
{
d_ef.image_blend = $FF1E9DFF
view_shake(4,2,2)
}
else
{
d_ef.image_blend = $FF6D19FF
view_shake(4,5,4)
d_ef.image_xscale = 1.1
d_ef.image_yscale = 1.1
}
