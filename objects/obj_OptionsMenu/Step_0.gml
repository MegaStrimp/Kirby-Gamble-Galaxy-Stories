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
		updateMenu();
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
				if (menuValue[selection] != "Reset")
				{
					page = menuValue[selection];
				}
				else
				{
					scr_OptionsMenu_Reset();
				}
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
			var demo = false;
			//demo = true;
			if (demo)
			{
				fade.targetRoom = rm_StageSelect_Demo;
			}
			else
			{
				fade.targetRoom = rm_MainMenu;
			}
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
		}
		
		switch (controlsPage)
		{
			case -1:
			if (subSelection < 0)
			{
				subSelection += 4;
			}
			if (subSelection > 3)
			{
				subSelection -= 4;
			}
			
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				controlsPage = subSelection;
				subSelection = 0;
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
			break;
			
			case 0:
			case 1:
			case 2:
			case 3:
			if (subSelection < 0)
			{
				subSelection += 8;
			}
			if (subSelection > 7)
			{
				subSelection -= 8;
			}
			
			if ((keyAttackPressed) and (!paused))
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
			
			if (goBack)
			{
				subSelection = controlsPage;
				controlsPage = -1;
				goBack = false;
			}
			
			if ((paused) and (keyboard_check_pressed(vk_anykey)))
			{
				var pressedKey = keyboard_key;
				paused = false;
				switch (subSelection)
				{
					case 0:
					global.finalKeyLeft[controlsPage] = pressedKey;
					break;
					
					case 1:
					global.finalKeyRight[controlsPage] = pressedKey;
					break;
					
					case 2:
					global.finalKeyUp[controlsPage] = pressedKey;
					break;
					
					case 3:
					global.finalKeyDown[controlsPage] = pressedKey;
					break;
					
					case 4:
					global.finalKeyJump[controlsPage] = pressedKey;
					break;
					
					case 5:
					global.finalKeyAttack[controlsPage] = pressedKey;
					break;
					
					case 6:
					global.finalKeyStart[controlsPage] = pressedKey;
					break;
					
					case 7:
					global.finalKeySelect[controlsPage] = pressedKey;
					break;
				}
			}
			else
			{
				if (keyJumpPressed) paused = true;
			}
			break;
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
			obj_Polyglot.setLocale(languageArray[subSelection]);
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
			subSelection += 5;
		}
		if (subSelection > 4)
		{
			subSelection -= 5;
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
			
			case 2:
			if ((keyJumpPressed) or (keyLeftPressed) or (keyRightPressed))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				global.musicIntro = !global.musicIntro;
			}
			break;
			
			case 3:
			if ((keyJumpPressed) or (keyLeftPressed) or (keyRightPressed))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				global.enemyHealthbars = !global.enemyHealthbars;
			}
			break;
			
			case 4:
			if ((keyJumpPressed) or (keyLeftPressed) or (keyRightPressed))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				global.hitNumbers = !global.hitNumbers;
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