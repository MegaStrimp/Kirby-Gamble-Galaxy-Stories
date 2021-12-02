///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Selection
	
	if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd)))
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection += 1;
	}
	
	if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			if (global.musicVolume < 1) global.musicVolume += .1;
		}
		
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			if (global.musicVolume > 0) global.musicVolume -= .1;
		}
		break;
		
		case 1:
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			if (global.soundVolume < 1) global.soundVolume += .1;
		}
		
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			if (global.soundVolume > 0) global.soundVolume -= .1;
		}
		break;
		
		case 2:
		if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
			if ((keyboard_check_pressed(keyRight)) or (keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_padr)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				select = true;
			}
			if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
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
		if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
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