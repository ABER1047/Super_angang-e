/// @description Insert description here
// You can write your code in this editor
if string_length(text) < 10
{
image_index = 0
}

if string_length(text) >= 10 && string_length(text) < 18
{
image_index = 1
}

if string_length(text) >= 18
{
image_index = 2
}


anime += 0.6

if instance_exists(target)
{
x = target.x
y = target.y-23
}


if des = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}

	if anime < 9
	{
	image_xscale += (1.2 - image_xscale)*0.3
	image_yscale += (1.2 - image_yscale)*0.3
	}

	if anime >= 9 && anime < 13
	{
	image_xscale += (0.9 - image_xscale)*0.2
	image_yscale += (0.9 - image_yscale)*0.2
	}

	if anime >= 13
	{
	image_xscale += (1 - image_xscale)*0.2
	image_yscale += (1 - image_yscale)*0.2
	}
}
else
{
	if image_alpha > 0
	{
	image_alpha -= 0.1
	}
	
	image_xscale += (0 - image_xscale)*0.21
	image_yscale += (0 - image_yscale)*0.21

	if image_alpha <= 0
	{
	instance_destroy()
	}

}