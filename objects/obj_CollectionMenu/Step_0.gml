///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (keyboard_check_pressed(keyLeft)) or (keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd)) or (gamepad_button_check_pressed(0,gp_padl)) or (gamepad_button_check_pressed(0,gp_padr))) audio_play_sound(snd_BossHealth,0,false);
	
	switch (selection)
	{
		case "bestiary":
		if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "upgrades";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "cheats";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "customize";
		
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
			fade.targetRoom = rm_Bestiary;
			select = false;
		}
		break;
		
		case "customize":
		if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "trophies";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "bestiary";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "stages";
		
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
			fade.targetRoom = rm_Customize;
			select = false;
		}
		break;
		
		case "stages":
		if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "soundTest";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "customize";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "cheats";
		
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
			fade.targetRoom = rm_Stages;
			select = false;
		}
		break;
		
		case "cheats":
		if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "gallery";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "stages";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "bestiary";
		
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
			fade.targetRoom = rm_Cheats;
			select = false;
		}
		break;
		
		case "upgrades":
		if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "bestiary";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "gallery";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "trophies";
		
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
			fade.targetRoom = rm_Upgrades;
			select = false;
		}
		break;
		
		case "trophies":
		if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "customize";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "upgrades";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "soundTest";
		
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
			fade.targetRoom = rm_Trophies;
			select = false;
		}
		break;
		
		case "soundTest":
		if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "stages";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "trophies";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "gallery";
		
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
			fade.targetRoom = rm_SoundTest;
			select = false;
		}
		break;
		
		case "gallery":
		if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "cheats";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "soundTest";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "upgrades";
		
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
			fade.targetRoom = rm_Gallery;
			select = false;
		}
		break;
	}
	
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
		fade.targetRoom = rm_MainMenu;
		goBack = false;
	}
}