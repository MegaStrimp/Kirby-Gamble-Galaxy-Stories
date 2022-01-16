///@description Main

if (!global.pause)
{
	//States
	
	switch (state)
	{
		case "saveSlot":
		mask_index = sprite_index;
		if (instance_exists(obj_Title))
		{
			if ((!instance_exists(obj_Fade)) and (mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
			{
				if (obj_Title.selectedFile == number)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					obj_Title.select = true;
				}
				else
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					obj_Title.selectedFile = number;
				}
			}
		}
		break;
		
		case "mainMenu":
		mask_index = sprite_index;
		if (instance_exists(obj_MainMenu))
		{
			if ((!instance_exists(obj_Fade)) and (mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
			{
				if (obj_MainMenu.selection == index)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					obj_MainMenu.select = true;
				}
				else
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					obj_MainMenu.selection = index;
				}
			}
		}
		break;
		
		case "options":
		mask_index = sprite_index;
		if (instance_exists(obj_OptionsMenu))
		{
			if ((!instance_exists(obj_Fade)) and (mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
			{
				switch (index)
				{
					case "music":
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					var selected = 1;
					global.musicVolume = .1 * number;
					break;
					
					case "sound":
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					var selected = 1;
					global.soundVolume = .1 * number;
					break;
					
					default:
					if (obj_OptionsMenu.selection == number)
					{
						if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
						audio_play_sound(snd_BossHealth,0,false);
						obj_OptionsMenu.select = true;
					}
					else
					{
						if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
						audio_play_sound(snd_BossHealth,0,false);
						obj_OptionsMenu.selection = number;
					}
					break;
				}
			}
		}
		break;
		
		case "deleteSave":
		mask_index = sprite_index;
		x = lerp(x,(room_width / 2) - 31,.05);
		if (instance_exists(obj_DeleteSave))
		{
			if ((mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
			{
				if (obj_DeleteSave.selection == number)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					obj_DeleteSave.select = true;
				}
				else
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					obj_DeleteSave.selection = number;
				}
			}
		}
		break;
		
		case "collection":
		mask_index = sprite_index;
		if (instance_exists(obj_CollectionMenu))
		{
			if ((!instance_exists(obj_Fade)) and (mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
			{
				if (obj_CollectionMenu.selection == index)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					obj_CollectionMenu.select = true;
				}
				else
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					obj_CollectionMenu.selection = index;
				}
			}
		}
		break;
		
		case "cheats":
		mask_index = sprite_index;
		if (instance_exists(obj_CheatsMenu))
		{
			if ((!instance_exists(obj_Fade)) and (mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
			{
				if (obj_CheatsMenu.selection == number)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					obj_CheatsMenu.select = true;
				}
				else
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					obj_CheatsMenu.selection = number;
				}
			}
		}
		break;
		
		case "upgrades":
		mask_index = spr_Menu_Upgrades_Box;
		if (instance_exists(obj_UpgradesMenu))
		{
			if ((mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
			{
				if (obj_UpgradesMenu.selection == number)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					obj_UpgradesMenu.select = true;
				}
				else
				{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					obj_UpgradesMenu.selection = number;
				}
			}
		}
		break;
		
		case "maykrTitle":
		mask_index = sprite_index;
		if (instance_exists(obj_Maykr_Title))
		{
			if ((!instance_exists(obj_Fade)) and (mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
			{
				if (obj_Maykr_Title.selection == index)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					obj_Maykr_Title.select = true;
				}
				else
				{
					imageIndex = 0;
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
					audio_play_sound(snd_BossHealth,0,false);
					obj_Maykr_Title.selection = index;
				}
			}
			
			switch (index)
			{
				case 0:
				case 2:
				x = 147 - ((1 - obj_Maykr_Title.buttonLerp) * 305);
				break;
				
				case 1:
				x = 333 + ((1 - obj_Maykr_Title.buttonLerp) * 305)
				break;
			}
		}
		break;
		
		case "back":
		if ((!instance_exists(obj_Fade)) and (mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x,mouse_y,self)))
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			owner.goBack = true;
		}
		break;
	}
}