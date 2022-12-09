///@description Main

if (!global.pause)
{
	scr_Player_Inputs(0);
	
	if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed)) audio_play_sound(snd_BossHealth,0,false);
	
	switch (page)
	{
		case 0:
		switch (selection)
		{
			case "upload":
			if (keyUpPressed) selection = "back";
			if (keyDownPressed) selection = "back";
			if ((keyLeftPressed) and (page != 0)) page -= 1;
			if ((keyRightPressed) and (page < pageMax)) page += 1;
			
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
				var fileName = get_open_filename(working_directory + "keycard file|*.gamblekey",-1);
				if (fileName != -1)
				{
				    var file = file_text_open_read(fileName);
					file_text_readln(file);
					var keycode = file_text_read_string(file);
					show_debug_message(keycode);
					switch (keycode)
					{
						case "06585":
						global.kirbyBattleBlitzCrossoverKeycard = true;
						break;
						
						case "70624":
						global.kirbysDreamLandPlusCrossoverKeycard = true;
						break;
						
						case "33485":
						global.dreamCrafterCrossoverKeycard = true;
						break;
						
						case "36445":
						global.eternalParadiseCrossoverKeycard = true;
						break;
						
						case "68929":
						global.abilitySpraysKeycard = true;
						break;
						
						case "55408":
						global.permaHalloweenKeycard = true;
						break;
					}
					scr_SaveGame(global.selectedSave);
					file_text_close(file);
				}
				select = false;
			}
			break;
			
			case "back":
			if (keyUpPressed) selection = "upload";
			if (keyDownPressed) selection = "upload";
			if ((keyLeftPressed) and (page != 0)) page -= 1;
			if ((keyRightPressed) and (page < pageMax)) page += 1;
			
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
		break;
		
		default:
		if ((keyLeftPressed) and (page != 0)) page -= 1;
		if ((keyRightPressed) and (page < pageMax)) page += 1;
		break;
	}
	
	//Camera
	
	xx = lerp(xx,page * 480,.5);
}
