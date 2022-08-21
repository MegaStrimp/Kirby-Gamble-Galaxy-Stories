///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Buttons
	
	if (!instance_exists(obj_Fade))
	{
		if ((keyJumpPressed) or (keyAttackPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			goBack = true;
		}
	}
	
	if (goBack)
	{
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_StageSelect_Demo;
		fade.alphaSpd = .02;
		goBack = false;
	}
	
	//Movement
	
	yy -= .5;
}