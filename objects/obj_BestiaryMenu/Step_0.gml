///@description Main

if (!global.pause)
{
	var cancelAutoScroll = true;
	
	hudOffset = lerp(hudOffset,0,.1);
	
	scr_Player_Inputs(0);
	
	if (!instance_exists(obj_Fade))
	{
		switch (selection)
		{
			case "bestiary":
			if (((keyUpPressed) or ((autoScrollTick) and (keyUpHold))) and (bestiarySelection != 0))
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				if ((bestiarySelection == (page * 12)) and (page != 0))
				{
					page -= 1;
				}
				skinSelected = 0;
				colorSelected = 0;
				animSelected = 0;
				animIndex = 0;
				bestiarySelection -= 1;
				if (!autoScroll) canAutoScrollTimer = canAutoScrollTimerMax;
			}
			if (((keyDownPressed) or ((autoScrollTick) and (keyDownHold))) and (bestiarySelection < bestiaryMax - 1))
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				if ((bestiarySelection == ((page + 1) * 12) - 1) and (page < pageMax))
				{
					page += 1;
				}
				skinSelected = 0;
				colorSelected = 0;
				animSelected = 0;
				animIndex = 0;
				bestiarySelection += 1;
				if (!autoScroll) canAutoScrollTimer = canAutoScrollTimerMax;
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
			
			cancelAutoScroll = !(((keyLeftHold) or (keyRightHold)) and !((keyLeftHold) and (keyRightHold)));
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
	
	#region Animate The Sprites
	var sprite = bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected][animSelected];
	
	animIndex += sprite_get_speed(sprite) / 60;
	if (animIndex >= sprite_get_number(sprite)) animIndex -= sprite_get_number(sprite);
	#endregion
}
