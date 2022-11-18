///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Buttons
	
	if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed)) audio_play_sound(snd_BossHealth,0,false);
	
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
		fade.targetRoom = rm_Title;
		fade.alphaSpd = .02;
		goBack = false;
	}
	
	switch (selection)
	{
		#region Green Greens
		case "greenGreens":
		if (keyUpPressed) selection = "back";
		if (keyDownPressed) selection = "back";
		if (keyLeftPressed) selection = "asteroidFields";
		if ((global.season == seasons.halloween) and (keyLeftPressed)) selection = "doomsday";
		if (keyRightPressed) selection = "asteroidFields";
		
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
			global.familiarP1 = familiars.none;
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_GreenGreens1;
			select = false;
		}
		break;
		#endregion
		
		#region Asteroid Fields
		case "asteroidFields":
		if (keyUpPressed) selection = "options";
		if (keyDownPressed) selection = "options";
		if (keyLeftPressed) selection = "greenGreens";
		if (keyRightPressed) selection = "greenGreens";
		if ((global.season == seasons.halloween) and (keyRightPressed)) selection = "doomsday";
		
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
			global.familiarP1 = familiars.gamble;
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_AsteroidFields1;
			select = false;
		}
		break;
		#endregion
		
		#region Gamble Maykr
		case "gambleMaykr":
		if (keyUpPressed) selection = "asteroidFields";
		if ((global.season == seasons.halloween) and (keyUpPressed)) selection = "doomsday";
		if (keyDownPressed) selection = "asteroidFields";
		if ((global.season == seasons.halloween) and (keyDownPressed)) selection = "doomsday";
		if (keyLeftPressed) selection = "credits";
		if (keyRightPressed) selection = "back";
		
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
			fade.targetRoom = rm_MaykrTitle;
			select = false;
		}
		break;
		#endregion
		
		#region Doomsday
		case "doomsday":
		if (keyUpPressed) selection = "gambleMaykr";
		if (keyDownPressed) selection = "gambleMaykr";
		if (keyLeftPressed) selection = "asteroidFields";
		if (keyRightPressed) selection = "greenGreens";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed))
			{
				if (doomsdayActive)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					select = true;
				}
				else
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
				}
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_DoomsdayArena;
			select = false;
		}
		break;
		#endregion
		
		#region Options
		case "options":
		if (keyUpPressed) selection = "asteroidFields";
		if (keyDownPressed) selection = "asteroidFields";
		if (keyLeftPressed) selection = "back";
		if (keyRightPressed) selection = "discord";
		
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
			fade.targetRoom = rm_Options;
			select = false;
		}
		break;
		#endregion
		
		#region Discord
		case "discord":
		if (keyUpPressed) selection = "asteroidFields";
		if (keyDownPressed) selection = "asteroidFields";
		if (keyLeftPressed) selection = "options";
		if (keyRightPressed) selection = "gamejolt";
		
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
			url_open("https://discord.gg/qgxUPqv");
			select = false;
		}
		break;
		#endregion
		
		#region Gamejolt
		case "gamejolt":
		if (keyUpPressed) selection = "asteroidFields";
		if (keyDownPressed) selection = "asteroidFields";
		if (keyLeftPressed) selection = "discord";
		if (keyRightPressed) selection = "credits";
		
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
			url_open("https://gamejolt.com/games/kggs/182733");
			select = false;
		}
		break;
		#endregion
		
		#region Credits
		case "credits":
		if (keyUpPressed) selection = "asteroidFields";
		if (keyDownPressed) selection = "asteroidFields";
		if (keyLeftPressed) selection = "gamejolt";
		if (keyRightPressed) selection = "gambleMaykr";
		
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
			fade.targetRoom = rm_Credits;
			select = false;
		}
		break;
		#endregion
		
		#region Back
		case "back":
		if (keyUpPressed) selection = "greenGreens";
		if (keyDownPressed) selection = "greenGreens";
		if (keyLeftPressed) selection = "gambleMaykr";
		if (keyRightPressed) selection = "options";
		
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
			fade.targetRoom = rm_Title;
			fade.alphaSpd = .02;
			select = false;
		}
		break;
		#endregion
	}
}