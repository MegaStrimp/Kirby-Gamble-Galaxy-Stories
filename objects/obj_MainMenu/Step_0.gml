///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Buttons
	
	if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (keyboard_check_pressed(keyLeft)) or (keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd)) or (gamepad_button_check_pressed(0,gp_padl)) or (gamepad_button_check_pressed(0,gp_padr))) audio_play_sound(snd_BossHealth,0,false);
	
	if (!instance_exists(obj_Fade))
	{
		if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
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
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "collection";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd)))
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
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
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
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
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
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "storyMode";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "discord";if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
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
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
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
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd)))
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
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "storyMode";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "options";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd)))
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
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "collection";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "storyMode";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "collection";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd)))
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
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "storyMode";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
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
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Maykr;
			select = false;
		}
		break;
		
		case "skylands":
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd)))
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
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "storyMode";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
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
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "collection";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "storyMode";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
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
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			//var fade = instance_create_depth(x,y,-999,obj_Fade);
			//fade.targetRoom = rm_Setup;
			select = false;
		}
		break;
		
		case "bitcrushed":
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "options";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd)))
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
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
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
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "storyMode";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "options";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
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
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "storyMode";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "collection";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "deleteSave";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "gamejolt";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		
		case "gamejolt":
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "storyMode";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "discord";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "credits";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		
		case "credits":
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "storyMode";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "gamejolt";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "deleteSave";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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
		
		case "deleteSave":
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
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
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "storyMode";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "credits";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "discord";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
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