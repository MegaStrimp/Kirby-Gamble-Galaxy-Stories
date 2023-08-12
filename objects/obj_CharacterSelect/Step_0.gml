///@description Main

#region Variables
clockTicks = ((readyP1) and (readyP2) and (readyP3) and (readyP4));

if (clockTicks)
{
	if (audio_is_paused(snd_ClockTick)) audio_resume_sound(snd_ClockTick);
}
else
{
	if (!audio_is_paused(snd_ClockTick)) audio_pause_sound(snd_ClockTick);
}

var cancelAutoScroll = true;
#endregion

#region Play Sound
if (!soundPlayed)
{
	//audio_play_sound(snd_ClockTick,0,true);
	soundPlayed = true;
}
#endregion

#region Load Textures
if (!loaded)
{
	switch (global.currentStage)
	{
		case stages.greenGreens:
		scr_LoadTexturePage("GreenGreens");
		break;
		
		case stages.battleshipHalberd:
		scr_LoadTexturePage("Halberd");
		break;
		
		case stages.asteroidFields:
		scr_LoadTexturePage("AsteroidFields");
		break;
		
		case stages.yolkYard:
		case stages.grandTempleAvgo:
		case stages.floralYolkCaves:
		scr_LoadTexturePage("EggGarden");
		break;
		
		case stages.stormTheFortress:
		case stages.centralLab:
		case stages.pathToTheNastyMachine:
		scr_LoadTexturePage("GearCube");
		break;
		
		case stages.sandshellBeach:
		case stages.upTheStraw:
		case stages.sacredAquatia:
		scr_LoadTexturePage("Aquatia");
		break;
		
		case stages.cosmicPalace:
		scr_LoadTexturePage("CosmicPalace");
		break;
		
		case stages.popstarMoon:
		scr_LoadTexturePage("PopstarMoon");
		break;
	}
	loaded = true;
}
#endregion

