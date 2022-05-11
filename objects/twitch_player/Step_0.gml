/// @description Insert description here
// You can write your code in this editor
if y >= 512-32
{
time ++
image_index = 1
	if gravity > 0
	{
	gravity = 0
	vspeed = 0
	y = 512-32
	}
}
else
{
image_index = 0
gravity = 0.23
}

if gravity = 0 && can_jump = 1
{
vspeed = -choose(2,3,4)
can_jump = 0
}


if time > t_time
{
can_jump = 1
time = 0
t_time = irandom_range(40,80)
}