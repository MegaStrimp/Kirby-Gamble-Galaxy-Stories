///@description Room Start

#region Reset Global Variables
global.healthbarMarkedEnemy = -1;
#endregion

#region Check Forbidden Levels
if (!scr_CheckForbiddenLevels(room)) room_goto(rm_Setup);
#endregion

#region Gradient
if (!layer_exists("Gradient"))
{
	var gradient = layer_create(999,"Gradient");
	layer_background_create(gradient,bg_Gradient1);
	layer_y(gradient,room_height - sprite_get_height(bg_Gradient1));
}
else
{
	layer_y("Gradient",room_height - sprite_get_height(bg_Gradient1));
	layer_hspeed("Gradient",-.2);
}
#endregion

#region Game Modes
switch (room)
{
	case global.maykrCanvas:
	global.gamemode = gamemodes.maykr;
	if (!instance_exists(obj_Maykr_Control)) instance_create_depth(0,0,-999,obj_Maykr_Control);
	break;
	
	case rm_SMB_BowserImpostor:
	global.gamemode = gamemodes.gamblion;
	break;
	
	default:
	global.gamemode = gamemodes.normal;
	break;
}
#endregion

#region Set Discord Rich Presence
rousr_dissonance_set_details(global.discordDetailText);
rousr_dissonance_set_state(global.discordStateText);
rousr_dissonance_set_large_image(global.discordLargeImage,global.discordLargeImageText);
rousr_dissonance_set_small_image(global.discordSmallImage,global.discordSmallImageText);
#endregion

#region Virtual Keys
if (global.buildType == buildTypes.android) scr_VirtualKeysSet();
#endregion