#region Select
for (var i = 0; i < 4; i++)
{
	#region Variables
	var hasCoopPointer = global.hasP1;
	var palettePointer = global.sprayPaintP1;
	var paletteSelectionPointer = paletteSelectionP1;
	var characterPointer = global.characterP1;
	var characterSelectionPointer = characterSelectionP1;
	var readyPointer = readyP1;
	var subSelectionPointer = subSelectionP1;
	switch (i)
	{
		case 1:
		hasCoopPointer = global.hasP2;
		palettePointer = global.sprayPaintP2;
		paletteSelectionPointer = paletteSelectionP2;
		characterPointer = global.characterP2;
		characterSelectionPointer = characterSelectionP2;
		readyPointer = readyP2;
		subSelectionPointer = subSelectionP2;
		break;
		
		case 2:
		hasCoopPointer = global.hasP3;
		palettePointer = global.sprayPaintP3;
		paletteSelectionPointer = paletteSelectionP3;
		characterPointer = global.characterP3;
		characterSelectionPointer = characterSelectionP3;
		readyPointer = readyP3;
		subSelectionPointer = subSelectionP3;
		break;
		
		case 3:
		hasCoopPointer = global.hasP4;
		palettePointer = global.sprayPaintP4;
		paletteSelectionPointer = paletteSelectionP4;
		characterPointer = global.characterP4;
		characterSelectionPointer = characterSelectionP4;
		readyPointer = readyP4;
		subSelectionPointer = subSelectionP4;
		break;
	}
	#endregion
	
	if ((hasCoopPointer) and (!instance_exists(obj_Fade)))
	{
		#region Inputs
		scr_Player_Inputs(i);
		#endregion
		
		if (readyPointer)
		{
			if (keyJumpPressed)
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				switch (i)
				{
					case 0:
					readyP1 = false;
					break;
					
					case 1:
					readyP2 = false;
					break;
					
					case 2:
					readyP3 = false;
					break;
					
					case 3:
					readyP4 = false;
					break;
				}
			}
		}
		else
		{
			if (keyJumpPressed)
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				switch (i)
				{
					case 0:
					readyP1 = true;
					break;
					
					case 1:
					readyP2 = true;
					break;
					
					case 2:
					readyP3 = true;
					break;
					
					case 3:
					readyP4 = true;
					break;
				}
			}
			
			switch (subSelectionPointer)
			{
				case 0:
				var characterHasChangedP1 = false;
				var characterHasChangedP2 = false;
				var characterHasChangedP3 = false;
				var characterHasChangedP4 = false;
				if ((keyUpPressed) or ((autoScrollTick) and (keyUpHold)))
				{
					if (characterSelectionPointer > 0)
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						switch (i)
						{
							case 0:
							characterHasChangedP1 = true;
							characterSelectionP1 -= 1;
							break;
							
							case 1:
							characterHasChangedP2 = true;
							characterSelectionP2 -= 1;
							break;
							
							case 2:
							characterHasChangedP3 = true;
							characterSelectionP3 -= 1;
							break;
							
							case 3:
							characterHasChangedP4 = true;
							characterSelectionP4 -= 1;
							break;
						}
					}
					else
					{
						if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
						audio_play_sound(snd_ButtonNo,0,false);
					}
					
					if (!autoScroll) canAutoScrollTimer = canAutoScrollTimerMax;
				}
				
				if ((keyDownPressed) or ((autoScrollTick) and (keyDownHold)))
				{
					if (characterSelectionPointer < charactersMax - 1)
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						switch (i)
						{
							case 0:
							characterHasChangedP1 = true;
							characterSelectionP1 += 1;
							break;
							
							case 1:
							characterHasChangedP2 = true;
							characterSelectionP2 += 1;
							break;
							
							case 2:
							characterHasChangedP3 = true;
							characterSelectionP3 += 1;
							break;
							
							case 3:
							characterHasChangedP4 = true;
							characterSelectionP4 += 1;
							break;
						}
					}
					else
					{
						if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
						audio_play_sound(snd_ButtonNo,0,false);
					}
					
					if (!autoScroll) canAutoScrollTimer = canAutoScrollTimerMax;
				}
				
				if (characterHasChangedP1)
				{
					var characterSprayPointer = global.sprayPaintKirbyP1;
					switch (characterSelectionP1)
					{
						case playerCharacters.kirby:
						characterSprayPointer = global.sprayPaintKirbyP1;
						break;
						
						case playerCharacters.gamble:
						characterSprayPointer = global.sprayPaintGambleP1;
						break;
						
						case playerCharacters.metaKnight:
						characterSprayPointer = global.sprayPaintMetaKnightP1;
						break;
						
						case playerCharacters.gooey:
						characterSprayPointer = global.sprayPaintGooeyP1;
						break;
						
						case playerCharacters.magolor:
						characterSprayPointer = global.sprayPaintMagolorP1;
						break;
					}
					
					for (var i = 0; i < spraysMax; i++)
					{
						if (spraysArray[# i,0] == characterSprayPointer) paletteSelectionP1 = i;
					}
				}
				
				if (characterHasChangedP2)
				{
					var characterSprayPointer = global.sprayPaintKirbyP2;
					switch (characterSelectionP2)
					{
						case playerCharacters.kirby:
						characterSprayPointer = global.sprayPaintKirbyP2;
						break;
						
						case playerCharacters.gamble:
						characterSprayPointer = global.sprayPaintGambleP2;
						break;
						
						case playerCharacters.metaKnight:
						characterSprayPointer = global.sprayPaintMetaKnightP2;
						break;
						
						case playerCharacters.gooey:
						characterSprayPointer = global.sprayPaintGooeyP2;
						break;
						
						case playerCharacters.magolor:
						characterSprayPointer = global.sprayPaintMagolorP2;
						break;
					}
					
					for (var i = 0; i < spraysMax; i++)
					{
						if (spraysArray[# i,0] == characterSprayPointer) paletteSelectionP2 = i;
					}
				}
				
				if (characterHasChangedP3)
				{
					var characterSprayPointer = global.sprayPaintKirbyP3;
					switch (characterSelectionP3)
					{
						case playerCharacters.kirby:
						characterSprayPointer = global.sprayPaintKirbyP3;
						break;
						
						case playerCharacters.gamble:
						characterSprayPointer = global.sprayPaintGambleP3;
						break;
						
						case playerCharacters.metaKnight:
						characterSprayPointer = global.sprayPaintMetaKnightP3;
						break;
						
						case playerCharacters.gooey:
						characterSprayPointer = global.sprayPaintGooeyP3;
						break;
						
						case playerCharacters.magolor:
						characterSprayPointer = global.sprayPaintMagolorP3;
						break;
					}
					
					for (var i = 0; i < spraysMax; i++)
					{
						if (spraysArray[# i,0] == characterSprayPointer) paletteSelectionP3 = i;
					}
				}
				
				if (characterHasChangedP4)
				{
					var characterSprayPointer = global.sprayPaintKirbyP4;
					switch (characterSelectionP4)
					{
						case playerCharacters.kirby:
						characterSprayPointer = global.sprayPaintKirbyP4;
						break;
						
						case playerCharacters.gamble:
						characterSprayPointer = global.sprayPaintGambleP4;
						break;
						
						case playerCharacters.metaKnight:
						characterSprayPointer = global.sprayPaintMetaKnightP4;
						break;
						
						case playerCharacters.gooey:
						characterSprayPointer = global.sprayPaintGooeyP4;
						break;
						
						case playerCharacters.magolor:
						characterSprayPointer = global.sprayPaintMagolorP4;
						break;
					}
					
					for (var i = 0; i < spraysMax; i++)
					{
						if (spraysArray[# i,0] == characterSprayPointer) paletteSelectionP4 = i;
					}
				}
				
				if (keyRightPressed)
				{
					if (charactersArray[# characterSelectionPointer,0] != playerCharacters.helper)
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						switch (i)
						{
							case 0:
							subSelectionP1 = 1;
							break;
							
							case 1:
							subSelectionP2 = 1;
							break;
							
							case 2:
							subSelectionP3 = 1;
							break;
							
							case 3:
							subSelectionP4 = 1;
							break;
						}
					}
					else
					{
						if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
						audio_play_sound(snd_ButtonNo,0,false);
					}
				}
				break;
				
				case 1:
				if ((keyUpPressed) or ((autoScrollTick) and (keyUpHold)))
				{
					if (paletteSelectionPointer > 0)
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						switch (i)
						{
							case 0:
							paletteSelectionP1 -= 1;
							break;
							
							case 1:
							paletteSelectionP2 -= 1;
							break;
							
							case 2:
							paletteSelectionP3 -= 1;
							break;
							
							case 3:
							paletteSelectionP4 -= 1;
							break;
						}
					}
					else
					{
						if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
						audio_play_sound(snd_ButtonNo,0,false);
					}
					
					if (!autoScroll) canAutoScrollTimer = canAutoScrollTimerMax;
				}
				
				if ((keyDownPressed) or ((autoScrollTick) and (keyDownHold)))
				{
					if (paletteSelectionPointer < spraysMax - 1)
					{
						if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
						audio_play_sound(snd_ButtonChange,0,false);
						switch (i)
						{
							case 0:
							paletteSelectionP1 += 1;
							break;
							
							case 1:
							paletteSelectionP2 += 1;
							break;
							
							case 2:
							paletteSelectionP3 += 1;
							break;
							
							case 3:
							paletteSelectionP4 += 1;
							break;
						}
					}
					else
					{
						if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
						audio_play_sound(snd_ButtonNo,0,false);
					}
					
					if (!autoScroll) canAutoScrollTimer = canAutoScrollTimerMax;
				}
				
				if (keyLeftPressed)
				{
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					switch (i)
					{
						case 0:
						subSelectionP1 = 0;
						break;
						
						case 1:
						subSelectionP2 = 0;
						break;
						
						case 2:
						subSelectionP3 = 0;
						break;
						
						case 3:
						subSelectionP4 = 0;
						break;
					}
				}
				break;
			}
		}
		
		cancelAutoScroll = !(((keyUpHold) or (keyDownHold)) and !((keyUpHold) and (keyDownHold)));
		
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
#endregion

#region Room Change Timer
if (roomChangeTimer > 0)
{
	if (clockTicks) roomChangeTimer -= 1;
}
else if (roomChangeTimer == 0)
{
	if (audio_is_playing(snd_Enter)) audio_stop_sound(snd_Enter);
	audio_play_sound(snd_Enter,0,false);
	
	var fade = instance_create_depth(x,y,-999,obj_Fade);
	fade.targetRoom = global.roomNext;
	fade.alphaSpd = .02;
	
	#region Start Stage
	scr_StartStage();
	#endregion
	show_debug_message(string(global.stageCollectibleMax));
	#region Change Player Attributes
	global.characterP1 = charactersArray[# characterSelectionP1,0];
	global.characterP2 = charactersArray[# characterSelectionP2,0];
	global.characterP3 = charactersArray[# characterSelectionP3,0];
	global.characterP4 = charactersArray[# characterSelectionP4,0];
	
	if (global.hasP1)
	{
		var palette = spraysArray[# paletteSelectionP1,0];
		switch (global.characterP1)
		{
			case playerCharacters.kirby:
			global.sprayPaintKirbyP1 = palette;
			break;
			
			case playerCharacters.gamble:
			global.sprayPaintGambleP1 = palette;
			break;
			
			case playerCharacters.metaKnight:
			global.sprayPaintMetaKnightP1 = palette;
			break;
			
			case playerCharacters.gooey:
			global.sprayPaintGooeyP1 = palette;
			break;
			
			case playerCharacters.magolor:
			global.sprayPaintMagolorP1 = palette;
			break;
		}
	}
	
	if (global.hasP2)
	{
		var palette = spraysArray[# paletteSelectionP2,0];
		switch (global.characterP2)
		{
			case playerCharacters.kirby:
			global.sprayPaintKirbyP2 = palette;
			break;
			
			case playerCharacters.gamble:
			global.sprayPaintGambleP2 = palette;
			break;
			
			case playerCharacters.metaKnight:
			global.sprayPaintMetaKnightP2 = palette;
			break;
			
			case playerCharacters.gooey:
			global.sprayPaintGooeyP2 = palette;
			break;
			
			case playerCharacters.magolor:
			global.sprayPaintMagolorP2 = palette;
			break;
		}
	}
	
	if (global.hasP3)
	{
		var palette = spraysArray[# paletteSelectionP3,0];
		switch (global.characterP3)
		{
			case playerCharacters.kirby:
			global.sprayPaintKirbyP3 = palette;
			break;
			
			case playerCharacters.gamble:
			global.sprayPaintGambleP3 = palette;
			break;
			
			case playerCharacters.metaKnight:
			global.sprayPaintMetaKnightP3 = palette;
			break;
			
			case playerCharacters.gooey:
			global.sprayPaintGooeyP3 = palette;
			break;
			
			case playerCharacters.magolor:
			global.sprayPaintMagolorP3 = palette;
			break;
		}
	}
	
	if (global.hasP4)
	{
		var palette = spraysArray[# paletteSelectionP4,0];
		switch (global.characterP4)
		{
			case playerCharacters.kirby:
			global.sprayPaintKirbyP4 = palette;
			break;
			
			case playerCharacters.gamble:
			global.sprayPaintGambleP4 = palette;
			break;
			
			case playerCharacters.metaKnight:
			global.sprayPaintMetaKnightP4 = palette;
			break;
			
			case playerCharacters.gooey:
			global.sprayPaintGooeyP4 = palette;
			break;
			
			case playerCharacters.magolor:
			global.sprayPaintMagolorP4 = palette;
			break;
		}
	}
	#endregion
	
	roomChangeTimer = -1;
}
#endregion