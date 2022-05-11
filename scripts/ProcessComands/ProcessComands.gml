/// @description  ProcessComands(name,data);
/// @param name
/// @param data

if global.waiting_joining = 1
{
	if (string_pos("!join",argument1) = 1)
	{
	global.chat_sender = argument0;
	global.chat_data = string_replace(argument1,"!join","");
	
	for(var i = 0; i < 2; i ++)
	{
		if global.joiner[i] = ""
		{
		global.joiner[i] = global.chat_sender;
		break;
		};
	};
	
	global.waiting_joining = 0;
	instance_destroy(guide_message)
	};
};
