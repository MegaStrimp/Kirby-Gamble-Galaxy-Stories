///@description Main

//Inputs P1

scr_Player_Inputs(0);

//Select P1

if (!selectedP1)
{
	if (keyLeftPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
	    selectionP1 -= 1;
	}
	if (keyRightPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
	    selectionP1 += 1;
	}
	
	if (((keyJumpPressed) or (keyStartPressed)) and (characterAvailable[selectionP1]))
	{
		if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
		audio_play_sound(snd_ButtonYes,0,false);
		selectedP1 = true;
	}
}
else
{
	hudWidthP1 = lerp(hudWidthP1,0,.16);
	hudHeightP1 = lerp(hudHeightP1,0,.16);
	hudYOffsetP1 = lerp(hudYOffsetP1,23,.16);
}

if (selectionP1 < 0) selectionP1 += arrayLength;
if (selectionP1 >= arrayLength) selectionP1 -= arrayLength;

rotP1 -= angle_difference(rotP1,(arrayLength - selectionP1) * (360 / arrayLength)) / (.08 * room_speed);

if (global.hasCoop)
{
	//Inputs P2
	
	scr_Player_Inputs(1);
	
	//Select P2
	
	if (!selectedP2)
	{
		if (keyLeftPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
		    selectionP2 -= 1;
		}
		if (keyRightPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
		    selectionP2 += 1;
		}
		
		if (((keyJumpPressed) or (keyStartPressed)) and (characterAvailable[selectionP2]))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			selectedP2 = true;
		}
	}
	else
	{
		hudWidthP2 = lerp(hudWidthP2,0,.16);
		hudHeightP2 = lerp(hudHeightP2,0,.16);
		hudYOffsetP2 = lerp(hudYOffsetP2,23,.16);
	}
	
	if (selectionP2 < 0) selectionP2 += arrayLength;
	if (selectionP2 >= arrayLength) selectionP2 -= arrayLength;
	
	rotP2 -= angle_difference(rotP2,(arrayLength - selectionP2) * (360 / arrayLength)) / (.08 * room_speed);
}

if ((!instance_exists(obj_Fade)) and (roomChangeTimer == -1) and (((!global.hasCoop) and (selectedP1)) or ((global.hasCoop) and (selectedP1) and (selectedP2)))) roomChangeTimer = roomChangeTimerMax;

//Room Change Timer

if (roomChangeTimer > 0)
{
	roomChangeTimer -= 1;
}
else if (roomChangeTimer == 0)
{
	if (audio_is_playing(snd_Enter)) audio_stop_sound(snd_Enter);
	audio_play_sound(snd_Enter,0,false);
	var fade = instance_create_depth(x,y,-999,obj_Fade);
	fade.targetRoom = global.roomNext;
	fade.alphaSpd = .02;
	global.characterP1 = characterIndex[selectionP1];
	if (characterIndex[selectionP1]) global.isHelperP1 = true;
	global.characterP2 = characterIndex[selectionP2];
	if (characterIndex[selectionP2]) global.isHelperP2 = true;
	roomChangeTimer = -1;
}