///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
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
	
	if (selection < 0) selection += array_length(languageIndex);
	if (selection > array_length(languageIndex) - 1) selection -= array_length(languageIndex);
	
	if (!instance_exists(obj_Fade))
	{
		if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			global.language = languageVal[selection];
			var rm = rm_Options;
			if (global.firstTimeBooting) rm = rm_Startup;
			rm = rm_Startup;
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm;
		}
	}
}