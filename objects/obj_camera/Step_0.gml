/// @description Insert description here
// You can write your code in this editor
if global.t_shake_x > 0 || global.t_shake_y > 0
{
	if global.t_shake_x <= 0.01
	{
	global.t_shake_x = 0
	}
	
	if global.t_shake_y <= 0.01
	{
	global.t_shake_y = 0
	}
global.t_shake_x += (0 - global.t_shake_x)*0.1
global.t_shake_y += (0 - global.t_shake_y)*0.1
global.real_shake_x += (global.t_shake_x*global.shake_x - global.real_shake_x)*0.1
global.real_shake_y += (global.t_shake_y*global.shake_y - global.real_shake_y)*0.1
global.shake_time ++
	if global.shake_time > 2
	{
	global.shake_x = -global.shake_x
	global.shake_y = -global.shake_y
	global.shake_time = 0
	}
}


x += global.real_shake_x
y += global.real_shake_y


depth = -9999


if t_x != -4
{
x += (t_x - x)*0.05
}


if t_y != -4
{
y += (t_y - y)*0.05
}

x = floor(x)
y = floor(y)


v_x += (tv_x - v_x)*0.02;
v_y += (tv_y - v_y)*0.02;
global.view_angle_ += (0 - global.view_angle_)*0.1

camera_set_view_angle(view_camera[0],global.view_angle_)
camera_set_view_size(view_camera[0],floor(v_x),floor(v_y));

if view_smaller > 0
{
tv_x -= view_smaller*1.28
tv_y -= view_smaller*0.72
}



if fighting = 1
{
	if instance_number(mob_parents) >= 2
	{
	t_x = obj_stage.x
	}
	else
	{
		if instance_exists(twitch_player) && last_say = 0
		{
		t_x = twitch_player.x
		var _mes = instance_create_depth(-100,-100,-9999,guide_message)
		_mes.title = "최후의 말"
		_mes.text = "(!say 명령어를 통해 아무말이나 해보세요)"
		last_say = 1
		}
		
		if !instance_exists(twitch_player)
		{
		fighting = 0
		instance_destroy(guide_message)
		var _mes = instance_create_depth(-100,-100,-9999,guide_message)
		_mes.title = "참가자 모집중"
		_mes.text = "(!join 명령어를 통해 게임에 참여 할 수 있습니다)"
		last_say = 0
		global.waiting_joining = 1
		alarm[1] = 60
		}
	}
}

if last_say >= 1
{
last_say ++
	if last_say > 1200
	{
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var dust = instance_create_depth(twitch_player.x+irandom_range(-5,5),twitch_player.y+irandom_range(-5,5),twitch_player.depth-1,pepsi_effect)
		var scale = irandom_range(20,40)/50
		dust.image_xscale = scale
		dust.image_yscale = scale
		dust.vspeed = irandom_range(-50,50)/37
		dust.hspeed = irandom_range(-50,50)/37
		dust.image_alpha = 1
		}
	
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*global.sfx_volume,0)
	
	instance_destroy(twitch_player)
	}
}