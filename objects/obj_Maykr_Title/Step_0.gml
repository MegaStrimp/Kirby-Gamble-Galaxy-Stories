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
	
	#region Stars Alpha
	starsAlpha += .005 * starsAlphaDir;
	if (starsAlpha <= .5)
	{
		starsAlpha = .5;
		starsAlphaDir = 1;
	}
	
	if (starsAlpha >= 1)
	{
		starsAlpha = 1;
		starsAlphaDir = -1;
	}
	#endregion
	
	switch (windowIndex)
	{
		case -1:
		#region Selection
		if ((startTrigger == 2) and (!instance_exists(obj_Fade)))
		{
			if (keyUpPressed)
			{
				audio_play_sound(snd_BossHealth,0,false);
				selection -= 1;
				with (obj_Menu_Button) imageIndex = 0;
			}
			if (keyDownPressed)
			{
				audio_play_sound(snd_BossHealth,0,false);
				selection += 1;
				with (obj_Menu_Button) imageIndex = 0;
			}
		}
		
		if (selection < 0)
		{
			selection = 2;
		}
		if (selection > 2)
		{
			selection = 0;
		}
		
		if ((startTrigger == 2) and (!instance_exists(obj_Fade)) and ((keyJumpPressed) or (keyStartPressed))) select = true;
		
		if (select)
		{
			switch (selection)
			{
				case 1:
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				scr_Maykr_WindowReset();
				
				windowIndex = maykrWindows.canvasSetup;
				var roomWidth = 4800;
				var roomHeight = 270;
				scr_Maykr_CreateRoom(roomWidth,roomHeight);
				
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = global.maykrCanvas;
				break;
				
				case 2:
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_MainMenu;
				break;
			}
			select = false;
		}
		#endregion
		break;
		
		case maykrWindows.canvasSetup:
		if (keyAttackPressed)
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			windowIndex = -1;
		}
		break;
	}
}