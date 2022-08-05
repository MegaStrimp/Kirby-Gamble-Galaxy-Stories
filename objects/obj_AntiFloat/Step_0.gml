///@description Main

if (!global.pause)
{
	image_speed = 1;
}
else
{
	image_speed = 0;
}

//Tutorial

if ((global.extraTutorials) and (global.gamemode == gamemodes.normal) and (!global.exTut_AntiFloat) and (!global.cutscene) and (global.progression >= progression.greenGreens))
{
	scr_PlayCutscene(cutscenes.exTut_AntiFloat);
	global.exTut_AntiFloat = true;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}