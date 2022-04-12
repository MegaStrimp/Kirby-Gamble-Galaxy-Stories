///@description Main

//Tutorial

if ((global.extraTutorials) and (!global.exTut_AntiFloat) and (!global.cutscene) and (global.progression >= progression.greenGreens))
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