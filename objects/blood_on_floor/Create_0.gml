/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
image_xscale = 0
image_yscale = 0
image_speed = 0
image_index = irandom_range(0,image_number-1)

a = 0
alarm[1] = 230

var sfx = audio_play_sound(footstep_sfx,0,0)
audio_sound_gain(sfx,0.03*global.master_volume*global.sfx_volume,0)