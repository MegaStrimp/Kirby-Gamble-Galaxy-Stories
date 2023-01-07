///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	#region Gradient Alpha
	gradientAlpha += .005 * gradientAlphaDir;
	if (gradientAlpha <= .5)
	{
		gradientAlpha = .5;
		gradientAlphaDir = 1;
	}
	
	if (gradientAlpha >= 1)
	{
		gradientAlpha = 1;
		gradientAlphaDir = -1;
	}
	#endregion
	
	switch (page)
	{
		case 0:
		if (canBeInteracted)
		{
			//Variables
			
			cameraY = lerp(cameraY,210 * (introState > 3),.002);
			blackAlphaVal = lerp(blackAlphaVal,!(introState > 1),.02);
			y = ystart + cameraY;
			
			//Shine Movement
			
			if (shineTimer == -1) xx += hsp;
			if (xx >= (sprite_get_width(sprite_index) * (4 * image_xscale)))
			{
				xx -= (sprite_get_width(sprite_index) * (4 * image_xscale));
				shineTimer = shineTimerMax;
			}
			
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
					io_clear();
					if (audio_is_playing(snd_Konami)) audio_stop_sound(snd_Konami);
					audio_play_sound(snd_Konami,0,false);
					codeState = 0;
				}
				break;
			}
			
			//Go To Save Page
			
			if ((keyStartPressed) and (!audio_is_playing(snd_Konami)))
			{
				codeState = 0;
				
				var demo = false;
				//demo = true;
				if (demo)
				{
					if (!instance_exists(obj_Fade))
					{
						if (audio_is_playing(snd_Enter)) audio_stop_sound(snd_Enter);
						audio_play_sound(snd_Enter,0,false);
						if ((!global.debug) and (global.canSave)) scr_LoadGame(global.selectedSave);
						var fade = instance_create_depth(x,y,-999,obj_Fade);
						fade.targetRoom = rm_StageSelect_Demo;
						fade.alpha = 1;
						fade.state = 1;
					}
				}
				else
				{
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
			}
		}
		
		#region Shine Timer
		if (shineTimer > 0)
		{
			shineTimer -= 1;
		}
		else if (shineTimer == 0)
		{
			shineTimer = -1;
		}
		#endregion
		
		#region Intro State Timer
		if (introStateTimer > 0)
		{
			introStateTimer -= 1;
		}
		else if (introStateTimer == 0)
		{
			switch (introState)
			{
				case 0:
				//Create The Star
				if (audio_is_playing(snd_TitleStar)) audio_stop_sound(snd_TitleStar);
				audio_play_sound(snd_TitleStar,0,false);
				var par = instance_create_depth(-50,135,-999,obj_Particle);
				par.sprite_index = spr_TitleStar;
				if (global.season == seasons.halloween) par.sprite_index = spr_TitleStar_Halloween;
				par.hsp = 8;
				par.scale = 1.5;
				par.hasAfterimage = true;
				par.destroyTimer = 210;
				introStateTimer = 180;
				break;
				
				case 1:
				//Stop Alpha Box
				introStateTimer = 0;
				break;
				
				case 2:
				//Title Appears With Music - Interactable
				if (!audio_is_playing(mus_TitleDemo))
				{
					audio_stop_all();
					scr_PlayMusic(true,false,mus_TitleDemo,0,true);
				}
				canBeInteracted = true;
				introStateTimer = 60;
				break;
				
				case 3:
				//Move To The Moon
				introStateTimer = -1;
				break;
			}
			introState += 1;
		}
		#endregion
		
		//End The Game
		
		if (keyboard_check_pressed(vk_escape)) game_end();
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