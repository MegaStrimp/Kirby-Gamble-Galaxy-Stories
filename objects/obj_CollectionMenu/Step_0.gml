///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed)) audio_play_sound(snd_BossHealth,0,false);
	
	switch (selection)
	{
		case "bestiary":
		if ((keyUpPressed) or (keyDownPressed)) selection = "upgrades";
		if (keyLeftPressed) selection = "cheats";
		if (keyRightPressed) selection = "customize";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Bestiary;
			select = false;
		}
		break;
		
		case "customize":
		if ((keyUpPressed) or (keyDownPressed)) selection = "trophies";
		if (keyLeftPressed) selection = "bestiary";
		if (keyRightPressed) selection = "stages";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Customize;
			select = false;
		}
		break;
		
		case "stages":
		if ((keyUpPressed) or (keyDownPressed)) selection = "soundTest";
		if (keyLeftPressed) selection = "customize";
		if (keyRightPressed) selection = "cheats";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Stages;
			select = false;
		}
		break;
		
		case "cheats":
		if ((keyUpPressed) or (keyDownPressed)) selection = "gallery";
		if (keyLeftPressed) selection = "stages";
		if (keyRightPressed) selection = "bestiary";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Cheats;
			select = false;
		}
		break;
		
		case "upgrades":
		if ((keyUpPressed) or (keyDownPressed)) selection = "bestiary";
		if (keyLeftPressed) selection = "gallery";
		if (keyRightPressed) selection = "trophies";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Upgrades;
			select = false;
		}
		break;
		
		case "trophies":
		if ((keyUpPressed) or (keyDownPressed)) selection = "customize";
		if (keyLeftPressed) selection = "upgrades";
		if (keyRightPressed) selection = "soundTest";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Trophies;
			select = false;
		}
		break;
		
		case "soundTest":
		if ((keyUpPressed) or (keyDownPressed)) selection = "stages";
		if (keyLeftPressed) selection = "trophies";
		if (keyRightPressed) selection = "gallery";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_SoundTest;
			select = false;
		}
		break;
		
		case "gallery":
		if ((keyUpPressed) or (keyDownPressed)) selection = "cheats";
		if (keyLeftPressed) selection = "soundTest";
		if (keyRightPressed) selection = "upgrades";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Gallery;
			select = false;
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
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_MainMenu;
		goBack = false;
	}
}