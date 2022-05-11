/// @description  save_twitch_chat(sender_id,chat_data);
/// @param sender_id
/// @param chat_data
if string_length(argument0) < 12 && string_length(argument1) < 20
{
	if global.waiting_joining = 1 && global.chat_data != noone
	{
	global.chat_data = noone
	}
	
	if self.p_mes_dev = -1 && global.chat_data != noone
	{
	p_mes_dev = instance_create_depth(x,y,player.depth-2,player_message)
	p_mes_dev.text = string(argument1)
	p_mes_dev.target = self.id
	global.chat_data = noone
	alarm[0] = 300
	}
}