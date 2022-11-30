///@description Main

if (!global.pause)
{
	scr_Player_Inputs(0);
	
	switch (page)
	{
		case 0:
		if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed)) audio_play_sound(snd_BossHealth,0,false);
		
		switch (selection)
		{
			case "vol1":
			if (keyUpPressed) selection = "volS";
			if (keyDownPressed) selection = "vol2";
			if (keyLeftPressed) selection = "back";
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
				selectedVol = selection;
				selection = "artwork";
				bgSprite = spr_Menu_Gallery_Bg_Green;
				scr_Gallery_Artwork_Vol1();
				page = 1;
				select = false;
			}
			break;
			
			case "volS":
			if (keyUpPressed) selection = "vol3";
			if (keyDownPressed) selection = "vol1";
			if (keyLeftPressed) selection = "back";
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
		}
		
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
			fade.targetRoom = rm_Collection;
			goBack = false;
		}
		break;
		
		case 1:
		switch (selection)
		{
			case "artwork":
			if (keyUpPressed) selection = "download";
			if (keyDownPressed) selection = "download";
			if ((keyLeftPressed) and (artworkSelection != 0)) artworkSelection -= 1;
			if ((keyRightPressed) and (artworkSelection < artworkMax - 1)) artworkSelection += 1;
			
			if (!instance_exists(obj_Fade))
			{
				if ((keyJumpPressed) or (keyStartPressed))
				{
					/*if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
					audio_play_sound(snd_ButtonYes,0,false);
					select = true;*/
				}
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
