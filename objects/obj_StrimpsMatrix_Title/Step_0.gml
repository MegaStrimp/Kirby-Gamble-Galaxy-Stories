///@description Main

if (!global.pause)
{
	#region Variables
	scr_Player_Inputs(0);
	startLerp = lerp(startLerp,1,.01);
	if (startLerp >= .85) startTrigger = 1;
	if (startTrigger >= 1) buttonLerp = lerp(buttonLerp,1,.05);
	if (buttonLerp >= .5) startTrigger = 2;
	#endregion
	
	switch (windowIndex)
	{
		case -1:
		#region Selection
		if ((startTrigger == 2) and (!instance_exists(obj_Fade)))
		{
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection -= 1;
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection += 1;
			}
		}
		
		if (selection < 0)
		{
			selection = 1;
		}
		if (selection > 1)
		{
			selection = 0;
		}
		
		if ((startTrigger == 2) and (!instance_exists(obj_Fade)) and ((keyJumpPressed) or (keyStartPressed))) select = true;
		
		if (select)
		{
			switch (selection)
			{
				case 0:
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_RtDL_CookieCountry1_Room1;
				break;
				
				case 1:
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				var demo = false;
				//demo = true;
				if (demo)
				{
					fade.targetRoom = rm_DemoStageSelect;
				}
				else
				{
					fade.targetRoom = rm_MainMenu;
				}
				break;
			}
			select = false;
		}
		#endregion
		break;
	}
}