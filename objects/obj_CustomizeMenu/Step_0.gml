///@description Main

if (!global.pause)
{
	//Variables
	
	hudOffset = lerp(hudOffset,0,.1);
	
	//Inputs
	
	scr_Player_Inputs(0);
	
	if (!menuIndex)
	{
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
				selection -= min(5,arrayLength);
				textY = 147 - (selection * 36);
				canAutoScrollTimer = canAutoScrollTimerMax;
			}
		
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection += min(5,arrayLength);
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
					selection += (keyDownHold - keyUpHold) + ((keyRightHold - keyLeftHold) * min(5,arrayLength));
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
			#region Player Select
			case "playerSelect":
			arrayLength = 4;
			player1Offset = 0;
			player2Offset = 0;
			player3Offset = 0;
			player4Offset = 0;
		
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
					player3OffsetLerp = 0;
					player4OffsetLerp = 0;
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
					player3OffsetLerp = 0;
					player4OffsetLerp = 0;
					selection = 0;
					page = "main";
				}
				break;
			
				case 2:
				player3Offset = 1;
				selectedPlayer = 2;
				if ((keyJumpPressed) or (keyStartPressed))
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					player1OffsetLerp = 0;
					player2OffsetLerp = 0;
					player3OffsetLerp = 0;
					player4OffsetLerp = 0;
					selection = 0;
					page = "main";
				}
				break;
			
				case 3:
				player4Offset = 1;
				selectedPlayer = 3;
				if ((keyJumpPressed) or (keyStartPressed))
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					player1OffsetLerp = 0;
					player2OffsetLerp = 0;
					player3OffsetLerp = 0;
					player4OffsetLerp = 0;
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
				if (global.canSave) scr_SaveGame(global.selectedSave);
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
			player3Offset = 0;
			player4Offset = 0;
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
					if (abilityCount != 0)
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
					else
					{
						if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
						audio_play_sound(snd_ButtonNo,0,false);
					}
				}
				break;
			
				case 3:
				hatPaintsOffset = 1;
				if ((keyJumpPressed) or (keyStartPressed))
				{
					if ((global.shaders) and (abilityCount != 0))
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
				selection = selectedPlayer;
				textY = 147 - (selection * 36);
				page = "playerSelect";
				goBack = false;
			}
			break;
			#endregion
		
			#region Skin Owner
			case "skinOwner":
			arrayLength = array_length(characterValue);
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
					selectedOwner = characterValue[selection];
				
					playerSkin = global.skinKirbyP1;
				
					switch (selectedOwner)
					{
						case playerCharacters.kirby:
						switch (selectedPlayer)
						{
							case 0:
							playerSkin = global.skinKirbyP1;
							break;
						
							case 1:
							playerSkin = global.skinKirbyP2;
							break;
						
							case 2:
							playerSkin = global.skinKirbyP3;
							break;
						
							case 3:
							playerSkin = global.skinKirbyP4;
							break;
						}
						break;
					
						case playerCharacters.gamble:
						switch (selectedPlayer)
						{
							case 0:
							playerSkin = global.skinGambleP1;
							break;
						
							case 1:
							playerSkin = global.skinGambleP2;
							break;
						
							case 2:
							playerSkin = global.skinGambleP3;
							break;
						
							case 3:
							playerSkin = global.skinGambleP4;
							break;
						}
						break;
					
						case playerCharacters.metaKnight:
						switch (selectedPlayer)
						{
							case 0:
							playerSkin = global.skinMetaKnightP1;
							break;
						
							case 1:
							playerSkin = global.skinMetaKnightP2;
							break;
						
							case 2:
							playerSkin = global.skinMetaKnightP3;
							break;
						
							case 3:
							playerSkin = global.skinMetaKnightP4;
							break;
						}
						break;
					
						case playerCharacters.gooey:
						switch (selectedPlayer)
						{
							case 0:
							playerSkin = global.skinGooeyP1;
							break;
						
							case 1:
							playerSkin = global.skinGooeyP2;
							break;
						
							case 2:
							playerSkin = global.skinGooeyP3;
							break;
						
							case 3:
							playerSkin = global.skinGooeyP4;
							break;
						}
						break;
					
						case playerCharacters.magolor:
						switch (selectedPlayer)
						{
							case 0:
							playerSkin = global.skinMagolorP1;
							break;
						
							case 1:
							playerSkin = global.skinMagolorP2;
							break;
						
							case 2:
							playerSkin = global.skinMagolorP3;
							break;
						
							case 3:
							playerSkin = global.skinMagolorP4;
							break;
						}
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
					switch (characterValue[subSelection])
					{
						case playerCharacters.kirby:
						switch (selectedPlayer)
						{
							case 0:
							global.skinKirbyP1 = playerSkin;
							break;
						
							case 1:
							global.skinKirbyP2 = playerSkin;
							break;
						
							case 2:
							global.skinKirbyP3 = playerSkin;
							break;
						
							case 3:
							global.skinKirbyP4 = playerSkin;
							break;
						}
						break;
					
						case playerCharacters.gamble:
						switch (selectedPlayer)
						{
							case 0:
							global.skinGambleP1 = playerSkin;
							break;
						
							case 1:
							global.skinGambleP2 = playerSkin;
							break;
						
							case 2:
							global.skinGambleP3 = playerSkin;
							break;
						
							case 3:
							global.skinGambleP4 = playerSkin;
							break;
						}
						break;
					
						case playerCharacters.metaKnight:
						switch (selectedPlayer)
						{
							case 0:
							global.skinMetaKnightP1 = playerSkin;
							break;
						
							case 1:
							global.skinMetaKnightP2 = playerSkin;
							break;
						
							case 2:
							global.skinMetaKnightP3 = playerSkin;
							break;
						
							case 3:
							global.skinMetaKnightP4 = playerSkin;
							break;
						}
						break;
					
						case playerCharacters.gooey:
						switch (selectedPlayer)
						{
							case 0:
							global.skinGooeyP1 = playerSkin;
							break;
						
							case 1:
							global.skinGooeyP2 = playerSkin;
							break;
						
							case 2:
							global.skinGooeyP3 = playerSkin;
							break;
						
							case 3:
							global.skinGooeyP4 = playerSkin;
							break;
						}
						break;
					
						case playerCharacters.magolor:
						switch (selectedPlayer)
						{
							case 0:
							global.skinMagolorP1 = playerSkin;
							break;
						
							case 1:
							global.skinMagolorP2 = playerSkin;
							break;
						
							case 2:
							global.skinMagolorP3 = playerSkin;
							break;
						
							case 3:
							global.skinMagolorP4 = playerSkin;
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
			arrayLength = array_length(characterValue);
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
					selectedOwner = characterValue[selection];
				
					switch (selectedPlayer)
					{
						case 0:
						var playerPaint = global.sprayPaintKirbyP1;
						break;
					
						case 1:
						var playerPaint = global.sprayPaintKirbyP2;
						break;
					
						case 2:
						var playerPaint = global.sprayPaintKirbyP3;
						break;
					
						case 3:
						var playerPaint = global.sprayPaintKirbyP4;
						break;
					}
				
					switch (selectedOwner)
					{
						case playerCharacters.kirby:
						switch (selectedPlayer)
						{
							case 0:
							playerPaint = global.sprayPaintKirbyP1;
							break;
						
							case 1:
							playerPaint = global.sprayPaintKirbyP2;
							break;
						
							case 2:
							playerPaint = global.sprayPaintKirbyP3;
							break;
						
							case 3:
							playerPaint = global.sprayPaintKirbyP4;
							break;
						}
						break;
					
						case playerCharacters.gamble:
						switch (selectedPlayer)
						{
							case 0:
							playerPaint = global.sprayPaintGambleP1;
							break;
						
							case 1:
							playerPaint = global.sprayPaintGambleP2;
							break;
						
							case 2:
							playerPaint = global.sprayPaintGambleP3;
							break;
						
							case 3:
							playerPaint = global.sprayPaintGambleP4;
							break;
						}
						break;
					
						case playerCharacters.metaKnight:
						switch (selectedPlayer)
						{
							case 0:
							playerPaint = global.sprayPaintMetaKnightP1;
							break;
						
							case 1:
							playerPaint = global.sprayPaintMetaKnightP2;
							break;
						
							case 2:
							playerPaint = global.sprayPaintMetaKnightP3;
							break;
						
							case 3:
							playerPaint = global.sprayPaintMetaKnightP4;
							break;
						}
						break;
					
						case playerCharacters.gooey:
						switch (selectedPlayer)
						{
							case 0:
							playerPaint = global.sprayPaintGooeyP1;
							break;
						
							case 1:
							playerPaint = global.sprayPaintGooeyP2;
							break;
						
							case 2:
							playerPaint = global.sprayPaintGooeyP3;
							break;
						
							case 3:
							playerPaint = global.sprayPaintGooeyP4;
							break;
						}
						break;
					
						case playerCharacters.magolor:
						switch (selectedPlayer)
						{
							case 0:
							playerPaint = global.sprayPaintMagolorP1;
							break;
						
							case 1:
							playerPaint = global.sprayPaintMagolorP2;
							break;
						
							case 2:
							playerPaint = global.sprayPaintMagolorP3;
							break;
						
							case 3:
							playerPaint = global.sprayPaintMagolorP4;
							break;
						}
						break;
					}
				
					for (var i = 0; i < array_length(sprayPaintValue); i++) if (sprayPaintValue[i] == playerPaint) selection = i;
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
					switch (selectedOwner)
					{
						case playerCharacters.kirby:
						switch (selectedPlayer)
						{
							case 0:
							global.sprayPaintKirbyP1 = sprayPaintValue[selection];
							break;
						
							case 1:
							global.sprayPaintKirbyP2 = sprayPaintValue[selection];
							break;
						
							case 2:
							global.sprayPaintKirbyP3 = sprayPaintValue[selection];
							break;
						
							case 3:
							global.sprayPaintKirbyP4 = sprayPaintValue[selection];
							break;
						}
						break;
					
						case playerCharacters.gamble:
						switch (selectedPlayer)
						{
							case 0:
							global.sprayPaintGambleP1 = sprayPaintValue[selection];
							break;
						
							case 1:
							global.sprayPaintGambleP2 = sprayPaintValue[selection];
							break;
						
							case 2:
							global.sprayPaintGambleP3 = sprayPaintValue[selection];
							break;
						
							case 3:
							global.sprayPaintGambleP4 = sprayPaintValue[selection];
							break;
						}
						break;
					
						case playerCharacters.metaKnight:
						switch (selectedPlayer)
						{
							case 0:
							global.sprayPaintMetaKnightP1 = sprayPaintValue[selection];
							break;
						
							case 1:
							global.sprayPaintMetaKnightP2 = sprayPaintValue[selection];
							break;
						
							case 2:
							global.sprayPaintMetaKnightP3 = sprayPaintValue[selection];
							break;
						
							case 3:
							global.sprayPaintMetaKnightP4 = sprayPaintValue[selection];
							break;
						}
						break;
					
						case playerCharacters.gooey:
						switch (selectedPlayer)
						{
							case 0:
							global.sprayPaintGooeyP1 = sprayPaintValue[selection];
							break;
						
							case 1:
							global.sprayPaintGooeyP2 = sprayPaintValue[selection];
							break;
						
							case 2:
							global.sprayPaintGooeyP3 = sprayPaintValue[selection];
							break;
						
							case 3:
							global.sprayPaintGooeyP4 = sprayPaintValue[selection];
							break;
						}
						break;
					
						case playerCharacters.magolor:
						switch (selectedPlayer)
						{
							case 0:
							global.sprayPaintMagolorP1 = sprayPaintValue[selection];
							break;
						
							case 1:
							global.sprayPaintMagolorP2 = sprayPaintValue[selection];
							break;
						
							case 2:
							global.sprayPaintMagolorP3 = sprayPaintValue[selection];
							break;
						
							case 3:
							global.sprayPaintMagolorP4 = sprayPaintValue[selection];
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
				for (var i = 0; i < arrayLength; i++) sprayPaintOffsetLerp[i] = 0;
				for (var i = 0; i < array_length(characterValue); i++) if (characterValue[i] == selectedOwner) selection = i;
				textY = 147 - (selection * 36);
				page = "sprayPaintOwner";
				goBack = false;
			}
			break;
			#endregion
		
			#region Ability Hat
			case "abilityHat":
			arrayLength = array_length(abilityHatValue);
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
				var selectedHat = abilityHatValue[selection];
				var selectedHatSkin = 0;
				switch (selectedHat)
				{
					case playerAbilities.cutter:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeCutterP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeCutterP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeCutterP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeCutterP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.cutter_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteCutterKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteCutterKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteCutterKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteCutterKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.beam:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeBeamP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeBeamP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeBeamP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeBeamP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.beam_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteBeamKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteBeamKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteBeamKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteBeamKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					
						case abilityHatSkins.beam_marxSoul:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteBeamMarxSoulP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteBeamMarxSoulP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteBeamMarxSoulP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteBeamMarxSoulP4;
							break;
						}
						selectedHatSkin = 1;
						break;
					}
					break;
				
					case playerAbilities.mysticBeam:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeMysticBeamP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeMysticBeamP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeMysticBeamP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeMysticBeamP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.mysticBeam_ggs:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteMysticBeamGGSP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteMysticBeamGGSP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteMysticBeamGGSP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteMysticBeamGGSP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.stone:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeStoneP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeStoneP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeStoneP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeStoneP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.stone_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteStoneKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteStoneKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteStoneKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteStoneKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					
						case abilityHatSkins.stone_modern:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteStoneModernP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteStoneModernP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteStoneModernP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteStoneModernP4;
							break;
						}
						selectedHatSkin = 1;
						break;
					}
					break;
				
					case playerAbilities.mirror:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeMirrorP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeMirrorP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeMirrorP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeMirrorP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.mirror_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteMirrorKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteMirrorKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteMirrorKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteMirrorKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					
						case abilityHatSkins.mirror_modern:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteMirrorModernP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteMirrorModernP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteMirrorModernP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteMirrorModernP4;
							break;
						}
						selectedHatSkin = 1;
						break;
					}
					break;
				
					case playerAbilities.ninja:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeNinjaP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeNinjaP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeNinjaP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeNinjaP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.ninja_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteNinjaKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteNinjaKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteNinjaKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteNinjaKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					
						case abilityHatSkins.ninja_modern:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteNinjaModernP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteNinjaModernP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteNinjaModernP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteNinjaModernP4;
							break;
						}
						selectedHatSkin = 1;
						break;
					
						case abilityHatSkins.ninja_samurai:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteNinjaSamuraiP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteNinjaSamuraiP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteNinjaSamuraiP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteNinjaSamuraiP4;
							break;
						}
						selectedHatSkin = 2;
						break;
					}
					break;
				
					case playerAbilities.bomb:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeBombP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeBombP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeBombP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeBombP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.bomb_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteBombKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteBombKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteBombKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteBombKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					
						case abilityHatSkins.bomb_modern:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteBombModernP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteBombModernP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteBombModernP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteBombModernP4;
							break;
						}
						selectedHatSkin = 1;
						break;
					}
					break;
				
					case playerAbilities.fire:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeFireP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeFireP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeFireP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeFireP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.fire_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteFireKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteFireKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteFireKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteFireKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.ice:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeIceP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeIceP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeIceP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeIceP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.ice_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteIceKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteIceKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteIceKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteIceKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
						
						case abilityHatSkins.ice_snowman:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteIceSnowmanP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteIceSnowmanP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteIceSnowmanP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteIceSnowmanP4;
							break;
						}
						selectedHatSkin = 1;
						break;
					}
					break;
				
					case playerAbilities.spark:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeSparkP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeSparkP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeSparkP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeSparkP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.spark_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteSparkKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteSparkKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteSparkKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteSparkKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.yoyo:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeYoyoP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeYoyoP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeYoyoP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeYoyoP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.yoyo_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteYoyoKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteYoyoKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteYoyoKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteYoyoKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.wheel:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeWheelP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeWheelP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeWheelP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeWheelP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.wheel_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteWheelKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteWheelKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteWheelKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteWheelKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.artist:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeArtistP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeArtistP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeArtistP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeArtistP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.artist_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteArtistKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteArtistKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteArtistKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteArtistKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.fighter:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeFighterP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeFighterP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeFighterP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeFighterP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.fighter_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteFighterKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteFighterKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteFighterKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteFighterKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.suplex:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeSuplexP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeSuplexP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeSuplexP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeSuplexP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.suplex_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteSuplexKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteSuplexKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteSuplexKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteSuplexKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.wing:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeWingP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeWingP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeWingP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeWingP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.wing_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteWingKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteWingKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteWingKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteWingKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.jet:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeJetP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeJetP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeJetP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeJetP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.jet_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteJetKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteJetKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteJetKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteJetKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.sword:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeSwordP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeSwordP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeSwordP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeSwordP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.sword_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteSwordKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteSwordKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteSwordKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteSwordKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.parasol:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeParasolP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeParasolP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeParasolP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeParasolP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.parasol_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteParasolKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteParasolKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteParasolKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteParasolKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.hammer:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeHammerP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeHammerP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeHammerP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeHammerP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.hammer_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteHammerKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteHammerKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteHammerKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteHammerKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.bell:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeBellP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeBellP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeBellP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeBellP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.bell_modern:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteBellModernP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteBellModernP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteBellModernP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteBellModernP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.sleep:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeSleepP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeSleepP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeSleepP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeSleepP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.sleep_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteSleepKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteSleepKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteSleepKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteSleepKSSUP4;
							break;
						}
						selectedHatSkin = 0;
						break;
					}
					break;
				
					case playerAbilities.scan:
					switch (selectedPlayer)
					{
						case 0:
						playerHatSkin = global.hatTypeScanP1;
						break;
					
						case 1:
						playerHatSkin = global.hatTypeScanP2;
						break;
					
						case 2:
						playerHatSkin = global.hatTypeScanP3;
						break;
					
						case 3:
						playerHatSkin = global.hatTypeScanP4;
						break;
					}
				
					switch (playerHatSkin)
					{
						case abilityHatSkins.scan_kssu:
						switch (selectedPlayer)
						{
							case 0:
							playerHatPaint = global.hatPaletteScanKSSUP1;
							break;
						
							case 1:
							playerHatPaint = global.hatPaletteScanKSSUP2;
							break;
						
							case 2:
							playerHatPaint = global.hatPaletteScanKSSUP3;
							break;
						
							case 3:
							playerHatPaint = global.hatPaletteScanKSSUP4;
							break;
						}
						selectedHatSkin = 0;
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
					switch (abilityHatValue[subSelection])
					{
						case playerAbilities.cutter:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeCutterP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeCutterP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeCutterP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeCutterP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.beam:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeBeamP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeBeamP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeBeamP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeBeamP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.mysticBeam:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeMysticBeamP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeMysticBeamP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeMysticBeamP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeMysticBeamP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.stone:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeStoneP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeStoneP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeStoneP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeStoneP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.mirror:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeMirrorP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeMirrorP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeMirrorP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeMirrorP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.ninja:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeNinjaP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeNinjaP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeNinjaP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeNinjaP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.bomb:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeBombP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeBombP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeBombP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeBombP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.fire:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeFireP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeFireP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeFireP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeFireP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.ice:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeIceP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeIceP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeIceP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeIceP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.spark:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeSparkP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeSparkP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeSparkP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeSparkP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.yoyo:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeYoyoP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeYoyoP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeYoyoP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeYoyoP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.wheel:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeWheelP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeWheelP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeWheelP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeWheelP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.artist:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeArtistP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeArtistP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeArtistP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeArtistP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.fighter:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeFighterP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeFighterP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeFighterP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeFighterP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.suplex:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeSuplexP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeSuplexP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeSuplexP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeSuplexP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.wing:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeWingP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeWingP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeWingP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeWingP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.jet:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeJetP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeJetP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeJetP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeJetP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.sword:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeSwordP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeSwordP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeSwordP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeSwordP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.parasol:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeParasolP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeParasolP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeParasolP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeParasolP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.hammer:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeHammerP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeHammerP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeHammerP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeHammerP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.bell:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeBellP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeBellP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeBellP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeBellP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.sleep:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeSleepP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeSleepP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeSleepP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeSleepP4 = playerHatSkin;
							break;
						}
						break;
					
						case playerAbilities.scan:
						switch (selectedPlayer)
						{
							case 0:
							global.hatTypeScanP1 = playerHatSkin;
							break;
						
							case 1:
							global.hatTypeScanP2 = playerHatSkin;
							break;
						
							case 2:
							global.hatTypeScanP3 = playerHatSkin;
							break;
						
							case 3:
							global.hatTypeScanP4 = playerHatSkin;
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
					playerHatPaint = abilityHatPaintValue[subSelection][selectedSkin][selection];
					switch (abilityHatValue[subSelection])
					{
						case playerAbilities.cutter:
						switch (playerHatSkin)
						{
							case abilityHatSkins.cutter_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteCutterKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteCutterKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteCutterKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteCutterKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.beam:
						switch (playerHatSkin)
						{
							case abilityHatSkins.beam_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteBeamKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteBeamKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteBeamKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteBeamKSSUP4 = playerHatPaint;
								break;
							}
							break;
						
							case abilityHatSkins.beam_marxSoul:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteBeamMarxSoulP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteBeamMarxSoulP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteBeamMarxSoulP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteBeamMarxSoulP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.mysticBeam:
						switch (playerHatSkin)
						{
							case abilityHatSkins.mysticBeam_ggs:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteMysticBeamGGSP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteMysticBeamGGSP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteMysticBeamGGSP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteMysticBeamGGSP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.stone:
						switch (playerHatSkin)
						{
							case abilityHatSkins.stone_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteStoneKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteStoneKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteStoneKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteStoneKSSUP4 = playerHatPaint;
								break;
							}
							break;
						
							case abilityHatSkins.stone_modern:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteStoneModernP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteStoneModernP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteStoneModernP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteStoneModernP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.mirror:
						switch (playerHatSkin)
						{
							case abilityHatSkins.mirror_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteMirrorKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteMirrorKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteMirrorKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteMirrorKSSUP4 = playerHatPaint;
								break;
							}
							break;
						
							case abilityHatSkins.mirror_modern:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteStoneModernP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteStoneModernP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteStoneModernP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteStoneModernP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.ninja:
						switch (playerHatSkin)
						{
							case abilityHatSkins.ninja_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteNinjaKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteNinjaKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteNinjaKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteNinjaKSSUP4 = playerHatPaint;
								break;
							}
							break;
						
							case abilityHatSkins.ninja_modern:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteNinjaModernP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteNinjaModernP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteNinjaModernP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteNinjaModernP4 = playerHatPaint;
								break;
							}
							break;
						
							case abilityHatSkins.ninja_samurai:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteNinjaSamuraiP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteNinjaSamuraiP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteNinjaSamuraiP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteNinjaSamuraiP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.bomb:
						switch (playerHatSkin)
						{
							case abilityHatSkins.bomb_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteBombKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteBombKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteBombKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteBombKSSUP4 = playerHatPaint;
								break;
							}
							break;
						
							case abilityHatSkins.bomb_modern:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteBombModernP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteBombModernP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteBombModernP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteBombModernP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.fire:
						switch (playerHatSkin)
						{
							case abilityHatSkins.fire_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteFireKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteFireKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteFireKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteFireKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.ice:
						switch (playerHatSkin)
						{
							case abilityHatSkins.ice_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteIceKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteIceKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteIceKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteIceKSSUP4 = playerHatPaint;
								break;
							}
							break;
						
							case abilityHatSkins.ice_snowman:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteIceSnowmanP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteIceSnowmanP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteIceSnowmanP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteIceSnowmanP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.spark:
						switch (playerHatSkin)
						{
							case abilityHatSkins.spark_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteSparkKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteSparkKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteSparkKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteSparkKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.yoyo:
						switch (playerHatSkin)
						{
							case abilityHatSkins.yoyo_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteYoyoKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteYoyoKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteYoyoKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteYoyoKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.wheel:
						switch (playerHatSkin)
						{
							case abilityHatSkins.wheel_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteWheelKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteWheelKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteWheelKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteWheelKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.artist:
						switch (playerHatSkin)
						{
							case abilityHatSkins.artist_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteArtistKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteArtistKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteArtistKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteArtistKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.fighter:
						switch (playerHatSkin)
						{
							case abilityHatSkins.fighter_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteFighterKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteFighterKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteFighterKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteFighterKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.suplex:
						switch (playerHatSkin)
						{
							case abilityHatSkins.suplex_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteSuplexKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteSuplexKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteSuplexKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteSuplexKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.wing:
						switch (playerHatSkin)
						{
							case abilityHatSkins.wing_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteWingKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteWingKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteWingKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteWingKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.jet:
						switch (playerHatSkin)
						{
							case abilityHatSkins.jet_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteJetKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteJetKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteJetKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteJetKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.sword:
						switch (playerHatSkin)
						{
							case abilityHatSkins.sword_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteSwordKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteSwordKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteSwordKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteSwordKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.parasol:
						switch (playerHatSkin)
						{
							case abilityHatSkins.parasol_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteParasolKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteParasolKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteParasolKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteParasolKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.hammer:
						switch (playerHatSkin)
						{
							case abilityHatSkins.hammer_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteHammerKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteHammerKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteHammerKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteHammerKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.bell:
						switch (playerHatSkin)
						{
							case abilityHatSkins.bell_modern:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteBellModernP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteBellModernP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteBellModernP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteBellModernP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.sleep:
						switch (playerHatSkin)
						{
							case abilityHatSkins.sleep_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteSleepKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteSleepKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteSleepKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteSleepKSSUP4 = playerHatPaint;
								break;
							}
							break;
						}
						break;
					
						case playerAbilities.scan:
						switch (playerHatSkin)
						{
							case abilityHatSkins.scan_kssu:
							switch (selectedPlayer)
							{
								case 0:
								global.hatPaletteScanKSSUP1 = playerHatPaint;
								break;
							
								case 1:
								global.hatPaletteScanKSSUP2 = playerHatPaint;
								break;
							
								case 2:
								global.hatPaletteScanKSSUP3 = playerHatPaint;
								break;
							
								case 3:
								global.hatPaletteScanKSSUP4 = playerHatPaint;
								break;
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
					switch (selectedPlayer)
					{
						case 0:
						if (global.familiarP1 == familiarValue[selection])
						{
							global.familiarP1 = familiars.none;
						}
						else
						{
							global.familiarP1 = familiarValue[selection];
						}
						break;
					
						case 1:
						if (global.familiarP2 == familiarValue[selection])
						{
							global.familiarP2 = familiars.none;
						}
						else
						{
							global.familiarP2 = familiarValue[selection];
						}
						break;
					
						case 2:
						if (global.familiarP3 == familiarValue[selection])
						{
							global.familiarP3 = familiars.none;
						}
						else
						{
							global.familiarP3 = familiarValue[selection];
						}
						break;
					
						case 3:
						if (global.familiarP4 == familiarValue[selection])
						{
							global.familiarP4 = familiars.none;
						}
						else
						{
							global.familiarP4 = familiarValue[selection];
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
}