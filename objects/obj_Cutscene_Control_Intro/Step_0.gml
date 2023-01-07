///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Skip Cutscene
	
	if ((!instance_exists(obj_Fade)) and (keyStartPressed))
	{
		global.roomNext = rm_GreenGreens1;
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
			global.roomNext = rm_GreenGreens1;
			var fade = instance_create_depth(0,0,-999,obj_Fade);
			fade.alphaSpd = .01;
			fade.targetRoom = rm_ChapterIntro;
		}
		destroyTimer = -1;
	}
}