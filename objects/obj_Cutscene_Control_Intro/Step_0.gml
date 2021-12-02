///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Skip Cutscene
	
	if ((!instance_exists(obj_Fade)) and ((keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_start))))
	{
		var fade = instance_create_depth(0,0,-999,obj_Fade);
		fade.alphaSpd = .01;
		fade.targetRoom = rm_ChapterIntro;
		fade.skipCutscene = true;
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if (!instance_exists(obj_Fade))
		{
			var fade = instance_create_depth(0,0,-999,obj_Fade);
			fade.alphaSpd = .01;
			fade.targetRoom = rm_ChapterIntro;
		}
		destroyTimer = -1;
	}
}