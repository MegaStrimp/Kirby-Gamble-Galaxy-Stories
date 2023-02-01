///@description Main

if (!global.pause)
{
	scr_Player_Inputs(0);
	
	if (!instance_exists(obj_Fade))
	{
		switch (selection)
		{
			case "bestiary":
			if ((keyUpPressed) and (bestiarySelection != 0))
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				if ((bestiarySelection == (page * 12)) and (page != 0))
				{
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					page -= 1;
				}
				skinSelected = 0;
				paintSelected = 0;
				animSelected = 0;
				animIndex = 0;
				bestiarySelection -= 1;
			}
			if ((keyDownPressed) and (bestiarySelection < bestiaryMax - 1))
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				if ((bestiarySelection == ((page + 1) * 12) - 1) and (page < pageMax))
				{
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					page += 1;
				}
				skinSelected = 0;
				paintSelected = 0;
				animSelected = 0;
				animIndex = 0;
				bestiarySelection += 1;
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "back";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "back";
			}
			
			if (!instance_exists(obj_Fade))
			{
				if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					select = true;
				}
			}
			
			if (select)
			{
				select = false;
			}
			break;
			
			case "back":
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
				selection = "back";
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "bestiary";
			}
			
			if (!instance_exists(obj_Fade))
			{
				if ((keyJumpPressed) or (keyStartPressed))
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
					select = true;
				}
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
	
	#region Animate The Sprites
	var sprite = bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected][animSelected];
	
	animIndex += sprite_get_speed(sprite) / 60;
	if (animIndex >= sprite_get_number(sprite)) animIndex -= sprite_get_number(sprite);
	#endregion
}
