///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Variables
	
	for (var i = 0; i < array_length(stageTitle); i++) stageOffset[i] = 0;
	
	//Select
	
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
	
	switch (page)
	{
		case "main":
		if (selection < 0)
		{
			selection += array_length(stageTitle);
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > array_length(stageTitle) - 1)
		{
			selection -= array_length(stageTitle);
			textY = 147 - ((selection + 2) * 36);
		}
		
		sprayPaintOffset[selection] = 1;
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = asset_get_index(stageTitle[selection]);
			}
			
			if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
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
			fade.targetRoom = rm_Starcutter;
			goBack = false;
		}
		break;
	}
}