///@description Main

if (!global.pause)
{
	hudOffset = lerp(hudOffset,0,.1);
	
	scr_Player_Inputs(0);
	
	if (!instance_exists(obj_Fade))
	{
		switch (selection)
		{
			case "categories":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "back";
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "tracks";
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				soundCategory -= 1;
				if (soundCategory < 0) soundCategory += 6;
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				soundCategory += 1;
				if (soundCategory >= 6) soundCategory -= 6;
			}
			
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,176,184,312,216)))))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
			
			if (select)
			{
				selection = "tracks";
				select = false;
			}
			break;
			
			case "tracks":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "categories";
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "back";
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				trackSelection -= 1;
				if (trackSelection < 0) trackSelection += soundsMax;
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				trackSelection += 1;
				if (trackSelection >= soundsMax) trackSelection -= soundsMax;
			}
			
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,176,231,312,263)))))
			{
				select = true;
			}
			
			if (select)
			{
				if (audio_is_playing(soundPlayed))
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
					audio_stop_sound(soundPlayed);
				}
				else
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					soundPlayed = audio_play_sound(soundTestArray[# trackSelection,1],0,false);
				}
				select = false;
			}
			break;
			
			case "back":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "tracks";
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "categories";
			}
			
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				select = true;
			}
			
			if (select)
			{
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_Collection;
				page = 1;
				select = false;
			}
			break;
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
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_Collection;
		goBack = false;
	}
}
