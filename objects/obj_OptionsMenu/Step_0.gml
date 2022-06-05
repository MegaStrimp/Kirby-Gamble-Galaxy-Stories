///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Variables
	
	for (var i = 0; i < array_length(menuValue); i++) menuOffset[i] = 0;
	
	//Set Strings
	
	if (setStrings)
	{
		var i = 0;
		menuTitle[i] = scr_Localization(stringAttributes.options_display,stringAttributes.title,0,global.language);
		i += 1;
		menuTitle[i] = scr_Localization(stringAttributes.options_audio,stringAttributes.title,0,global.language);
		i += 1;
		menuTitle[i] = scr_Localization(stringAttributes.options_controls,stringAttributes.title,0,global.language);
		i += 1;
		menuTitle[i] = scr_Localization(stringAttributes.options_language,stringAttributes.title,0,global.language);
		i += 1;
		menuTitle[i] = scr_Localization(stringAttributes.options_other,stringAttributes.title,0,global.language);
		
		strTrue = scr_Localization(stringAttributes.options_true,stringAttributes.title,0,global.language);
		strFalse = scr_Localization(stringAttributes.options_false,stringAttributes.title,0,global.language);
		strFullscreen = scr_Localization(stringAttributes.options_fullscreen,stringAttributes.title,0,global.language);
		strWindowSize = scr_Localization(stringAttributes.options_windowSize,stringAttributes.title,0,global.language);
		strMusic = scr_Localization(stringAttributes.options_music,stringAttributes.title,0,global.language);
		strSoundEffects = scr_Localization(stringAttributes.options_soundEffects,stringAttributes.title,0,global.language);
		strLeft = scr_Localization(stringAttributes.options_left,stringAttributes.title,0,global.language);
		strRight = scr_Localization(stringAttributes.options_right,stringAttributes.title,0,global.language);
		strUp = scr_Localization(stringAttributes.options_up,stringAttributes.title,0,global.language);
		strDown = scr_Localization(stringAttributes.options_down,stringAttributes.title,0,global.language);
		strJump = scr_Localization(stringAttributes.options_jump,stringAttributes.title,0,global.language);
		strAttack = scr_Localization(stringAttributes.options_attack,stringAttributes.title,0,global.language);
		strStart = scr_Localization(stringAttributes.options_start,stringAttributes.title,0,global.language);
		strSelect = scr_Localization(stringAttributes.options_select,stringAttributes.title,0,global.language);
		strPressAnyKey = scr_Localization(stringAttributes.options_pressAnyKey,stringAttributes.title,0,global.language);
		strExtraTutorials = scr_Localization(stringAttributes.options_extraTutorials,stringAttributes.title,0,global.language);
		strAutoSwallow = scr_Localization(stringAttributes.options_autoSwallow,stringAttributes.title,0,global.language);
		setStrings = false;
	}
	
	//Pages
	
	switch (page)
	{
		#region Main
		case "main":
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
		
		if (selection < 0)
		{
			selection += array_length(menuValue);
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > array_length(menuValue) - 1)
		{
			selection -= array_length(menuValue);
			textY = 147 - ((selection + 2) * 36);
		}
		
		menuOffset[selection] = 1;
		
		if (!instance_exists(obj_Fade))
		{
			if (((keyJumpPressed) or (keyStartPressed)) and (((menuValue[selection] == "Controls") and (global.buildType != buildTypes.android)) or (menuValue[selection] != "Controls")))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				subSelection = 0;
				page = menuValue[selection];
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
			scr_SaveConfig("config.ini");
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_MainMenu;
			goBack = false;
		}
		break;
		#endregion
		
		#region Display
		case "Display":
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection += 1;
		}
		
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection -= 1;
		}
		
		if (subSelection < 0)
		{
			subSelection += 2;
		}
		if (subSelection > 1)
		{
			subSelection -= 2;
		}
		
		switch (subSelection)
		{
			case 0:
			if ((keyJumpPressed) or (keyLeftPressed) or (keyRightPressed))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				window_set_fullscreen(!global.fullscreen);
				global.fullscreen = window_get_fullscreen();
				if ((!global.fullscreen) and (instance_exists(obj_Camera))) obj_Camera.windowSet = false;
			}
			break;
			
			case 1:
			if (!global.fullscreen)
			{
				if ((keyJumpPressed) or (keyLeftPressed))
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					with (obj_Camera)
					{
						global.windowSize -= 1;
						if (global.windowSize <= 0) global.windowSize = scaleMax;
						scale = global.windowSize;
						windowSet = false;
					}
				}
				
				if (keyRightPressed)
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					with (obj_Camera)
					{
						global.windowSize += 1;
						if (global.windowSize > scaleMax) global.windowSize = 1;
						scale = global.windowSize;
						windowSet = false;
					}
				}
			}
			else
			{
				if ((keyJumpPressed) or (keyLeftPressed) or (keyRightPressed))
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
				}
			}
		}
		
		if (keyAttackPressed)
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			goBack = true;
		}
		
		if (goBack)
		{
			selection = 0;
			page = "main";
			goBack = false;
		}
		break;
		#endregion
		
		#region Audio
		case "Audio":
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection += 1;
		}
		
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection -= 1;
		}
		
		if (subSelection < 0)
		{
			subSelection += 2;
		}
		if (subSelection > 1)
		{
			subSelection -= 2;
		}
		
		switch (subSelection)
		{
			case 0:
			if ((keyRightPressed) and (global.musicVolume < 1)) global.musicVolume += .1;
			if ((keyLeftPressed) and (global.musicVolume > 0)) global.musicVolume -= .1;
			global.musicVolume = clamp(global.musicVolume,0,1);
			break;
			
			case 1:
			if ((keyRightPressed) and (global.soundVolume < 1))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				global.soundVolume += .1;
			}
			if ((keyLeftPressed) and (global.soundVolume > 0))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				global.soundVolume -= .1;
			}
			global.soundVolume = clamp(global.soundVolume,0,1);
			break;
		}
		
		if (keyAttackPressed)
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			goBack = true;
		}
		
		if (goBack)
		{
			selection = 1;
			page = "main";
			goBack = false;
		}
		break;
		#endregion
		
		#region Controls
		case "Controls":
		if (!paused)
		{
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				subSelection += 1;
			}
			
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				subSelection -= 1;
			}
			
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				subSelection -= 8;
			}
			
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				subSelection += 8;
			}
		}
		
		if (subSelection < 0)
		{
			subSelection += 16;
		}
		if (subSelection > 15)
		{
			subSelection -= 16;
		}
		
		if ((keyAttackPressed) and (!paused))
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			goBack = true;
		}
		
		if (goBack)
		{
			selection = 2;
			page = "main";
			goBack = false;
		}
		
		if ((paused) and (keyboard_check_pressed(vk_anykey)))
		{
			var pressedKey = keyboard_key;
			paused = false;
			switch (subSelection)
			{
				case 0:
				global.finalKeyLeft[0] = pressedKey;
				break;
				
				case 1:
				global.finalKeyRight[0] = pressedKey;
				break;
				
				case 2:
				global.finalKeyUp[0] = pressedKey;
				break;
				
				case 3:
				global.finalKeyDown[0] = pressedKey;
				break;
				
				case 4:
				global.finalKeyJump[0] = pressedKey;
				break;
				
				case 5:
				global.finalKeyAttack[0] = pressedKey;
				break;
				
				case 6:
				global.finalKeyStart[0] = pressedKey;
				break;
				
				case 7:
				global.finalKeySelect[0] = pressedKey;
				break;
				
				case 8:
				global.finalKeyLeft[1] = pressedKey;
				break;
				
				case 9:
				global.finalKeyRight[1] = pressedKey;
				break;
				
				case 10:
				global.finalKeyUp[1] = pressedKey;
				break;
				
				case 11:
				global.finalKeyDown[1] = pressedKey;
				break;
				
				case 12:
				global.finalKeyJump[1] = pressedKey;
				break;
				
				case 13:
				global.finalKeyAttack[1] = pressedKey;
				break;
				
				case 14:
				global.finalKeyStart[1] = pressedKey;
				break;
				
				case 15:
				global.finalKeySelect[1] = pressedKey;
				break;
			}
		}
		else
		{
			if (keyJumpPressed) paused = true;
		}
		break;
		#endregion
		
		#region Language
		case "Language":
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection += 1;
		}
		
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection -= 1;
		}
		
		if (keyLeftPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection -= 8;
		}
		
		if (keyRightPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection += 8;
		}
		
		if (subSelection < 0)
		{
			subSelection += languageArrayLength;
		}
		if (subSelection > languageArrayLength - 1)
		{
			subSelection -= languageArrayLength;
		}
		
		if (keyJumpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			global.language = languageVal[subSelection];
			setStrings = true;
		}
		
		if (keyAttackPressed)
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			goBack = true;
		}
		
		if (goBack)
		{
			selection = 3;
			page = "main";
			goBack = false;
		}
		break;
		#endregion
		
		#region Other
		case "Other":
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection += 1;
		}
		
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection -= 1;
		}
		
		if (subSelection < 0)
		{
			subSelection += 2;
		}
		if (subSelection > 1)
		{
			subSelection -= 2;
		}
		
		switch (subSelection)
		{
			case 0:
			if ((keyJumpPressed) or (keyLeftPressed) or (keyRightPressed))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				global.extraTutorials = !global.extraTutorials;
			}
			break;
			
			case 1:
			if ((keyJumpPressed) or (keyLeftPressed) or (keyRightPressed))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				global.autoSwallow = !global.autoSwallow;
			}
			break;
		}
		
		if (keyAttackPressed)
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			goBack = true;
		}
		
		if (goBack)
		{
			selection = 4;
			page = "main";
			goBack = false;
		}
		break;
		#endregion
	}
}