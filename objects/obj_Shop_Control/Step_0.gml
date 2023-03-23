///@description Main

//Inputs

scr_Player_Inputs(0);

//Variables

if (active)
{
	keeperBounceOffset += (.025 * keeperBounceDir);
	if ((abs(keeperBounceOffset) >= 1.5)) keeperBounceDir *= -1;
}

if ((activeText) and ((!instance_exists(obj_Dialogue))))
{
	//Control
	
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
	
	switch (menuIndex)
	{
		#region Main Menu
		case 0:
		var arrayMax = array_length(chooseOptionOffset[0]);
		var lastArray = arrayMax - 1;
		
		if (selection < 0) selection += arrayMax;
		if (selection > lastArray) selection -= arrayMax;
		
		switch (selection)
		{
			case 0:
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				for (var i = 0; i < arrayMax; i++) chooseOptionOffsetLerp[0][i] = 0;
				menuIndex = 1;
			}
			break;
			
			case 1:
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				for (var i = 0; i < arrayMax; i++) chooseOptionOffsetLerp[0][i] = 0;
				menuIndex = 2;
			}
			break;
			
			case lastArray:
			if ((keyJumpPressed) or (keyAttackPressed) or (keyStartPressed) or (keySelectPressed))
			{
				if (global.canSave) scr_SaveGame(global.selectedSave);
				global.pause = false;
				if (audio_is_playing(global.musicPlaying)) audio_resume_sound(global.musicPlaying);
				if (audio_is_playing(mus_Shop)) audio_stop_sound(mus_Shop);
				instance_activate_all();
				instance_destroy();
			}
			break;
		}
		
		if ((keyAttackPressed) or (keySelectPressed))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = lastArray;
		}
		break;
		#endregion
		
		#region Shop
		case 1:
		break;
		#endregion
		
		#region Dialogue
		case 2:
		var arrayMax = array_length(chooseOptionOffset[2]);
		var lastArray = arrayMax - 1;
		
		if (selection < 0) selection += arrayMax;
		if (selection > lastArray) selection -= arrayMax;
		
		switch (selection)
		{
			case 0:
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				for (var i = 0; i < arrayMax; i++) chooseOptionOffsetLerp[2][i] = 0;
				menuIndex = 1;
			}
			break;
			
			case 1:
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				for (var i = 0; i < arrayMax; i++) chooseOptionOffsetLerp[2][i] = 0;
				menuIndex = 2;
			}
			break;
			
			case lastArray:
			if ((keyJumpPressed) or (keyAttackPressed) or (keyStartPressed) or (keySelectPressed))
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				for (var i = 0; i < arrayMax; i++) chooseOptionOffsetLerp[2][i] = 0;
				menuIndex = 0;
			}
			break;
		}
		
		if ((keyAttackPressed) or (keySelectPressed))
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection = lastArray;
		}
		break;
		#endregion
	}
}

//Hex Timer

if (hexTimer > 0)
{
	hexTimer -= 1;
}
else if (hexTimer == 0)
{
	if (hexNum == 0)
	{
		global.pause = true;
		if (audio_is_playing(global.musicPlaying))
		{
			audio_pause_sound(global.musicPlaying);
			musicPaused = true;
		}
		audio_play_sound(mus_Shop,0,true);
	}
	if (hexNum < 15)
	{
		if (audio_is_playing(snd_HexTransition)) audio_stop_sound(snd_HexTransition);
		audio_play_sound(snd_HexTransition,0,false);
		hexNum += 1;
		hexTimer = 4;
	}
	else
	{
	    instance_deactivate_all(true);
	    instance_activate_object(obj_Setup);
	    instance_activate_object(obj_DebugMode);
	    instance_activate_object(obj_Dialogue);
	    active = true;
		activeTimer = 15;
		hexTimer = -1;
	}
}

//Active Timer

if (activeTimer > 0)
{
	activeTimer -= 1;
}
else if (activeTimer == 0)
{
	activeText = true;
	switch (character)
	{
		case 1:
		if (global.shopGearCubeFirstTime)
		{
			var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
			dialogue.owner = id;
			dialogue.pausable = false;
			dialogue.maxPixels = 350;
			var array = 0;
			var text = scr_Localization_Main(7,0,0,global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			array += 1;
			text = scr_Localization_Main(7,0,1,global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			array += 1;
			text = scr_Localization_Main(7,0,2,global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			array += 1;
			text = scr_Localization_Main(7,0,3,global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			global.shopGearCubeFirstTime = false;
		}
		else if (global.shopGearCubeNewItem)
		{
			var dialogue = instance_create_depth(0,0,-998,obj_Dialogue);
			dialogue.owner = id;
			dialogue.pausable = false;
			dialogue.maxPixels = 350;
			var array = 0;
			var text = scr_Localization_Main(7,2,irandom_range(0,1),global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			global.shopGearCubeNewItem = false;
		}
		welcomeText = scr_Localization_Main(7,1,irandom_range(0,7),global.language);
		break;
	}
	activeTimer = -1;
}