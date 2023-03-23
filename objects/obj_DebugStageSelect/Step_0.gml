///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Variables
	
	hudOffset = lerp(hudOffset,0,.1);
	for (var i = 0; i < array_length(stageTitle); i++) stageOffset[i] = 0;
	
	if (!instance_exists(obj_Fade))
	{
		//Select
		
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection += 1;
			canAutoScrollTimer = canAutoScrollTimerMax;
		}
		
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection -= 1;
			canAutoScrollTimer = canAutoScrollTimerMax;
		}
		
		if (keyLeftPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection -= 5;
			textY = 147 - (selection * 36);
			canAutoScrollTimer = canAutoScrollTimerMax;
		}
		
		if (keyRightPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection += 5;
			textY = 147 - (selection * 36);
			canAutoScrollTimer = canAutoScrollTimerMax;
		}
		
		if ((keyUpReleased) or (keyDownReleased) or (keyLeftReleased) or (keyRightReleased))
		{
			autoScroll = false;
			canAutoScrollTimer = -1;
			autoScrollTimer = -1;
		}
		
		if (autoScroll)
		{
			//Auto Scroll Timer
			
			if (autoScrollTimer > 0)
			{
				autoScrollTimer -= 1;
			}
			else if (autoScrollTimer == 0)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection += (keyDownHold - keyUpHold) + ((keyRightHold - keyLeftHold) * 5);
				textY = 147 - (selection * 36);
				autoScrollTimer = autoScrollTimerMax;
			}
		}
		
		//Can Auto Scroll Timer
		
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
	}
	
	switch (page)
	{
		case "main":
		if (!instance_exists(obj_Fade))
		{
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
			
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = asset_get_index(stageTitle[selection]);
			}
			
			if (keyAttackPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
		}
		stageOffset[selection] = 1;
		
		if (goBack)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Starcutter;
			goBack = false;
		}
		break;
	}
}