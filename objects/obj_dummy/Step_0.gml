/// @description Insert description here
// You can write your code in this editor
depth = -1

randomize()
var floor_y = obj_stage.y-48
if y >= floor_y
{
vspeed = 0
	if gravity > 0
	{
	y = floor_y
	gravity = 0
	image_index = 0
	t_movement_speed = 0
	cool_time = 1
	alarm[1] = 30
	}
}
else
{
	if gravity != 0.3
	{
	gravity = 0.3
	var sfx = audio_play_sound(jump_sfx,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
	}
image_index = 2
target = noone
}

if target != noone && instance_exists(target)
{
	if abs(target.x - x) > 1
	{
		if x > target.x
		{
		image_xscale = abs(image_xscale)
		t_movement_speed = -4
		}
		else
		{
		image_xscale = -abs(image_xscale)
		t_movement_speed = 4
		}
	}
	else
	{
	movement_speed = 0
	t_movement_speed = 0
	}
}

movement_speed += (t_movement_speed - movement_speed)*0.1
if !place_meeting(x+movement_speed,y,wall)
{
x += movement_speed*0.75
	if abs(movement_speed) > 0.1
	{
	image_index += 0.06
	}
}
else
{
movement_speed = sign(image_xscale)
target = noone
}

if place_meeting(x,y+1,obj_stage) && cool_time = 0
{
	if abs(movement_speed) < 0.1 && t_movement_speed = 0
	{
	movement_speed = 0
	image_index = 0
	}
	else
	{
		if image_index <= 1
		{
		image_index = 1
		}
	
		if floor(image_index) = 2
		{
			if footstep_sound = 0
			{
			var sfx = audio_play_sound(footstep_sfx,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
			footstep_sound = 1
			}
		}
		else
		{
		footstep_sound = 0
		}
	}
}

if attack > 0
{
image_index = 0
movement_speed = 0
t_movement_speed = 0
attack ++
	if attack = 2
	{
	var sfx = audio_play_sound(rage_sfx,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	}

	if attack > 60
	{
		if target != noone
		{
		movement_speed = -(sign(x - target.x)*25)
		}
		else
		{
		movement_speed = -sign(image_xscale)*25
		}

	gravity = 0
	vspeed = -5
	image_index = 2
	attack = 0
	var effect = instance_create_depth(x,y,depth+1,jan_sang_enemy_critical)
	effect.sprite_index = sprite_index
	effect.image_speed = 0
	effect.image_index = image_index
	target = noone
	
	cool_time = 1
	alarm[1] = irandom_range(30,70)
	}
}

if attack = 0 && abs(x - mob_parents.x) < 32 && can_attack = 1
{
var random_attack = percentage_k(20)

	if random_attack = 1
	{
	target = noone
	cool_time = 1
	attack = 1
	can_attack = 0
	t_can_attack_time = irandom_range(70,130)
	can_attack_time = 0
	}
	else
	{
	var effect = instance_create_depth(x,y,depth+1,jan_sang_enemy)
	effect.sprite_index = sprite_index
	effect.image_speed = 0
	effect.image_index = image_index
	gravity = 0
	vspeed = -2.8
	cool_time = 1
	can_attack = 0
	t_can_attack_time = irandom_range(70,130)
	can_attack_time = 0
	}
}

can_attack_time += 0.5
if can_attack_time > t_can_attack_time
{
can_attack = 1
}


if cool_time = 0
{
	if instance_exists(obj_messi)
	{
	target = obj_messi
	}
}


if place_meeting(x,y,mob_parents)
{
var obj_m = instance_place(x,y,mob_parents)
	if instance_exists(obj_m) && cool_time = 0 
	{
	var random_runaway = percentage_k(80)
	
		if random_runaway = 1
		{
		cool_time = 1
		alarm[1] = 30
	
			if abs(t_movement_speed) < abs(obj_m.t_movement_speed)
			{
			t_movement_speed = obj_m.t_movement_speed*0.8
			}
		}
		else
		{
		image_xscale = -image_xscale
		target = noone
		t_movement_speed = -sign(obj_m.x - x)*4
		cool_time = 1
		alarm[1] = irandom_range(60,80)
		}
	}
}



if place_meeting(x,y,jan_sang) && hurt = 0
{
var obj_m = instance_place(x,y,jan_sang)
var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
audio_sound_gain(sfx,0.35*global.master_volume*global.sfx_volume,0)
hurt = 1
cool_time = 1
if instance_exists(obj_m)
{
movement_speed = sign(x - obj_m.x)*15
}
else
{
movement_speed = choose(-1,1)*15
}
t_movement_speed = 0
image_index = 0
vspeed = irandom_range(-10,-40)/10
alarm[1] = irandom_range(15,40)
alarm[2] = 15
hp_minus_for_mob(2)
	
var _effect = instance_create_depth(x+irandom_range(-16,16),y+irandom_range(-5,5),depth-1,ef_blood_2)
if instance_exists(obj_m)
{
_effect.image_xscale = -sign(x - obj_m.x)
}
else
{
_effect.image_xscale = choose(-1,1)
}
_effect.sprite_index = blood_effect

var random_voice = percentage_k(60)
	if random_voice = 1 && !audio_is_playing(yayaya) && !audio_is_playing(wakgood_hurt) && !audio_is_playing(ya_sibal) && !audio_is_playing(sagaji) && !audio_is_playing(ssip) && !audio_is_playing(gae_sae_ggya) && !audio_is_playing(jjin) && !audio_is_playing(dda)
	{
	var sfx = audio_play_sound(choose(yayaya,sagaji,ssip,gae_sae_ggya,jjin,dda),0,0)
	audio_sound_gain(sfx,0.35*global.master_volume*global.sfx_volume,0)
	}
}

if place_meeting(x,y,jan_sang_critical) && hurt = 0
{
var obj_m = instance_place(x,y,jan_sang)
var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
audio_sound_gain(sfx,0.35*global.master_volume*global.sfx_volume,0)
hurt = 1
cool_time = 1
if instance_exists(obj_m)
{
movement_speed = sign(x - obj_m.x)*15
}
else
{
movement_speed = choose(-1,1)*15
}
t_movement_speed = 0
image_index = 0
vspeed = irandom_range(-10,-40)/10
alarm[1] = irandom_range(15,40)
alarm[2] = 15
hp_minus_for_mob(4)
	
var _effect = instance_create_depth(x+irandom_range(-16,16),y+irandom_range(-5,5),depth-1,ef_blood_2)
if instance_exists(obj_m)
{
_effect.image_xscale = -sign(x - obj_m.x)
}
else
{
_effect.image_xscale = choose(-1,1)
}
_effect.sprite_index = blood_effect

var random_voice = percentage_k(90)
	if random_voice = 1 && !audio_is_playing(yayaya) && !audio_is_playing(wakgood_hurt) && !audio_is_playing(ya_sibal) && !audio_is_playing(sagaji) && !audio_is_playing(ssip) && !audio_is_playing(gae_sae_ggya) && !audio_is_playing(jjin) && !audio_is_playing(dda)
	{
	var sfx = audio_play_sound(choose(yayaya,sagaji,ssip,gae_sae_ggya,jjin,dda),0,0)
	audio_sound_gain(sfx,0.35*global.master_volume*global.sfx_volume,0)
	}
}





if hp <= 0
{
	repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
	{
	randomize()
	var dust = instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),depth-1,pepsi_effect)
	var scale = irandom_range(20,40)/50
	dust.image_xscale = scale
	dust.image_yscale = scale
	dust.vspeed = irandom_range(-50,50)/37
	dust.hspeed = irandom_range(-50,50)/37
	dust.image_alpha = 1
	}
	
var sfx = audio_play_sound(mob_faint,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*global.sfx_volume,0)

var sfx = audio_play_sound(choose(aaang_,shut_up,gibungoa),0,0)
audio_sound_gain(sfx,0.35*global.master_volume*global.sfx_volume,0)

instance_destroy()
}
