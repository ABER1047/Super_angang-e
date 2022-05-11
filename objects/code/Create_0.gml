/// @description Insert description here
// You can write your code in this editor
global.master_volume = 1
global.sfx_volume = 1

var sfx = audio_play_sound(bgm_1,0,0)
audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)


global.joiner[0] = ""
global.joiner[1] = ""

global.waiting_joining = 0