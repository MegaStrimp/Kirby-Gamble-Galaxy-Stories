///@description Main

//Inputs

scr_Player_Inputs(0);

//Variables

if (active)
{
	keeperBounceOffset += (.025 * keeperBounceDir);
	if ((abs(keeperBounceOffset) >= 1.5)) keeperBounceDir *= -1;
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
			var text = scr_Localization(7,0,0,global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			array += 1;
			text = scr_Localization(7,0,1,global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			array += 1;
			text = scr_Localization(7,0,2,global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			array += 1;
			text = scr_Localization(7,0,3,global.language);
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
			var text = scr_Localization(7,2,irandom_range(0,1),global.language);
			scr_Dialogue(dialogue,array,text,-1,-1,-1,snd_ButtonYes);
			global.shopGearCubeNewItem = false;
		}
		welcomeText = scr_Localization(7,1,irandom_range(0,7),global.language);
		break;
	}
	activeTimer = -1;
}