///@description Main

if (!global.pause)
{
	var cancelAutoScroll = true;
	
	hudOffset = lerp(hudOffset,0,.1);
	
	scr_Player_Inputs(0);
	
	if (!instance_exists(obj_Fade))
	{
		if (!menuIndex)
		{
			if ((!artworkZoom) and (artworkZoomAlpha < .05))
			{
				switch (page)
				{
					case 0:
					if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed))
					{
						if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
						audio_play_sound(snd_BossHealth,0,false);
					}
		
					switch (selection)
					{
						case "vol1":
						if (keyUpPressed) selection = "volS";
						//if (keyDownPressed) selection = "vol2";
						if (keyDownPressed) selection = "volS";
						if (keyLeftPressed) selection = "back";
						if (keyRightPressed) selection = "back";
			
						if ((keyJumpPressed) or (keyStartPressed))
						{
							if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
							audio_play_sound(snd_ButtonYes,0,false);
							select = true;
						}
			
						if (select)
						{
							selectedVol = selection;
							selection = "artwork";
							bgSprite = spr_Menu_Gallery_Bg_Green;
							scr_Gallery_Artwork_Vol1();
							page = 1;
							select = false;
						}
						break;
			
						case "vol2":
						if (keyUpPressed) selection = "vol1";
						if (keyDownPressed) selection = "vol3";
						if (keyLeftPressed) selection = "back";
						if (keyRightPressed) selection = "back";
			
						if ((keyJumpPressed) or (keyStartPressed))
						{
							if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
							audio_play_sound(snd_ButtonYes,0,false);
							select = true;
						}
			
						if (select)
						{
							selectedVol = selection;
							selection = "artwork";
							bgSprite = spr_Menu_Gallery_Bg_Green;
							scr_Gallery_Artwork_Vol1();
							page = 1;
							select = false;
						}
						break;
			
						case "vol3":
						if (keyUpPressed) selection = "vol2";
						if (keyDownPressed) selection = "volS";
						if (keyLeftPressed) selection = "back";
						if (keyRightPressed) selection = "back";
			
						if ((keyJumpPressed) or (keyStartPressed))
						{
							if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
							audio_play_sound(snd_ButtonYes,0,false);
							select = true;
						}
			
						if (select)
						{
							selectedVol = selection;
							selection = "artwork";
							bgSprite = spr_Menu_Gallery_Bg_Green;
							scr_Gallery_Artwork_Vol1();
							page = 1;
							select = false;
						}
						break;
			
						case "volS":
						//if (keyUpPressed) selection = "vol3";
						if (keyUpPressed) selection = "vol1";
						if (keyDownPressed) selection = "vol1";
						if (keyLeftPressed) selection = "back";
						if (keyRightPressed) selection = "back";
			
						if ((keyJumpPressed) or (keyStartPressed))
						{
							if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
							audio_play_sound(snd_ButtonYes,0,false);
							select = true;
						}
			
						if (select)
						{
							selectedVol = selection;
							selection = "artwork";
							bgSprite = spr_Menu_Gallery_Bg_Yellow;
							scr_Gallery_Artwork_VolS();
							page = 1;
							select = false;
						}
						break;
			
						case "back":
						if (keyUpPressed) selection = "back";
						if (keyDownPressed) selection = "back";
						if (keyLeftPressed) selection = "vol1";
						if (keyRightPressed) selection = "vol1";
			
						if ((keyJumpPressed) or (keyStartPressed))
						{
							if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
							audio_play_sound(snd_ButtonNo,0,false);
							select = true;
						}
			
						if (select)
						{
							var fade = instance_create_depth(x,y,-999,obj_Fade);
							fade.targetRoom = rm_Collection;
							page = 1;
							select = false;
						}
						break;
					}
		
					if (keyAttackPressed)
					{
						if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
						audio_play_sound(snd_ButtonNo,0,false);
						goBack = true;
					}
		
					if (goBack)
					{
						var fade = instance_create_depth(x,y,-999,obj_Fade);
						fade.targetRoom = rm_Collection;
						goBack = false;
					}
					break;
			
					case 1:
					switch (selection)
					{
						case "artwork":
						if ((keyUpPressed) or (keyDownPressed))
						{
							if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
							audio_play_sound(snd_BossHealth,0,false);
						}
						
						if (keyUpPressed) selection = "download";
						if (keyDownPressed) selection = "download";
						if (((keyLeftPressed) or ((autoScrollTick) and (keyLeftHold))) and (artworkSelection != 0))
						{
							if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
							audio_play_sound(snd_ButtonChange,0,false);
							artworkSelection -= 1;
							canAutoScrollTimer = canAutoScrollTimerMax;
						}
						if (((keyRightPressed) or ((autoScrollTick) and (keyRightHold))) and (artworkSelection < artworkMax - 1))
						{
							if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
							audio_play_sound(snd_ButtonChange,0,false);
							artworkSelection += 1;
							canAutoScrollTimer = canAutoScrollTimerMax;
						}
			
						if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
						{
							if (artworkArray[# artworkSelection,3])
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
			
						if (select)
						{
							artworkZoom = true;
							select = false;
						}
						
						cancelAutoScroll = !(((keyLeftHold) or (keyRightHold)) and !((keyLeftHold) and (keyRightHold)));
						break;
			
						case "download":
						if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed))
						{
							if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
							audio_play_sound(snd_BossHealth,0,false);
						}
				
						if (keyUpPressed) selection = "artwork";
						if (keyDownPressed) selection = "artwork";
						if (keyLeftPressed) selection = "back";
						if (keyRightPressed) selection = "back";
			
						if ((keyJumpPressed) or (keyStartPressed))
						{
							if (artworkArray[# artworkSelection,3])
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
			
						if (select)
						{
							var fileName = get_save_filename("artwork|*.png", artworkArray[# artworkSelection,1]);
							var sprCustom = sprite_duplicate(artworkArray[# artworkSelection,0]);
							sprite_save(sprCustom,0,fileName);
							sprite_delete(sprCustom);
							select = false;
						}
						break;
			
						case "back":
						if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed))
						{
							if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
							audio_play_sound(snd_BossHealth,0,false);
						}
				
						if (keyUpPressed) selection = "artwork";
						if (keyDownPressed) selection = "artwork";
						if (keyLeftPressed) selection = "download";
						if (keyRightPressed) selection = "download";
			
						if ((keyJumpPressed) or (keyStartPressed))
						{
							if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
							audio_play_sound(snd_ButtonNo,0,false);
							select = true;
						}
			
						if (select)
						{
							artworkX = 240;
							artworkSelection = 0;
							selection = selectedVol;
							page = 0;
							select = false;
						}
						break;
					}
			
					if ((selection != "artwork") and (mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190))))
					{
					if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
						audio_play_sound(snd_BossHealth,0,false);
						selection = "artwork";
					}
			
					if (keyAttackPressed)
					{
						if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
						audio_play_sound(snd_ButtonNo,0,false);
						goBack = true;
					}
			
					if (goBack)
					{
						artworkX = 240;
						artworkSelection = 0;
						selection = selectedVol;
						page = 0;
						goBack = false;
					}
					break;
				}
			}
			else
			{
				if (keyAttackPressed)
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
					artworkZoom = false;
				}
			}
		}
		
		#region Cancel Auto Scroll
		if (cancelAutoScroll)
		{
			autoScroll = false;
			canAutoScrollTimer = -1;
			autoScrollTimer = -1;
		}
		
		autoScrollTick = false;
		#endregion
		
		#region Can Auto Scroll Timer
		if (canAutoScrollTimer > 0)
		{
			canAutoScrollTimer -= 1;
		}
		else if (canAutoScrollTimer == 0)
		{
			autoScroll = true;
			autoScrollTimer = 0;
			canAutoScrollTimer = -1;
		}
		#endregion
		
		if (autoScroll)
		{
			#region Auto Scroll Timer
			if (autoScrollTimer > 0)
			{
				autoScrollTimer -= 1;
			}
			else if (autoScrollTimer == 0)
			{
				autoScrollTick = true;
				autoScrollTimer = autoScrollTimerMax;
			}
			#endregion
		}
	}
	
	//Curtain Animation
	
	var curtainSpd = sprite_get_speed(spr_Menu_Gallery_Curtain) / 60;
	if (page == 0)
	{
		curtainIndex -= curtainSpd;
		if (curtainIndex < 0) curtainIndex = 0;
	}
	else
	{
		curtainIndex += curtainSpd;
		if (curtainIndex > 2) curtainIndex = 2;
	}
}