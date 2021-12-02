///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Variables
	
	menuOffset = 0;
	stageOffset = 0;
	battleOffset = 0;
	cutsceneOffset = 0;
	subgameOffset = 0;
	miscOffset = 0;
	
	//Star Animation
	
	starIndex += .2;
	if (starIndex >= 4) starIndex -= 4;
	
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
		case "categorySelect":
		if (selection < 0) selection += 6;
		if (selection > 5) selection -= 6;
		
		switch (selection)
		{
			case 0:
			menuOffset = 1;
			break;
			
			case 1:
			stageOffset = 1;
			break;
			
			case 2:
			battleOffset = 1;
			break;
			
			case 3:
			cutsceneOffset = 1;
			break;
			
			case 4:
			subgameOffset = 1;
			break;
			
			case 5:
			miscOffset = 1;
			break;
		}
		
		if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			page = "music";
			soundCategory = selection;
			textY = 147 - (selection * 36);
			selection = 0;
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
			if (audio_is_playing(global.musicPlaying)) audio_stop_sound(global.musicPlaying);
			global.musicPlaying = -1;
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Collection;
			goBack = false;
		}
		break;
		
		case "music":
		if (selection < 0)
		{
			selection += array_length(soundTitle[soundCategory]);
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > array_length(soundTitle[soundCategory]) - 1)
		{
			selection -= array_length(soundTitle[soundCategory]);
			textY = 147 - ((selection + 2) * 36);
		}
		
		soundOffset[soundCategory][selection] = 1;
		
		if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
		{
			if (soundUnlocked[soundCategory][selection])
			{
				if ((audio_is_playing(soundIndex[soundCategory][selection])) and (!audio_is_paused(global.musicPlaying)))
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
					audio_pause_sound(global.musicPlaying);
				}
				else if (audio_is_paused(global.musicPlaying))
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					audio_resume_sound(global.musicPlaying);
				}
				else
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					if (audio_is_playing(global.musicPlaying)) audio_stop_sound(global.musicPlaying);
					global.musicPlaying = audio_play_sound(soundIndex[soundCategory][selection],0,true);
				}
			}
			else
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
			}
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
			menuOffset = 0;
			stageOffset = 0;
			battleOffset = 0;
			cutsceneOffset = 0;
			subgameOffset = 0;
			miscOffset = 0;
			textY = 147 - (selection * 36);
			page = "categorySelect";
			goBack = false;
		}
		break;
	}
}