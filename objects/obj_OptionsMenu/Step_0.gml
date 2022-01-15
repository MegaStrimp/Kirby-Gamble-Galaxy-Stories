///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Variables
	
	for (var i = 0; i < array_length(menuTitle); i++) menuOffset[i] = 0;
	
	//Select
	
	if (keyDownPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection += 1;
	}
	
	if (keyUpPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection -= 1;
	}
	
	switch (page)
	{
		#region Main
		case "main":
		if (selection < 0)
		{
			selection += array_length(menuTitle);
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > array_length(menuTitle) - 1)
		{
			selection -= array_length(menuTitle);
			textY = 147 - ((selection + 2) * 36);
		}
		
		menuOffset[selection] = 1;
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				page = menuTitle[selection];
			}
			
			if (keyAttackPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
		}
		
		if (goBack)
		{
			scr_SaveGame(global.selectedSave);
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_MainMenu;
			goBack = false;
		}
		break;
		#endregion
		
		#region Audio
		case "Audio":
		if (selection < 0)
		{
			selection += array_length(audioMenuIndex);
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > array_length(audioMenuIndex) - 1)
		{
			selection -= array_length(audioMenuIndex);
			textY = 147 - ((selection + 2) * 36);
		}
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				//page = audioMenuIndex[selection];
			}
			
			if (keyAttackPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
		}
		
		if (goBack)
		{
			page = "main";
			goBack = false;
		}
		break;
		#endregion
	}
}