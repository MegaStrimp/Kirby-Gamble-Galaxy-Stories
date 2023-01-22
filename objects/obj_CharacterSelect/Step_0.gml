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
#endregion

#region Play Sound
if (!soundPlayed)
{
	audio_play_sound(snd_ClockTick,0,true);
	soundPlayed = true;
}
#endregion

#region Select
for (var i = 0; i < 4; i++)
{
	#region Variables
	var hasCoopPointer = global.hasP1;
	var palettePointer = global.sprayPaintP1;
	var characterPointer = global.characterP1;
	var characterSelectionPointer = characterSelectionP1;
	var readyPointer = readyP1;
	var subSelectionPointer = subSelectionP1;
	switch (i)
	{
		case 1:
		hasCoopPointer = global.hasP2;
		palettePointer = global.sprayPaintP2;
		characterPointer = global.characterP2;
		characterSelectionPointer = characterSelectionP2;
		readyPointer = readyP2;
		subSelectionPointer = subSelectionP2;
		break;
		
		case 2:
		hasCoopPointer = global.hasP3;
		palettePointer = global.sprayPaintP3;
		characterPointer = global.characterP3;
		characterSelectionPointer = characterSelectionP3;
		readyPointer = readyP3;
		subSelectionPointer = subSelectionP3;
		break;
		
		case 3:
		hasCoopPointer = global.hasP4;
		palettePointer = global.sprayPaintP4;
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
				if (keyRightPressed)
				{
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
				break;
				
				case 1:
				if (keyLeftPressed)
				{
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
	
	#region Change Player Attributes
	var skin = global.skinKirbyP1;
	switch (global.characterP1)
	{
		case playerCharacters.gamble:
		skin = global.skinGambleP1;
		break;
		
		case playerCharacters.metaKnight:
		skin = global.skinMetaKnightP1;
		break;
		
		case playerCharacters.helper:
		skin = -1;
		break;
		
		case playerCharacters.gooey:
		skin = global.skinGooeyP1;
		break;
		
		case playerCharacters.magolor:
		skin = global.skinMagolorP1;
		break;
	}
	var finalSkinP1 = scr_Player_SprayPaint(global.sprayPaintKirbyP1,global.characterP1,skin);
	global.sprayPaintP1 = finalSkinP1;
	
	var skin = global.skinKirbyP2;
	switch (global.characterP2)
	{
		case playerCharacters.gamble:
		skin = global.skinGambleP2;
		break;
		
		case playerCharacters.metaKnight:
		skin = global.skinMetaKnightP2;
		break;
		
		case playerCharacters.helper:
		skin = -1;
		break;
		
		case playerCharacters.gooey:
		skin = global.skinGooeyP2;
		break;
		
		case playerCharacters.magolor:
		skin = global.skinMagolorP2;
		break;
	}
	var finalSkinP2 = scr_Player_SprayPaint(global.sprayPaintKirbyP2,global.characterP2,skin);
	global.sprayPaintP2 = finalSkinP2;
	
	var skin = global.skinKirbyP3;
	switch (global.characterP3)
	{
		case playerCharacters.gamble:
		skin = global.skinGambleP3;
		break;
		
		case playerCharacters.metaKnight:
		skin = global.skinMetaKnightP3;
		break;
		
		case playerCharacters.helper:
		skin = -1;
		break;
		
		case playerCharacters.gooey:
		skin = global.skinGooeyP3;
		break;
		
		case playerCharacters.magolor:
		skin = global.skinMagolorP3;
		break;
	}
	var finalSkinP3 = scr_Player_SprayPaint(global.sprayPaintKirbyP3,global.characterP3,skin);
	global.sprayPaintP3 = finalSkinP3;
	
	var skin = global.skinKirbyP4;
	switch (global.characterP4)
	{
		case playerCharacters.gamble:
		skin = global.skinGambleP4;
		break;
		
		case playerCharacters.metaKnight:
		skin = global.skinMetaKnightP4;
		break;
		
		case playerCharacters.helper:
		skin = -1;
		break;
		
		case playerCharacters.gooey:
		skin = global.skinGooeyP4;
		break;
		
		case playerCharacters.magolor:
		skin = global.skinMagolorP4;
		break;
	}
	var finalSkinP4 = scr_Player_SprayPaint(global.sprayPaintKirbyP4,global.characterP4,skin);
	global.sprayPaintP4 = finalSkinP4;
	#endregion
	
	roomChangeTimer = -1;
}
#endregion