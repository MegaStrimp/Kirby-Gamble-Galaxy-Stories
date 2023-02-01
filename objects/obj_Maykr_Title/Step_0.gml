///@description Main

if (!global.pause)
{
	#region Variables
	scr_Player_Inputs(0);
	startLerp = lerp(startLerp,1,.01);
	if (startLerp >= .85) startTrigger = 1;
	if (startTrigger >= 1) buttonLerp = lerp(buttonLerp,1,.05);
	if (buttonLerp >= .5) startTrigger = 2;
	#endregion
	
	#region Stars Alpha
	starsAlpha += .005 * starsAlphaDir;
	if (starsAlpha <= .5)
	{
		starsAlpha = .5;
		starsAlphaDir = 1;
	}
	
	if (starsAlpha >= 1)
	{
		starsAlpha = 1;
		starsAlphaDir = -1;
	}
	#endregion
	
	switch (windowIndex)
	{
		case -1:
		#region Selection
		if ((startTrigger == 2) and (!instance_exists(obj_Fade)))
		{
			if (keyUpPressed)
			{
				audio_play_sound(snd_BossHealth,0,false);
				selection -= 1;
				with (obj_Menu_Button) imageIndex = 0;
			}
			if (keyDownPressed)
			{
				audio_play_sound(snd_BossHealth,0,false);
				selection += 1;
				with (obj_Menu_Button) imageIndex = 0;
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
		
		if ((startTrigger == 2) and (!instance_exists(obj_Fade)) and ((keyJumpPressed) or (keyStartPressed))) select = true;
		
		if (select)
		{
			switch (selection)
			{
				case 0:
				if (global.loadedMaykrFile == -1) global.loadedMaykrFile = get_open_filename(working_directory + "maykr file|*.maykr","");
				if (global.loadedMaykrFile == "") global.loadedMaykrFile = -1;
				if (global.loadedMaykrFile != -1)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					var fade = instance_create_depth(x,y,-999,obj_Fade);
					fade.targetRoom = global.maykrCanvas;
				}
				break;
				
				case 1:
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				scr_Maykr_WindowReset();
				
				windowIndex = maykrWindows.canvasSetup;
				break;
				
				case 2:
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				var demo = false;
				//demo = true;
				if (demo)
				{
					fade.targetRoom = rm_StageSelect_Demo;
				}
				else
				{
					fade.targetRoom = rm_MainMenu;
				}
				break;
			}
			select = false;
		}
		#endregion
		break;
		
		case maykrWindows.canvasSetup:
		if (!instance_exists(obj_Fade))
		{
			if (keyRightPressed)
			{
				windowSelection += 1;
			}
			if (keyLeftPressed)
			{
				windowSelection -= 1;
			}
			
			if (windowSelection < 0) windowSelection += 14;
			if (windowSelection > 13) windowSelection -= 14;
			
			if (((windowSelection == 0) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,126,57,147,78)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 0;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomWidth += 1;
			}
			
			if (((windowSelection == 1) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,149,57,170,78)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 1;
				if (maykrRoomWidth > 20)
				{
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					maykrRoomWidth -= 1;
				}
				else
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
				}
			}
			
			if (((windowSelection == 2) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,126,107,147,128)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 2;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomHeight += 1;
			}
			
			if (((windowSelection == 3) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,149,107,170,128)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 3;
				if (maykrRoomHeight > 12)
				{
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					maykrRoomHeight -= 1;
				}
				else
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
				}
			}
			
			if (((windowSelection == 4) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,189,54,223,88)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 4;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomWidth = 20;
				maykrRoomHeight = 14;
			}
			
			if (((windowSelection == 5) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,227,54,261,88)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 5;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomWidth = 50;
				maykrRoomHeight = 50;
			}
			
			if (((windowSelection == 6) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,265,54,299,88)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 6;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomWidth = 100;
				maykrRoomHeight = 100;
			}
			
			if (((windowSelection == 7) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,303,54,337,88)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 7;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomWidth = 250;
				maykrRoomHeight = 250;
			}
			
			if (((windowSelection == 8) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,341,54,375,88)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 8;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomWidth = 50;
				maykrRoomHeight = 200;
			}
			
			if (((windowSelection == 9) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,379,54,413,88)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 9;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomWidth = 200;
				maykrRoomHeight = 50;
			}
			
			if (((windowSelection == 10) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,417,54,451,88)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 10;
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				maykrRoomWidth = irandom_range(50,500);
				maykrRoomHeight = irandom_range(50,500);
			}
			
			if ((keyStartPressed) or ((windowSelection == 11) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,19,226,139,251)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 11;
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				var roomWidth = maykrRoomWidth * 24;
				var roomHeight = maykrRoomHeight * 24;
				scr_Maykr_CreateRoom(roomWidth,roomHeight);
				
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = global.maykrCanvas;
			}
			
			if (((windowSelection == 12) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,180,226,300,251)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 12;
				if (global.loadedMaykrFile == -1) global.loadedMaykrFile = get_open_filename(working_directory + "maykr file|*.maykr","");
				if (global.loadedMaykrFile == "") global.loadedMaykrFile = -1;
				if (global.loadedMaykrFile != -1)
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					var fade = instance_create_depth(x,y,-999,obj_Fade);
					fade.targetRoom = global.maykrCanvas;
				}
			}
			
			if ((keyAttackPressed) or ((windowSelection == 13) and (keyJumpPressed)) or ((point_in_rectangle(mouse_x,mouse_y,341,226,461,251)) and (mouse_check_button_pressed(mb_left))))
			{
				windowSelection = 13;
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				windowSelection = 0;
				windowIndex = -1;
			}
		}
		break;
	}
}