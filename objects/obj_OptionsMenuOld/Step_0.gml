///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(player);
	
	//Selection
	
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
	if (selection < 0) selection += (maxSelection + 1);
	if (selection > maxSelection) selection -= (maxSelection + 1);
	
	switch (selection)
	{
		case 0:
		if (keyRightPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			if (global.musicVolume < 1) global.musicVolume += .1;
		}
		
		if (keyLeftPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			if (global.musicVolume > 0) global.musicVolume -= .1;
		}
		break;
		
		case 1:
		if (keyRightPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			if (global.soundVolume < 1) global.soundVolume += .1;
		}
		
		if (keyLeftPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			if (global.soundVolume > 0) global.soundVolume -= .1;
		}
		break;
		
		case 2:
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			select = true;
		}
		
		if (select)
		{
			window_set_fullscreen(!global.fullscreen);
			global.fullscreen = window_get_fullscreen();
			if ((!global.fullscreen) and (instance_exists(obj_Camera))) obj_Camera.windowSet = false;
			select = false;
		}
		break;
		
		case 3:
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			select = true;
		}
		
		if (select)
		{
			if (global.extraTutorials)
			{
				global.extraTutorials = false;
			}
			else
			{
				global.extraTutorials = true;
			}
			select = false;
		}
		break;
		
		case 4:
		if (instance_exists(obj_Camera))
		{
			if ((keyRightPressed) or (keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				select = true;
			}
			if (keyLeftPressed)
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
			
			if (select)
			{
				with (obj_Camera)
				{
					global.windowSize += 1;
					if (global.windowSize > scaleMax) global.windowSize = 1;
					scale = global.windowSize;
					windowSet = false;
				}
				select = false;
			}
		}
		break;
	}
	
	if (!instance_exists(obj_Fade))
	{
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
	}
}