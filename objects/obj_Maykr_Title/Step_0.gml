///@description Main

if (!global.pause)
{
	//Variables
	
	scr_Player_Inputs(0);
	startLerp = lerp(startLerp,1,.01);
	if (startLerp >= .85) startTrigger = 1;
	if (startTrigger >= 1) buttonLerp = lerp(buttonLerp,1,.05);
	if (buttonLerp >= .85) startTrigger = 2;
	
	//Selection
	
	if ((startTrigger == 2) and (!instance_exists(obj_Fade)))
	{
		if (keyUpPressed)
		{
			audio_play_sound(snd_BossHealth,0,false);
			selection -= 1;
		}
		if (keyDownPressed)
		{
			audio_play_sound(snd_BossHealth,0,false);
			selection += 1;
		}
	}
	
	if (selection < 0)
	{
		selection = 2;
	}
	if (selection > 2)
	{
		selection = 0;
	}
	
	if ((keyJumpPressed) or (keyStartPressed)) select = true;
	
	if (select)
	{
		switch (selection)
		{
			case 0:
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Maykr;
			break;
		
			case 2:
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_MainMenu;
			break;
		}
		select = false;
	}
}