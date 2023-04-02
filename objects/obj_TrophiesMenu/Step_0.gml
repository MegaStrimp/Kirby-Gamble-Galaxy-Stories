///@description Main

if (!global.pause)
{
	var cancelAutoScroll = true;
	
	hudOffset = lerp(hudOffset,0,.1);
	
	scr_Player_Inputs(0);
	
	if (!instance_exists(obj_Fade))
	{
		if (!menuIndex)
		{
			switch (selection)
			{
				case "trophies":
				if (keyUpPressed)
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
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
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					if (trophySelection < (page * 12) + 6)
					{
						trophySelection += 6;
					}
					else
					{
						selection = "back";
					}
				}
				if ((keyLeftPressed) or ((autoScrollTick) and (keyLeftHold)))
				{
					if ((trophySelection == (page * 12)) and (page != 0))
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						page -= 1;
					}
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					trophySelection -= 1;
					canAutoScrollTimer = canAutoScrollTimerMax;
				}
				if ((keyRightPressed) or ((autoScrollTick) and (keyRightHold)))
				{
					if ((trophySelection == ((page + 1) * 12) - 1) and (page < pageMax))
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						page += 1;
					}
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					trophySelection += 1;
					canAutoScrollTimer = canAutoScrollTimerMax;
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
				
				cancelAutoScroll = !(((keyLeftHold) or (keyRightHold)) and !((keyLeftHold) and (keyRightHold)));
				break;
			
				case "back":
				if (keyUpPressed) selection = "trophies";
				if (keyDownPressed) selection = "trophies";
				if (keyLeftPressed) selection = "back";
				if (keyRightPressed) selection = "back";
			
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
		
			#region Cancel Auto Scroll
			if (cancelAutoScroll)
			{
				autoScroll = false;
				canAutoScrollTimer = -1;
				autoScrollTimer = -1;
			}
		
			autoScrollTick = false;
			#endregion
		
			#region Can Auto Scroll Timer
			if (canAutoScrollTimer > 0)
			{
				canAutoScrollTimer -= 1;
			}
			else if (canAutoScrollTimer == 0)
			{
				autoScroll = true;
				autoScrollTimer = 0;
				canAutoScrollTimer = -1;
			}
			#endregion
		
			if (autoScroll)
			{
				#region Auto Scroll Timer
				if (autoScrollTimer > 0)
				{
					autoScrollTimer -= 1;
				}
				else if (autoScrollTimer == 0)
				{
					autoScrollTick = true;
					autoScrollTimer = autoScrollTimerMax;
				}
				#endregion
			}
		}
	}
}

trophySelection = clamp(trophySelection,0,trophiesMax - 1);