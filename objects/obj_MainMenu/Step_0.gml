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
		case "storyMode":
		if (keyUpPressed) selection = "collection";
		if (keyDownPressed)
		{
			if (global.extraModeUnlocked)
			{
				selection = "extraMode";
			}
			else
			{
				selection = "discord";
			}
		}
		if (keyLeftPressed)
		{
			if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else
			{
				selection = "options";
			}
		}
		if (keyRightPressed)
		{
			if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else
			{
				selection = "collection";
			}
		}
		
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
			fade.targetRoom = rm_Starcutter;
			select = false;
		}
		break;
		
		case "extraMode":
		if (keyUpPressed) selection = "storyMode";
		if (keyDownPressed) selection = "discord";
		if (keyLeftPressed)
		{
			if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else
			{
				selection = "storyMode";
			}
		}
		if (keyRightPressed)
		{
			if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else
			{
				selection = "storyMode";
			}
		}
		
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
			//var fade = instance_create_depth(x,y,-999,obj_Fade);
			//fade.targetRoom = rm_StageSelect;
			select = false;
		}
		break;
		
		case "collection":
		if (keyUpPressed)
		{
			if (global.gamblionUnlocked)
			{
				selection = "gamblion";
			}
			else if (global.skylandsUnlocked)
			{
				selection = "skylands";
			}
			else if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else
			{
				selection = "collection";
			}
		}
		if (keyDownPressed)
		{
			if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else if (global.skylandsUnlocked)
			{
				selection = "skylands";
			}
			else if (global.gamblionUnlocked)
			{
				selection = "gamblion";
			}
			else
			{
				selection = "collection";
			}
		}
		if (keyLeftPressed) selection = "storyMode";
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
			fade.targetRoom = rm_Collection;
			select = false;
		}
		break;
		
		case "options":
		if (keyUpPressed)
		{
			if (global.samuraiKirbyUnlocked)
			{
				selection = "samuraiKirby";
			}
			else if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else
			{
				selection = "options";
			}
		}
		if (keyDownPressed)
		{
			if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else if (global.samuraiKirbyUnlocked)
			{
				selection = "samuraiKirby";
			}
			else
			{
				selection = "options";
			}
		}
		if (keyLeftPressed) selection = "collection";
		if (keyRightPressed) selection = "storyMode";
		
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
		
		case "maykr":
		if (keyUpPressed) selection = "collection";
		if (keyDownPressed)
		{
			if (global.skylandsUnlocked)
			{
				selection = "skylands";
			}
			else if (global.gamblionUnlocked)
			{
				selection = "gamblion";
			}
			else
			{
				selection = "collection";
			}
		}
		if (keyLeftPressed) selection = "storyMode";
		if (keyRightPressed)
		{
			if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else
			{
				selection = "storyMode";
			}
		}
		
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
		
		case "skylands":
		if (keyUpPressed)
		{
			if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else
			{
				selection = "collection";
			}
		}
		if (keyDownPressed)
		{
			if (global.gamblionUnlocked)
			{
				selection = "gamblion";
			}
			else
			{
				selection = "collection";
			}
		}
		if (keyLeftPressed) selection = "storyMode";
		if (keyRightPressed)
		{
			if (global.samuraiKirbyUnlocked)
			{
				selection = "samuraiKirby";
			}
			else if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else
			{
				selection = "storyMode";
			}
		}
		
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
			//var fade = instance_create_depth(x,y,-999,obj_Fade);
			//fade.targetRoom = rm_Skylands_Sky1;
			select = false;
		}
		break;
		
		case "gamblion":
		if (keyUpPressed)
		{
			if (global.skylandsUnlocked)
			{
				selection = "skylands";
			}
			else if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else
			{
				selection = "collection";
			}
		}
		if (keyDownPressed) selection = "collection";
		if (keyLeftPressed) selection = "storyMode";
		if (keyRightPressed)
		{
			if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else
			{
				selection = "storyMode";
			}
		}
		
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
			fade.targetRoom = rm_GamblionTitle;
			select = false;
		}
		break;
		
		case "bitcrushed":
		if (keyUpPressed) selection = "options";
		if (keyDownPressed)
		{
			if (global.samuraiKirbyUnlocked)
			{
				selection = "samuraiKirby";
			}
			else
			{
				selection = "options";
			}
		}
		if (keyLeftPressed)
		{
			if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else
			{
				selection = "storyMode";
			}
		}
		if (keyRightPressed) selection = "storyMode";
		
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
			//var fade = instance_create_depth(x,y,-999,obj_Fade);
			//fade.targetRoom = rm_StageSelect;
			select = false;
		}
		break;
		
		case "samuraiKirby":
		if (keyUpPressed)
		{
			if (global.bitcrushedUnlocked)
			{
				selection = "bitcrushed";
			}
			else
			{
				selection = "options";
			}
		}
		if (keyDownPressed) selection = "options";
		if (keyLeftPressed)
		{
			if (global.skylandsUnlocked)
			{
				selection = "skylands";
			}
			else if (global.maykrUnlocked)
			{
				selection = "maykr";
			}
			else
			{
				selection = "storyMode";
			}
		}
		if (keyRightPressed) selection = "storyMode";
		
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
			fade.targetRoom = rm_SamuraiKirby_Game;
			select = false;
		}
		break;
		
		case "discord":
		if (keyUpPressed)
		{
			if (global.extraModeUnlocked)
			{
				selection = "extraMode";
			}
			else
			{
				selection = "storyMode";
			}
		}
		if (keyDownPressed) selection = "collection";
		if (keyLeftPressed) selection = "deleteSave";
		if (keyRightPressed) selection = "keycards";
		
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
		
		case "keycards":
		if (keyUpPressed)
		{
			if (global.extraModeUnlocked)
			{
				selection = "extraMode";
			}
			else
			{
				selection = "storyMode";
			}
		}
		if (keyDownPressed) selection = "storyMode";
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
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_KeycardMenu;
			select = false;
		}
		break;
		
		case "credits":
		if (keyUpPressed)
		{
			if (global.extraModeUnlocked)
			{
				selection = "extraMode";
			}
			else
			{
				selection = "storyMode";
			}
		}
		if (keyDownPressed) selection = "storyMode";
		if (keyLeftPressed) selection = "keycards";
		if (keyRightPressed) selection = "deleteSave";
		
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
		
		case "deleteSave":
		if (keyUpPressed)
		{
			if (global.extraModeUnlocked)
			{
				selection = "extraMode";
			}
			else
			{
				selection = "storyMode";
			}
		}
		if (keyDownPressed) selection = "storyMode";
		if (keyLeftPressed) selection = "credits";
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
			fade.targetRoom = rm_DeleteSave;
			select = false;
		}
		break;
	}
}