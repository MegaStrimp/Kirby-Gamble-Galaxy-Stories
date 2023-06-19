///@description Main

if (!global.pause)
{
	var cancelAutoScroll = true;
	
	hudOffset = lerp(hudOffset,0,.1);
	
	scr_Player_Inputs(0);
	
	if (!instance_exists(obj_Fade))
	{
		switch (selection)
		{
			#region Bestiary
			case "bestiary":
			if (((keyUpPressed) or ((autoScrollTick) and (keyUpHold))) and (bestiarySelection != 0))
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				if ((bestiarySelection == (page * 12)) and (page != 0))
				{
					page -= 1;
				}
				skinSelected = 0;
				colorSelected = 0;
				animSelected = 0;
				animIndex = 0;
				totalDescriptionPages = 1;
				bestiarySelection -= 1;
				if (!autoScroll) canAutoScrollTimer = canAutoScrollTimerMax;
			}
			if (((keyDownPressed) or ((autoScrollTick) and (keyDownHold))) and (bestiarySelection < bestiaryMax - 1))
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				if ((bestiarySelection == ((page + 1) * 12) - 1) and (page < pageMax))
				{
					page += 1;
				}
				skinSelected = 0;
				colorSelected = 0;
				animSelected = 0;
				animIndex = 0;
				totalDescriptionPages = 1;
				bestiarySelection += 1;
				if (!autoScroll) canAutoScrollTimer = canAutoScrollTimerMax;
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				if (bestiaryArray[# bestiarySelection,3])
				{
					if (bestiaryArray[# bestiarySelection,11] > 0) //Skin
					{
						selection = "skinBarUp";
					}
					else if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Color
					{
						selection = "colorBarUp";
					}
					else if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Anim
					{
						selection = "animBarUp";
					}
					else //None
					{
						selection = "back";
					}
				}
				else
				{
					selection = "back";
				}
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				if (bestiaryArray[# bestiarySelection,3])
				{
					if (bestiaryArray[# bestiarySelection,11] > 0) //Skin
					{
						selection = "skinBarUp";
					}
					else if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Color
					{
						selection = "colorBarUp";
					}
					else if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Anim
					{
						selection = "animBarUp";
					}
					else //None
					{
						selection = "back";
					}
				}
				else
				{
					selection = "back";
				}
			}
			
			if (!instance_exists(obj_Fade))
			{
				if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
				{
					if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					
					select = true;
				}
			}
			
			if (select)
			{
				if (bestiaryArray[# bestiarySelection,11] > 0) //Skin
				{
					selection = "skinBarUp";
				}
				else if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Color
				{
					selection = "colorBarUp";
				}
				else if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Anim
				{
					selection = "animBarUp";
				}
				else //None
				{
					selection = "back";
				}
				
				select = false;
			}
			
			cancelAutoScroll = !(((keyUpHold) or (keyDownHold)) and !((keyUpHold) and (keyDownHold)));
			break;
			#endregion
			
			#region Skin Bar Up
			case "skinBarUp":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				selection = "back";
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				selection = "skinBarDown";
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				select = true;
			}
			
			if (select)
			{
				colorSelected = 0;
				animSelected = 0;
				
				skinSelected += 1;
				if (skinSelected > bestiaryArray[# bestiarySelection,11]) skinSelected -= bestiaryArray[# bestiarySelection,11] + 1;
				
				select = false;
			}
			break;
			#endregion
			
			#region Skin Bar Down
			case "skinBarDown":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				selection = "skinBarUp";
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Color
				{
					selection = "colorBarUp";
				}
				else if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Anim
				{
					selection = "animBarUp";
				}
				else if (totalDescriptionPages != 1) //Description Arrow
				{
					selection = "descriptionArrowUp";
				}
				else //None
				{
					selection = "back";
				}
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				select = true;
			}
			
			if (select)
			{
				colorSelected = 0;
				animSelected = 0;
				
				skinSelected -= 1;
				if (skinSelected < 0) skinSelected += bestiaryArray[# bestiarySelection,11] + 1;
				
				select = false;
			}
			break;
			#endregion
			
			#region Color Bar Up
			case "colorBarUp":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				if (bestiaryArray[# bestiarySelection,11] > 0) //Skin
				{
					selection = "skinBarDown";
				}
				else //None
				{
					selection = "back";
				}
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				selection = "colorBarDown";
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				select = true;
			}
			
			if (select)
			{
				colorSelected += 1;
				if (colorSelected >= array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected])) colorSelected -= array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]);
				
				select = false;
			}
			break;
			#endregion
			
			#region Color Bar Down
			case "colorBarDown":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				selection = "colorBarUp";
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Anim
				{
					selection = "animBarUp";
				}
				else if (totalDescriptionPages != 1) //Description Arrow
				{
					selection = "descriptionArrowUp";
				}
				else //None
				{
					selection = "back";
				}
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				select = true;
			}
			
			if (select)
			{
				colorSelected -= 1;
				if (colorSelected < 0) colorSelected += array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]);
				
				select = false;
			}
			break;
			#endregion
			
			#region Anim Bar Up
			case "animBarUp":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Color
				{
					selection = "colorBarDown";
				}
				else if (bestiaryArray[# bestiarySelection,11] > 0) //Skin
				{
					selection = "skinBarDown";
				}
				else //None
				{
					selection = "back";
				}
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				selection = "animBarDown";
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				select = true;
			}
			
			if (select)
			{
				animSelected += 1;
				if (animSelected >= array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected])) animSelected -= array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]);
				
				select = false;
			}
			break;
			#endregion
			
			#region Anim Bar Down
			case "animBarDown":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				selection = "animBarUp";
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
				audio_play_sound(snd_ButtonChange,0,false);
				
				if (totalDescriptionPages != 1) //Description Arrow
				{
					selection = "descriptionArrowUp";
				}
				else //None
				{
					selection = "back";
				}
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				selection = "bestiary";
			}
			
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,149,38,331,190)))))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				
				select = true;
			}
			
			if (select)
			{
				animSelected -= 1;
				if (animSelected < 0) animSelected += array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]);
				
				select = false;
			}
			break;
			#endregion
			
			#region Description Arrow Up
			case "descriptionArrowUp":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Anim
				{
					selection = "animBarDown";
				}
				else if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Color
				{
					selection = "colorBarDown";
				}
				else if (bestiaryArray[# bestiarySelection,11] > 0) //Skin
				{
					selection = "skinBarDown";
				}
				else //None
				{
					selection = "back";
				}
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "descriptionArrowDown";
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "bestiary";
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
				descriptionPage += 1;
				if (descriptionPage >= totalDescriptionPages) descriptionPage = 0;
				select = false;
			}
			break;
			#endregion
			
			#region Description Arrow Down
			case "descriptionArrowDown":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "descriptionArrowUp";
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "back";
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "bestiary";
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
				descriptionPage -= 1;
				if (descriptionPage < 0) descriptionPage = totalDescriptionPages - 1;
				select = false;
			}
			break;
			#endregion
			
			#region Back
			case "back":
			if (keyUpPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				if (bestiaryArray[# bestiarySelection,3])
				{
					if (totalDescriptionPages != 1) //Description Arrow
					{
						selection = "descriptionArrowDown";
					}
					else if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Anim
					{
						selection = "animBarDown";
					}
					else if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Color
					{
						selection = "colorBarDown";
					}
					else if (bestiaryArray[# bestiarySelection,11] > 0) //Skin
					{
						selection = "skinBarDown";
					}
					else //None
					{
						selection = "back";
					}
				}
				else
				{
					selection = "back";
				}
			}
			if (keyDownPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				
				if (bestiaryArray[# bestiarySelection,3])
				{
					if (bestiaryArray[# bestiarySelection,11] > 0) //Skin
					{
						selection = "skinBarUp";
					}
					else if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Color
					{
						selection = "colorBarUp";
					}
					else if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1) //Anim
					{
						selection = "animBarUp";
					}
					else if (totalDescriptionPages != 1) //Description Arrow
					{
						selection = "descriptionArrowUp";
					}
					else //None
					{
						selection = "back";
					}
				}
				else
				{
					selection = "back";
				}
			}
			if (keyLeftPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "bestiary";
			}
			if (keyRightPressed)
			{
				if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
				audio_play_sound(snd_BossHealth,0,false);
				selection = "bestiary";
			}
			
			if (!instance_exists(obj_Fade))
			{
				if ((keyJumpPressed) or (keyStartPressed))
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
					select = true;
				}
			}
			
			if (select)
			{
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_Collection;
				page = 1;
				select = false;
			}
			break;
			#endregion
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
	
	#region Animate The Sprites
	var sprite = bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected][animSelected];
	
	animIndex += sprite_get_speed(sprite) / 60;
	if (animIndex >= sprite_get_number(sprite)) animIndex -= sprite_get_number(sprite);
	#endregion
}
