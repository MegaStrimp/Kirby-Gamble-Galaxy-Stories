///@description Main

if (!global.pause)
{
	hudOffset = lerp(hudOffset,0,.1);
	
	scr_Player_Inputs(0);
	
	if (!menuIndex)
	{
		if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed)) audio_play_sound(snd_BossHealth,0,false);
	
			switch (selection)
			{
				case "trophies":
				if (keyUpPressed)
				{
					if (trophySelection < (page * 12) + 6)
					{
						selection = "back";
					}
					else
					{
						trophySelection -= 6;
					}
				}
				if (keyDownPressed)
				{
					if (trophySelection < (page * 12) + 6)
					{
						trophySelection += 6;
					}
					else
					{
						selection = "back";
					}
				}
				if (keyLeftPressed)
				{
					if ((trophySelection == (page * 12)) and (page != 0))
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						page -= 1;
					}
					trophySelection -= 1;
				}
				if (keyRightPressed)
				{
					if ((trophySelection == ((page + 1) * 12) - 1) and (page < pageMax))
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						page += 1;
					}
					trophySelection += 1;
				}
			
				if (!instance_exists(obj_Fade))
				{
					if ((keyJumpPressed) or (keyStartPressed))
					{
						/*
						if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
						audio_play_sound(snd_ButtonYes,0,false);
						select = true;
						*/
					}
				}
			
				if (select)
				{
					select = false;
				}
				break;
			
				case "back":
				if (keyUpPressed) selection = "trophies";
				if (keyDownPressed) selection = "trophies";
				if (keyLeftPressed) selection = "back";
				if (keyRightPressed) selection = "back";
			
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
		
			if (goBack)
			{
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_Collection;
				goBack = false;
			}
	
		trophySelection = clamp(trophySelection,0,trophiesMax - 1);
	}
}