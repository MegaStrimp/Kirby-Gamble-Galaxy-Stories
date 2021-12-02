///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Item Movement
	
	itemYOffset += (itemYOffsetSpd * itemYOffsetDir);
	if ((abs(itemYOffset) >= itemYOffsetMax)) itemYOffsetDir *= -1;
	
	if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection += 1;
	}
	
	if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection -= 1;
	}
	if (selection < 0) selection += (maxDiscs + 1);
	if (selection > maxDiscs) selection -= (maxDiscs + 1);
	
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
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_Collection;
		goBack = false;
	}
}