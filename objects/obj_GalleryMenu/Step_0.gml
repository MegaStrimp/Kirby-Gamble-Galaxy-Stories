///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Variables
	
	player1Offset = 0;
	player2Offset = 0;
	skinsOffset = 0;
	sprayPaintsOffset = 0;
	hatSkinsOffset = 0;
	hatPaintsOffset = 0;
	familiarsOffset = 0;
	for (var i = 0; i < array_length(sprayPaintTitle); i++) sprayPaintOffset[i] = 0;
	
	//Star Animation
	
	starIndex += .2;
	if (starIndex >= 4) starIndex -= 4;
	
	//Select
	
	if (keyDownPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection += 1;
	}
	
	if (keyUpPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection -= 1;
	}
	
	switch (page)
	{
		case "playerSelect":
		if (selection < 0) selection += 2;
		if (selection > 1) selection -= 2;
		
		switch (selection)
		{
			case 0:
			player1Offset = 1;
			selectedPlayer = 0;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				player1OffsetLerp = 0;
				player2OffsetLerp = 0;
				selection = 0;
				page = "main";
			}
			break;
			
			case 1:
			player2Offset = 1;
			selectedPlayer = 1;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				player1OffsetLerp = 0;
				player2OffsetLerp = 0;
				selection = 0;
				page = "main";
			}
			break;
		}
		
		if (!instance_exists(obj_Fade))
		{
			if (keyAttackPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
		}
		
		if (goBack)
		{
			scr_SaveGame(global.selectedSave);
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Collection;
			goBack = false;
		}
		break;
		
		case "main":
		if (selection < 0) selection += 5;
		if (selection > 4) selection -= 5;
		
		switch (selection)
		{
			case 0:
			skinsOffset = 1;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
			}
			break;
			
			case 1:
			sprayPaintsOffset = 1;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				skinsOffsetLerp = 0;
				sprayPaintsOffsetLerp = 0;
				hatSkinsOffsetLerp = 0;
				hatPaintsOffsetLerp = 0;
				familiarsOffsetLerp = 0;
				selection = 0;
				textY = 147 - (selection * 36);
				page = "sprayPaintOwner";
			}
			break;
			
			case 2:
			hatSkinsOffset = 1;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
			}
			break;
			
			case 3:
			hatPaintsOffset = 1;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
			}
			break;
			
			case 4:
			familiarsOffset = 1;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				skinsOffsetLerp = 0;
				sprayPaintsOffsetLerp = 0;
				hatSkinsOffsetLerp = 0;
				hatPaintsOffsetLerp = 0;
				familiarsOffsetLerp = 0;
				selection = 0;
				textY = 147 - (selection * 36);
				page = "familiars";
			}
			break;
		}
		
		if (!instance_exists(obj_Fade))
		{
			if (keyAttackPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
		}
		
		if (goBack)
		{
			skinsOffsetLerp = 0;
			sprayPaintsOffsetLerp = 0;
			hatSkinsOffsetLerp = 0;
			hatPaintsOffsetLerp = 0;
			familiarsOffsetLerp = 0;
			if (selectedPlayer = 0)
			{
				selection = 0;
			}
			else
			{
				selection = 1;
			}
			textY = 147 - (selection * 36);
			page = "playerSelect";
			goBack = false;
		}
		break;
		
		case "sprayPaintOwner":
		if (selection < 0)
		{
			selection += array_length(characterTitle);
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > array_length(characterTitle) - 1)
		{
			selection -= array_length(characterTitle);
			textY = 147 - ((selection + 2) * 36);
		}
		
		characterOffset[selection] = 1;
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (characterUnlocked[selection])
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				selectedOwner = characterTitle[selection];
				
				var playerPaint = global.sprayPaintKirbyP1;
				if (selectedPlayer == 1) playerPaint = global.sprayPaintKirbyP2;
				
				switch (selectedOwner)
				{
					case "Kirby":
					playerPaint = global.sprayPaintKirbyP1;
					if (selectedPlayer == 1) playerPaint = global.sprayPaintKirbyP2;
					break;
				}
				
				for (var i = 0; i < array_length(sprayPaintKirbyNormal); i++) if (sprayPaintKirbyNormal[i] == playerPaint) selection = i;
				textY = 147 - (selection * 36);
				page = "sprayPaint";
			}
			else
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
			}
		}
		
		if (!instance_exists(obj_Fade))
		{
			if (keyAttackPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
		}
		
		if (goBack)
		{
			kirbyPaintOffsetLerp = 0;
			selection = 1;
			page = "main";
			goBack = false;
		}
		break;
		
		case "sprayPaint":
		if (selection < 0)
		{
			selection += array_length(sprayPaintTitle);
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > array_length(sprayPaintTitle) - 1)
		{
			selection -= array_length(sprayPaintTitle);
			textY = 147 - ((selection + 2) * 36);
		}
		
		sprayPaintOffset[selection] = 1;
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (sprayPaintUnlocked[selection])
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				if (selectedPlayer == 0)
				{
					global.sprayPaintKirbyP1 = sprayPaintKirbyNormal[selection];
				}
				else
				{
					global.sprayPaintKirbyP2 = sprayPaintKirbyNormal[selection];
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
			if (keyAttackPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
		}
		
		if (goBack)
		{
			for (var i = 0; i < array_length(sprayPaintTitle); i++) sprayPaintOffsetLerp[i] = 0;
			for (var i = 0; i < array_length(characterTitle); i++) if (characterTitle[i] == selectedOwner) selection = i;
			textY = 147 - (selection * 36);
			page = "sprayPaintOwner";
			goBack = false;
		}
		break;
		
		case "familiars":
		if (selection < 0)
		{
			selection += array_length(familiarTitle);
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > array_length(familiarTitle) - 1)
		{
			selection -= array_length(familiarTitle);
			textY = 147 - ((selection + 2) * 36);
		}
		
		familiarOffset[selection] = 1;
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (familiarUnlocked[selection])
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				if (selectedPlayer == 0)
				{
					if (global.familiarP1 == familiarTitle[selection])
					{
						global.familiarP1 = "none";
					}
					else
					{
						global.familiarP1 = familiarTitle[selection];
					}
				}
				else
				{
					if (global.familiarP2 == familiarTitle[selection])
					{
						global.familiarP2 = "none";
					}
					else
					{
						global.familiarP2 = familiarTitle[selection];
					}
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
			if (keyAttackPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
			}
		}
		
		if (goBack)
		{
			for (var i = 0; i < array_length(familiarTitle); i++) familiarOffsetLerp[i] = 0;
			selection = 4;
			textY = 147 - (selection * 36);
			page = "main";
			goBack = false;
		}
		break;
	}
}