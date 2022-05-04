///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Star Animation
	
	starIndex += .2;
	if (starIndex >= 4) starIndex -= 4;
	
	//Select
	
	if (arrayLength != 1)
	{
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
	}
	
	switch (page)
	{
		#region Player Select
		case "playerSelect":
		arrayLength = 2;
		player1Offset = 0;
		player2Offset = 0;
		
		if (selection < 0) selection += arrayLength;
		if (selection > arrayLength - 1) selection -= arrayLength;
		
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
		#endregion
		
		#region Main
		case "main":
		arrayLength = 5;
		player1Offset = 0;
		player2Offset = 0;
		skinsOffset = 0;
		sprayPaintsOffset = 0;
		hatSkinsOffset = 0;
		hatPaintsOffset = 0;
		familiarsOffset = 0;
		
		if (selection < 0) selection += arrayLength;
		if (selection > arrayLength - 1) selection -= arrayLength;
		
		switch (selection)
		{
			case 0:
			skinsOffset = 1;
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
				page = "skinOwner";
			}
			break;
			
			case 1:
			sprayPaintsOffset = 1;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (global.shaders)
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
				else
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
				}
			}
			break;
			
			case 2:
			hatSkinsOffset = 1;
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
				page = "abilityHat";
				subPage = "hatSkin";
			}
			break;
			
			case 3:
			hatPaintsOffset = 1;
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (global.shaders)
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
					page = "abilityHat";
					subPage = "hatPaint";
				}
				else
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
				}
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
		#endregion
		
		#region Skin Owner
		case "skinOwner":
		arrayLength = array_length(characterTitle);
		for (var i = 0; i < arrayLength; i++) characterOffset[i] = 0;
		
		if (selection < 0)
		{
			selection += arrayLength;
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > arrayLength - 1)
		{
			selection -= arrayLength;
			textY = 147 - ((selection + 2) * 36);
		}
		
		characterOffset[selection] = 1;
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (characterUnlocked[selection])
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				for (var i = 0; i < arrayLength; i++) characterOffsetLerp[i] = 0;
				selectedOwner = characterTitle[selection];
				
				playerSkin = global.skinKirbyP1;
				
				switch (selectedOwner)
				{
					case "Kirby":
					playerSkin = global.skinKirbyP1;
					if (selectedPlayer == 1) playerSkin = global.skinKirbyP2;
					break;
					
					case "Gamble":
					playerSkin = global.skinGambleP1;
					if (selectedPlayer == 1) playerSkin = global.skinGambleP2;
					break;
					
					case "Gooey":
					playerSkin = global.skinGooeyP1;
					if (selectedPlayer == 1) playerSkin = global.skinGooeyP2;
					break;
				}
				
				subSelection = selection;
				for (var i = 0; i < array_length(characterSkinValue[selection]); i++) if (characterSkinValue[selection][i] == playerSkin) selection = i;
				textY = 147 - (selection * 36);
				page = "skins";
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
			for (var i = 0; i < arrayLength; i++) characterOffsetLerp[i] = 0;
			selection = 0;
			page = "main";
			goBack = false;
		}
		break;
		#endregion
		
		#region Skins
		case "skins":
		arrayLength = array_length(characterSkinTitle[subSelection]);
		for (var i = 0; i < arrayLength; i++) characterSkinOffset[subSelection][i] = 0;
		
		if (selection < 0)
		{
			selection += arrayLength;
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > arrayLength - 1)
		{
			selection -= arrayLength;
			textY = 147 - ((selection + 2) * 36);
		}
		
		characterSkinOffset[subSelection][selection] = 1;
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (characterSkinUnlocked[subSelection][selection])
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				playerSkin = characterSkinValue[subSelection][selection];
				switch (characterTitle[subSelection])
				{
					case "Kirby":
					if (selectedPlayer == 0)
					{
						global.skinKirbyP1 = playerSkin;
					}
					else
					{
						global.skinKirbyP2 = playerSkin;
					}
					break;
					
					case "Gamble":
					if (selectedPlayer == 0)
					{
						global.skinGambleP1 = playerSkin;
					}
					else
					{
						global.skinGambleP2 = playerSkin;
					}
					break;
					
					case "Gooey":
					if (selectedPlayer == 0)
					{
						global.skinGooeyP1 = playerSkin;
					}
					else
					{
						global.skinGooeyP2 = playerSkin;
					}
					break;
					
					case "Meta Knight":
					if (selectedPlayer == 0)
					{
						global.skinMetaKnightP1 = playerSkin;
					}
					else
					{
						global.skinMetaKnightP2 = playerSkin;
					}
					break;
					
					case "Keeby":
					if (selectedPlayer == 0)
					{
						global.skinKeebyP1 = playerSkin;
					}
					else
					{
						global.skinKeebyP2 = playerSkin;
					}
					break;
					
					case "Prince Fluff":
					if (selectedPlayer == 0)
					{
						global.skinPrinceFluffP1 = playerSkin;
					}
					else
					{
						global.skinPrinceFluffP2 = playerSkin;
					}
					break;
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
			for (var i = 0; i < arrayLength; i++) characterSkinOffsetLerp[subSelection][i] = 0;
			selection = subSelection;
			textY = 147 - (selection * 36);
			page = "skinOwner";
			goBack = false;
		}
		break;
		#endregion
		
		#region Spray Paint Owner
		case "sprayPaintOwner":
		arrayLength = array_length(characterTitle);
		for (var i = 0; i < arrayLength; i++) characterOffset[i] = 0;
		
		if (selection < 0)
		{
			selection += arrayLength;
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > arrayLength - 1)
		{
			selection -= arrayLength;
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
				var characterPaintArray = sprayPaintKirbyNormal;
				
				switch (selectedOwner)
				{
					case "Kirby":
					playerPaint = global.sprayPaintKirbyP1;
					if (selectedPlayer == 1) playerPaint = global.sprayPaintKirbyP2;
					var characterPaintArray = sprayPaintKirbyNormal;
					break;
					
					case "Gamble":
					playerPaint = global.sprayPaintGambleP1;
					if (selectedPlayer == 1) playerPaint = global.sprayPaintGambleP2;
					var characterPaintArray = sprayPaintGambleNormal;
					break;
					
					case "Gooey":
					playerPaint = global.sprayPaintGooeyP1;
					if (selectedPlayer == 1) playerPaint = global.sprayPaintGooeyP2;
					var characterPaintArray = sprayPaintGooeyNormal;
					break;
				}
				
				for (var i = 0; i < array_length(characterPaintArray); i++) if (characterPaintArray[i] == playerPaint) selection = i;
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
		#endregion
		
		#region Spray Paint
		case "sprayPaint":
		arrayLength = array_length(sprayPaintTitle);
		for (var i = 0; i < arrayLength; i++) sprayPaintOffset[i] = 0;
		
		if (selection < 0)
		{
			selection += arrayLength;
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > arrayLength - 1)
		{
			selection -= arrayLength;
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
			for (var i = 0; i < arrayLength; i++) sprayPaintOffsetLerp[i] = 0;
			for (var i = 0; i < array_length(characterTitle); i++) if (characterTitle[i] == selectedOwner) selection = i;
			textY = 147 - (selection * 36);
			page = "sprayPaintOwner";
			goBack = false;
		}
		break;
		#endregion
		
		#region Ability Hat
		case "abilityHat":
		arrayLength = array_length(abilityHatTitle);
		for (var i = 0; i < arrayLength; i++) abilityHatOffset[i] = 0;
		
		if (selection < 0)
		{
			selection += arrayLength;
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > arrayLength - 1)
		{
			selection -= arrayLength;
			textY = 147 - ((selection + 2) * 36);
		}
		
		abilityHatOffset[selection] = 1;
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			for (var i = 0; i < arrayLength; i++) abilityHatOffsetLerp[i] = 0;
			#region Selected Hat Values
			var selectedHat = abilityHatTitle[selection];
			var selectedHatSkin = 0;
			switch (selectedHat)
			{
				case "Cutter":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeCutterP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeCutterP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteCutterKSSUP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteCutterKSSUP2;
					}
					break;
				}
				break;
				
				case "Beam":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeBeamP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeBeamP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteBeamKSSUP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteBeamKSSUP2;
					}
					break;
					
					case "marxSoul":
					selectedHatSkin = 1;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteBeamMarxSoulP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteBeamMarxSoulP2;
					}
					break;
				}
				break;
				
				case "Mystic Beam":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeMysticBeamP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeMysticBeamP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteMysticBeamGGSP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteMysticBeamGGSP2;
					}
					break;
					
					case "marxSoul":
					selectedHatSkin = 1;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteBeamMarxSoulP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteBeamMarxSoulP2;
					}
					break;
				}
				break;
				
				case "Stone":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeStoneP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeStoneP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteStoneKSSUP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteStoneKSSUP2;
					}
					break;
					
					case "modern":
					selectedHatSkin = 1;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteStoneModernP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteStoneModernP2;
					}
					break;
				}
				break;
				
				case "Mirror":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeMirrorP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeMirrorP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteMirrorKSSUP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteMirrorKSSUP2;
					}
					break;
					
					case "modern":
					selectedHatSkin = 1;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteMirrorModernP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteMirrorModernP2;
					}
					break;
				}
				break;
				
				case "Ninja":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeNinjaP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeNinjaP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteNinjaKSSUP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteNinjaKSSUP2;
					}
					break;
					
					case "modern":
					selectedHatSkin = 1;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteNinjaModernP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteNinjaModernP2;
					}
					break;
				}
				break;
				
				case "Bomb":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeBombP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeBombP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteBombKSSUP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteBombKSSUP2;
					}
					break;
					
					case "modern":
					selectedHatSkin = 1;
					if (selectedPlayer == 0)
					{
						playerHatPaint = global.hatPaletteBombModernP1;
					}
					else if (selectedPlayer == 1)
					{
						playerHatPaint = global.hatPaletteBombModernP2;
					}
					break;
				}
				break;
				
				case "Fire":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeFireP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeFireP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteFireKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteFireKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Ice":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeIceP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeIceP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteIceKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteIceKSSUP2 = playerHatPaint;
					}
					break;
						
					case "snowman":
					selectedHatSkin = 1;
					if (selectedPlayer == 0)
					{
						global.hatPaletteIceSnowmanP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteIceSnowmanP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Spark":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeSparkP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeSparkP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteSparkKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteSparkKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Yoyo":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeYoyoP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeYoyoP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteYoyoKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteYoyoKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Wheel":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeWheelP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeWheelP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteWheelKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteWheelKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Artist":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeArtistP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeArtistP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteArtistKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteArtistKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Fighter":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeFighterP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeFighterP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteFighterKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteFighterKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Suplex":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeSuplexP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeSuplexP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteSuplexKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteSuplexKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Wing":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeWingP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeWingP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteWingKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteWingKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Jet":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeJetP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeJetP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteJetKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteJetKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Sword":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeSwordP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeSwordP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteSwordKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteSwordKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Parasol":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeParasolP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeParasolP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteParasolKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteParasolKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Hammer":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeHammerP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeHammerP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteHammerKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteHammerKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Bell":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeBellP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeBellP2;
				}
				
				switch (playerHatSkin)
				{
					case "modern":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteBellModernP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteBellModernP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Sleep":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeSleepP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeSleepP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteSleepKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteSleepKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
				
				case "Scan":
				if (selectedPlayer == 0)
				{
					playerHatSkin = global.hatTypeScanP1;
				}
				else if (selectedPlayer == 1)
				{
					playerHatSkin = global.hatTypeScanP2;
				}
				
				switch (playerHatSkin)
				{
					case "kssu":
					selectedHatSkin = 0;
					if (selectedPlayer == 0)
					{
						global.hatPaletteScanKSSUP1 = playerHatPaint;
					}
					else
					{
						global.hatPaletteScanKSSUP2 = playerHatPaint;
					}
					break;
				}
				break;
			}
			selectedSkin = selectedHatSkin;
			#endregion
			
			subSelection = selection;
			selection = 0;
			page = subPage;
			textY = 147 - (selection * 36);
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
			for (var i = 0; i < arrayLength; i++) abilityHatOffsetLerp[i] = 0;
			textY = 147 - (selection * 36);
			page = "main";
			if (subPage == "hatSkin")
			{
				selection = 2;
			}
			else
			{
				selection = 3;
			}
			goBack = false;
		}
		break;
		#endregion
		
		#region Hat Skin
		case "hatSkin":
		arrayLength = array_length(abilityHatSkinTitle[subSelection]);
		for (var i = 0; i < arrayLength; i++) abilityHatSkinOffset[subSelection][i] = 0;
		
		if (selection < 0)
		{
			selection += arrayLength;
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > arrayLength - 1)
		{
			selection -= arrayLength;
			textY = 147 - ((selection + 2) * 36);
		}
		
		abilityHatSkinOffset[subSelection][selection] = 1;
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (abilityHatSkinUnlocked[subSelection][selection])
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				playerHatSkin = abilityHatSkinValue[subSelection][selection];
				switch (abilityHatTitle[subSelection])
				{
					case "Cutter":
					if (selectedPlayer == 0)
					{
						global.hatTypeCutterP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeCutterP2 = playerHatSkin;
					}
					break;
					
					case "Beam":
					if (selectedPlayer == 0)
					{
						global.hatTypeBeamP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeBeamP2 = playerHatSkin;
					}
					break;
					
					case "Mystic Beam":
					if (selectedPlayer == 0)
					{
						global.hatTypeMysticBeamP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeMysticBeamP2 = playerHatSkin;
					}
					break;
					
					case "Stone":
					if (selectedPlayer == 0)
					{
						global.hatTypeStoneP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeStoneP2 = playerHatSkin;
					}
					break;
					
					case "Mirror":
					if (selectedPlayer == 0)
					{
						global.hatTypeMirrorP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeMirrorP2 = playerHatSkin;
					}
					break;
					
					case "Ninja":
					if (selectedPlayer == 0)
					{
						global.hatTypeNinjaP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeNinjaP2 = playerHatSkin;
					}
					break;
					
					case "Bomb":
					if (selectedPlayer == 0)
					{
						global.hatTypeBombP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeBombP2 = playerHatSkin;
					}
					break;
					
					case "Fire":
					if (selectedPlayer == 0)
					{
						global.hatTypeFireP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeFireP2 = playerHatSkin;
					}
					break;
					
					case "Ice":
					if (selectedPlayer == 0)
					{
						global.hatTypeIceP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeIceP2 = playerHatSkin;
					}
					break;
					
					case "Spark":
					if (selectedPlayer == 0)
					{
						global.hatTypeSparkP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeSparkP2 = playerHatSkin;
					}
					break;
					
					case "Yoyo":
					if (selectedPlayer == 0)
					{
						global.hatTypeYoyoP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeYoyoP2 = playerHatSkin;
					}
					break;
					
					case "Wheel":
					if (selectedPlayer == 0)
					{
						global.hatTypeWheelP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeWheelP2 = playerHatSkin;
					}
					break;
					
					case "Artist":
					if (selectedPlayer == 0)
					{
						global.hatTypeArtistP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeArtistP2 = playerHatSkin;
					}
					break;
					
					case "Fighter":
					if (selectedPlayer == 0)
					{
						global.hatTypeFighterP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeFighterP2 = playerHatSkin;
					}
					break;
					
					case "Suplex":
					if (selectedPlayer == 0)
					{
						global.hatTypeSuplexP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeSuplexP2 = playerHatSkin;
					}
					break;
					
					case "Wing":
					if (selectedPlayer == 0)
					{
						global.hatTypeWingP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeWingP2 = playerHatSkin;
					}
					break;
					
					case "Jet":
					if (selectedPlayer == 0)
					{
						global.hatTypeJetP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeJetP2 = playerHatSkin;
					}
					break;
					
					case "Sword":
					if (selectedPlayer == 0)
					{
						global.hatTypeSwordP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeSwordP2 = playerHatSkin;
					}
					break;
					
					case "Parasol":
					if (selectedPlayer == 0)
					{
						global.hatTypeParasolP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeParasolP2 = playerHatSkin;
					}
					break;
					
					case "Hammer":
					if (selectedPlayer == 0)
					{
						global.hatTypeHammerP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeHammerP2 = playerHatSkin;
					}
					break;
					
					case "Bell":
					if (selectedPlayer == 0)
					{
						global.hatTypeBellP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeBellP2 = playerHatSkin;
					}
					break;
					
					case "Sleep":
					if (selectedPlayer == 0)
					{
						global.hatTypeSleepP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeSleepP2 = playerHatSkin;
					}
					break;
					
					case "Scan":
					if (selectedPlayer == 0)
					{
						global.hatTypeScanP1 = playerHatSkin;
					}
					else
					{
						global.hatTypeScanP2 = playerHatSkin;
					}
					break;
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
			for (var i = 0; i < arrayLength; i++) if (abilityHatSkinTitle[subSelection][i] == selectedOwner) selection = i;
			selection = subSelection;
			textY = 147 - (selection * 36);
			page = "abilityHat";
			goBack = false;
		}
		break;
		#endregion
		
		#region Hat Paint
		case "hatPaint":
		arrayLength = array_length(abilityHatPaintTitle[subSelection][selectedSkin]);
		for (var i = 0; i < arrayLength; i++) abilityHatPaintOffset[subSelection][selectedSkin][i] = 0;
		
		if (selection < 0)
		{
			selection += arrayLength;
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > arrayLength - 1)
		{
			selection -= arrayLength;
			textY = 147 - ((selection + 2) * 36);
		}
		
		abilityHatPaintOffset[subSelection][selectedSkin][selection] = 1;
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (abilityHatPaintUnlocked[subSelection][selectedSkin][selection])
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				playerHatPaint = selection;
				switch (abilityHatTitle[subSelection])
				{
					case "Cutter":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteCutterKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteCutterKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Beam":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteBeamKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteBeamKSSUP2 = playerHatPaint;
						}
						break;
						
						case "marxSoul":
						if (selectedPlayer == 0)
						{
							global.hatPaletteBeamMarxSoulP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteBeamMarxSoulP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Stone":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteStoneKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteStoneKSSUP2 = playerHatPaint;
						}
						break;
						
						case "modern":
						if (selectedPlayer == 0)
						{
							global.hatPaletteStoneModernP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteStoneModernP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Mirror":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteMirrorKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteMirrorKSSUP2 = playerHatPaint;
						}
						break;
						
						case "modern":
						if (selectedPlayer == 0)
						{
							global.hatPaletteStoneModernP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteStoneModernP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Ninja":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteNinjaKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteNinjaKSSUP2 = playerHatPaint;
						}
						break;
						
						case "modern":
						if (selectedPlayer == 0)
						{
							global.hatPaletteNinjaModernP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteNinjaModernP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Bomb":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteBombKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteBombKSSUP2 = playerHatPaint;
						}
						break;
						
						case "modern":
						if (selectedPlayer == 0)
						{
							global.hatPaletteBombModernP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteBombModernP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Fire":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteFireKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteFireKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Ice":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteIceKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteIceKSSUP2 = playerHatPaint;
						}
						break;
						
						case "snowman":
						if (selectedPlayer == 0)
						{
							global.hatPaletteIceSnowmanP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteIceSnowmanP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Spark":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteSparkKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteSparkKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Yoyo":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteYoyoKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteYoyoKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Wheel":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteWheelKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteWheelKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Artist":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteArtistKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteArtistKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Fighter":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteFighterKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteFighterKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Suplex":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteSuplexKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteSuplexKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Wing":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteWingKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteWingKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Jet":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteJetKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteJetKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Sword":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteSwordKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteSwordKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Parasol":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteParasolKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteParasolKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Hammer":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteHammerKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteHammerKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Bell":
					switch (playerHatSkin)
					{
						case "modern":
						if (selectedPlayer == 0)
						{
							global.hatPaletteBellModernP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteBellModernP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Sleep":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteSleepKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteSleepKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
					
					case "Scan":
					switch (playerHatSkin)
					{
						case "kssu":
						if (selectedPlayer == 0)
						{
							global.hatPaletteScanKSSUP1 = playerHatPaint;
						}
						else
						{
							global.hatPaletteScanKSSUP2 = playerHatPaint;
						}
						break;
					}
					break;
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
			for (var i = 0; i < arrayLength; i++) if (abilityHatPaintTitle[subSelection][selectedSkin][i] == selectedOwner) selection = i;
			selection = subSelection;
			textY = 147 - (selection * 36);
			page = "abilityHat";
			goBack = false;
		}
		break;
		#endregion
		
		#region Familiars
		case "familiars":
		arrayLength = array_length(familiarTitle);
		for (var i = 0; i < arrayLength; i++) familiarOffset[i] = 0;
		
		if (selection < 0)
		{
			selection += arrayLength;
			textY = 147 - ((selection - 2) * 36);
		}
		if (selection > arrayLength - 1)
		{
			selection -= arrayLength;
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
					if (global.familiarP1 == familiarValue[selection])
					{
						global.familiarP1 = familiars.none;
					}
					else
					{
						global.familiarP1 = familiarValue[selection];
					}
				}
				else
				{
					if (global.familiarP2 == familiarValue[selection])
					{
						global.familiarP2 = familiars.none;
					}
					else
					{
						global.familiarP2 = familiarValue[selection];
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
			for (var i = 0; i < arrayLength; i++) familiarOffsetLerp[i] = 0;
			selection = 4;
			textY = 147 - (selection * 36);
			page = "main";
			goBack = false;
		}
		break;
		#endregion
	}
}