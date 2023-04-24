///@description Main

#region Inputs
scr_Player_Inputs(0);
#endregion

switch (state)
{
	#region Auth 1
	case firstTimeSetupStates.auth1:
	timer += 1;
	
	if (timer >= 150)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		
		state = firstTimeSetupStates.auth2;
		timer = 0;
	}
	break;
	#endregion
	
	#region Auth 2
	case firstTimeSetupStates.auth2:
	timer += 1;
	
	if (timer >= 60)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		
		state = firstTimeSetupStates.auth3;
		timer = 0;
	}
	break;
	#endregion
	
	#region Auth 3
	case firstTimeSetupStates.auth3:
	timer += 1;
	
	if (timer >= 60)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		
		state = firstTimeSetupStates.auth4;
		timer = 0;
	}
	break;
	#endregion
	
	#region Auth 4
	case firstTimeSetupStates.auth4:
	timer += 1;
	
	if (timer >= 60)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		
		state = firstTimeSetupStates.auth5;
		timer = 0;
	}
	break;
	#endregion
	
	#region Auth 5
	case firstTimeSetupStates.auth5:
	timer += 1;
	
	if (timer >= 180)
	{
		audio_stop_all();
		audio_play_sound(snd_BossHealth,0,false);
		scr_PlayMusic(true,false,mus_FirstTimeSetup,0,true);
		
		state = firstTimeSetupStates.language;
		selection = "languages";
		timer = 0;
	}
	break;
	#endregion
	
	#region Language
	case firstTimeSetupStates.language:
	switch (selection)
	{
		case "languages":
		if (keyLeftPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection -= 1;
			if (subSelection < 0)
			{
				subSelection += languageArrayLength;
			}
			if (subSelection > languageArrayLength - 1)
			{
				subSelection -= languageArrayLength;
			}
			global.language = languageVal[subSelection];
			obj_Polyglot.setLocale(global.languageArray[subSelection]);
			setStrings = true;
		}
		
		if (keyRightPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			subSelection += 1;
			if (subSelection < 0)
			{
				subSelection += languageArrayLength;
			}
			if (subSelection > languageArrayLength - 1)
			{
				subSelection -= languageArrayLength;
			}
			global.language = languageVal[subSelection];
			obj_Polyglot.setLocale(global.languageArray[subSelection]);
			setStrings = true;
		}
		
		if ((keyUpPressed) or (keyDownPressed))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "confirm";
		}
		break;
		
		case "confirm":
		if ((keyUpPressed) or (keyDownPressed))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "languages";
		}
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			
			state = firstTimeSetupStates.audio;
			selection = "music";
			subSelection = 0;
			timer = 0;
		}
		break;
	}
	break;
	#endregion
	
	#region Audio
	case firstTimeSetupStates.audio:
	switch (selection)
	{
		case "music":
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "confirm";
		}
		
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "sfx";
		}
		
		if ((keyRightPressed) and (global.musicVolume < 1)) global.musicVolume += .05;
		if ((keyLeftPressed) and (global.musicVolume > 0)) global.musicVolume -= .05;
		global.musicVolume = clamp(global.musicVolume,0,1);
		break;
		
		case "sfx":
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "music";
		}
		
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "confirm";
		}
		
		if ((keyRightPressed) and (global.soundVolume < 1))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			global.soundVolume += .05;
		}
		if ((keyLeftPressed) and (global.soundVolume > 0))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			global.soundVolume -= .05;
		}
		global.soundVolume = clamp(global.soundVolume,0,1);
		break;
		
		case "confirm":
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "sfx";
		}
		
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "music";
		}
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			
			state = firstTimeSetupStates.display;
			selection = "fullscreen";
			timer = 0;
		}
		break;
	}
	break;
	#endregion
	
	#region Display
	case firstTimeSetupStates.display:
	switch (selection)
	{
		case "fullscreen":
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "confirm";
		}
		
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "screenSize";
		}
		
		if ((keyJumpPressed) or (keyLeftPressed) or (keyRightPressed))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			window_set_fullscreen(!global.fullscreen);
			global.fullscreen = window_get_fullscreen();
			if ((!global.fullscreen) and (instance_exists(obj_Camera))) obj_Camera.windowSet = false;
		}
		break;
		
		case "screenSize":
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "fullscreen";
		}
		
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "confirm";
		}
		
		if ((!global.fullscreen) and ((keyJumpPressed) or (keyLeftPressed)))
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
		break;
		
		case "confirm":
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "screenSize";
		}
		
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "fullscreen";
		}
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			
			state = firstTimeSetupStates.configComplete;
			selection = "confirm";
			timer = 0;
		}
		break;
	}
	break;
	#endregion
	
	#region Config Complete
	case firstTimeSetupStates.configComplete:
	timer += 1;
	
	if (timer >= 210)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		state = firstTimeSetupStates.done;
		timer = 0;
	}
	break;
	#endregion
	
	#region Done
	case firstTimeSetupStates.done:
	timer += 1;
	
	if (timer >= 120)
	{
		state = firstTimeSetupStates.transition;
		timer = 0;
	}
	break;
	#endregion
	
	#region Transition
	case firstTimeSetupStates.transition:
	if (!instance_exists(obj_Fade))
	{
		audio_stop_all();
		audio_play_sound(snd_Enter,0,false);
		
		global.firstTimeSetup = false;
		scr_SaveConfig("config.ini");
		
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_Startup;
	}
	break;
	#endregion
}