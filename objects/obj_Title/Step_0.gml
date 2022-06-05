///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	switch (page)
	{
		case 0:
		//Shine Movement
	
		xx += hsp;
		if (xx >= (sprite_get_width(sprite_index) * (4 * image_xscale))) xx -= (sprite_get_width(sprite_index) * (4 * image_xscale));
		
		//Konami Code
		
		switch (codeState)
		{
			case 0:
			if ((keyUpPressed) or (keyboard_check_pressed(vk_up)))
			{
				codeState += 1;
			}
			break;
			
			case 1:
			if ((keyUpPressed) or (keyboard_check_pressed(vk_up)))
			{
				codeState += 1;
			}
			break;
			
			case 2:
			if ((keyDownPressed) or (keyboard_check_pressed(vk_down)))
			{
				codeState += 1;
			}
			break;
			
			case 3:
			if ((keyDownPressed) or (keyboard_check_pressed(vk_down)))
			{
				codeState += 1;
			}
			break;
			
			case 4:
			if ((keyLeftPressed) or (keyboard_check_pressed(vk_left)))
			{
				codeState += 1;
			}
			break;
			
			case 5:
			if ((keyRightPressed) or (keyboard_check_pressed(vk_right)))
			{
				codeState += 1;
			}
			break;
			
			case 6:
			if ((keyLeftPressed) or (keyboard_check_pressed(vk_left)))
			{
				codeState += 1;
			}
			break;
			
			case 7:
			if ((keyRightPressed) or (keyboard_check_pressed(vk_right)))
			{
				codeState += 1;
			}
			break;
			
			case 8:
			if ((keyAttackPressed) or (keyboard_check_pressed(ord("B"))))
			{
				codeState += 1;
			}
			break;
			
			case 9:
			if ((keyJumpPressed) or (keyboard_check_pressed(ord("A"))))
			{
				codeState += 1;
			}
			break;
			
			case 10:
			if (keyStartPressed)
			{
				if (audio_is_playing(snd_Konami)) audio_stop_sound(snd_Konami);
				audio_play_sound(snd_Konami,0,false);
				codeState = 0;
			}
			break;
		}
		
		//Go To Save Page
		
		if (keyStartPressed)
		{
			codeState = 0;
			page = 1;
			var button = instance_create_depth(4,4,depth,obj_Menu_Button);
			button.owner = id;
			button.sprite_index = spr_Menu_Saves_Box;
			button.state = "saveSlot";
			button.number = 0;
			var button = instance_create_depth(185,58,depth,obj_Menu_Button);
			button.owner = id;
			button.sprite_index = spr_Menu_Saves_Box;
			button.state = "saveSlot";
			button.number = 1;
			var button = instance_create_depth(366,4,depth,obj_Menu_Button);
			button.owner = id;
			button.sprite_index = spr_Menu_Saves_Box;
			button.state = "saveSlot";
			button.number = 2;
		}
		
		//End The Game
		
		if ((keyAttackPressed) or (keyboard_check_pressed(vk_escape))) game_end();
		break;
		
		case 1:
		//Page
		
		if (keyLeftPressed)
		{
			audio_play_sound(snd_Select,0,false);
			selectedFile -= 1;
		}
		if (keyRightPressed)
		{
			audio_play_sound(snd_Select,0,false);
			selectedFile += 1;
		}
		
		if (selectedFile < 0)
		{
			selectedFile = 2;
		}
		if (selectedFile > 2)
		{
			selectedFile = 0;
		}
		
		//Go To Main Menu
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (!instance_exists(obj_Fade))
			{
				if (audio_is_playing(snd_Enter)) audio_stop_sound(snd_Enter);
				audio_play_sound(snd_Enter,0,false);
				select = true;
			}
		}
		
		if (select)
		{
			switch (selectedFile)
			{
				case 0:
				global.selectedSave = "Save1.ini";
				break;
					
				case 1:
				global.selectedSave = "Save2.ini";
				break;
					
				case 2:
				global.selectedSave = "Save3.ini";
				break;
			}
			if ((!global.debug) and (global.canSave)) scr_LoadGame(global.selectedSave);
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_MainMenu;
			fade.alpha = 1;
			fade.state = 1;
			select = false;
		}
		
		//Go To Title Page
		
		if (keyAttackPressed)
		{
			with (obj_Menu_Button) if (state == "saveSlot") instance_destroy();
			page = 0;
		}
		break;
	}
}