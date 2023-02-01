///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Spawn Buttons
	
	if (spawnButtons)
	{
		switch (page)
		{
			case 0:
			var button = instance_create_depth(-40,140,depth - 1,obj_Menu_Button);
			button.owner = id;
			button.sprite_index = spr_Menu_DeleteSave_Button_Yes;
			button.state = "deleteSave";
			button.number = 0;
			var button = instance_create_depth(-40,190,depth - 1,obj_Menu_Button);
			button.owner = id;
			button.sprite_index = spr_Menu_DeleteSave_Button_No;
			button.state = "deleteSave";
			button.number = 1;
			break;
			
			case 1:
			var button = instance_create_depth(-40,140,depth - 1,obj_Menu_Button);
			button.owner = id;
			button.sprite_index = spr_Menu_DeleteSave_Button_Yes;
			button.state = "deleteSave";
			button.number = 0;
			var button = instance_create_depth(-40,190,depth - 1,obj_Menu_Button);
			button.owner = id;
			button.sprite_index = spr_Menu_DeleteSave_Button_No;
			button.state = "deleteSave";
			button.number = 1;
			break;
		}
		spawnButtons = false;
	}
	
	//Selection
	
	if (buttonTimer == -1)
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
		if (selection < 0) selection += (maxSelection + 1);
		if (selection > maxSelection) selection -= (maxSelection + 1);
		
		if ((!goBack) and ((keyJumpPressed) or (keyStartPressed))) select = true;
	}
	
	if (select)
	{
		switch (page)
		{
			case 0:
			switch (selection)
			{
				case 0:
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				page += 1;
				with (obj_Menu_Button) if (state == "deleteSave") instance_destroy();
				spawnButtons = true;
				selection = 0;
				break;
				
				case 1:
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
				break;
			}
			break;
			
			case 1:
			switch (selection)
			{
				case 0:
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				page += 1;
				with (obj_Menu_Button) if (state == "deleteSave") instance_destroy();
				buttonTimer = buttonTimerMax;
				selection = 1;
				break;
				
				case 1:
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
				break;
			}
			break;
			
			case 2:
			switch (selection)
			{
				case 0:
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				page += 1;
				with (obj_Menu_Button) if ((state == "deleteSave") or (state == "back")) instance_destroy();
				spawnButtons = true;
				file_delete(global.selectedSave);
				particleTimer = particleTimerMax;
				exitTimer = exitTimerMax;
				break;
				
				case 1:
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				goBack = true;
				break;
			}
			break;
		}
		select = false;
	}
	
	if ((page != 3) and (!instance_exists(obj_Fade)))
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
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_MainMenu;
		goBack = false;
	}
	
	//Button Timer
	
	if (buttonTimer > 0)
	{
		buttonTimer -= 1;
	}
	else if (buttonTimer == 0)
	{
		var button = instance_create_depth(-40,140,depth - 1,obj_Menu_Button);
		button.owner = id;
		button.sprite_index = spr_Menu_DeleteSave_Button_No;
		button.state = "deleteSave";
		button.number = 1;
		var button = instance_create_depth(-40,190,depth - 1,obj_Menu_Button);
		button.owner = id;
		button.sprite_index = spr_Menu_DeleteSave_Button_Yes;
		button.state = "deleteSave";
		button.number = 0;
	    buttonTimer = -1;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
		audio_play_sound(snd_Explosion1,0,false);
		var deathParticles = instance_create_depth(irandom_range(0,room_width),irandom_range(0,room_height),depth - 1,obj_DeathParticles);
		deathParticles.state = choose("roundabout","doubleCross","cross","doubleHex","explosion1");
	    particleTimer = particleTimerMax;
	}
	
	//Exit Timer
	
	if (exitTimer > 0)
	{
		exitTimer -= 1;
	}
	else if (exitTimer == 0)
	{
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = "restart";
		fade.alphaSpd = .02;
		fade.color = c_white;
	    exitTimer = -1;
	}
}