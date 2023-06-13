///@description Main

if (!global.pause)
{
	#region Variables
	var cancelAutoScroll = true;
	hudOffset = lerp(hudOffset,0,.1);
	#endregion
	
	scr_Player_Inputs(0);
	
	/*
	if ((keyLeftPressed) and (page != 0))
	{
		if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
		audio_play_sound(snd_ButtonChange,0,false);
		page -= 1;
	}
	if ((keyRightPressed) and (page < pageMax))
	{
		if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
		audio_play_sound(snd_ButtonChange,0,false);
		page += 1;
	}
	*/
	
	switch (selection)
	{
		case "upload":
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
			selection = "keycards";
			canAutoScrollTimer = canAutoScrollTimerMax;
		}
		if (keyRightPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "keycards";
			canAutoScrollTimer = canAutoScrollTimerMax;
		}
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fileName = get_open_filename(working_directory + "keycard file|*.gamblekey","");
			if (fileName != "")
			{
				var file = file_text_open_read(fileName);
				file_text_readln(file);
				var keycode = file_text_read_string(file);
				
				switch (keycode)
				{
					case "36445":
					global.eternalParadiseCrossoverKeycard = true;
					keycardArray[# 0,1] = true;
					break;
					
					case "70624":
					global.kirbysDreamLandPlusCrossoverKeycard = true;
					keycardArray[# 1,1] = true;
					break;
					
					case "69626":
					global.bollCrossoverKeycard = true;
					keycardArray[# 2,1] = true;
					break;
					
					case "33485":
					global.dreamCrafterCrossoverKeycard = true;
					keycardArray[# 3,1] = true;
					break;
					
					case "06585":
					global.kirbyBattleBlitzCrossoverKeycard = true;
					keycardArray[# 4,1] = true;
					break;
					
					case "68929":
					global.abilitySpraysKeycard = true;
					keycardArray[# 5,1] = true;
					break;
				}
				scr_SaveGame(global.selectedSave);
				file_text_close(file);
			}
			select = false;
		}
		
		cancelAutoScroll = !(((keyLeftHold) or (keyRightHold)) and !((keyLeftHold) and (keyRightHold)));
		break;
		
		case "keycards":
		//if (keyUpPressed) selection = "back";
		//if (keyDownPressed) selection = "back";
		if ((keyLeftPressed) or ((autoScrollTick) and (keyLeftHold)))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			
			if (keycardSelection == 0)
			{
				selection = "upload";
			}
			else
			{
				keycardSelection -= 1;
			}
			canAutoScrollTimer = canAutoScrollTimerMax;
		}
		if ((keyRightPressed) or ((autoScrollTick) and (keyRightHold)))
		{
			if (keycardSelection < keycardsMax - 1)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				keycardSelection += 1;
			}
			canAutoScrollTimer = canAutoScrollTimerMax;
		}
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				//if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				//audio_play_sound(snd_ButtonYes,0,false);
				//select = true;
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
			selection = "upload";
		}
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = "upload";
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
		fade.targetRoom = rm_MainMenu;
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
	
	//Camera
	
	xx = lerp(xx,page * 480,.5);
}
