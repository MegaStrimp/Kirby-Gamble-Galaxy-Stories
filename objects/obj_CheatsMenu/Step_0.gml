///@description Main

if (!global.pause)
{
	#region Inputs
	scr_Player_Inputs(0);
	#endregion
	
	#region Sound
	if ((keyUpPressed) or (keyDownPressed)) audio_play_sound(snd_BossHealth,0,false);
	#endregion
	
	if ((selection != "cheats") and (mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,186,74,294,182))))
	{
		selection = "cheats";
	}
	
	switch (selection)
	{
		case "cheats":
		if (keyUpPressed) selection = "back";
		if (keyDownPressed) selection = "back";
		if ((keyLeftPressed) and (discSelection != 0))
		{
			if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
			audio_play_sound(snd_ButtonChange,0,false);
			discSelection -= 1;
		}
		if ((keyRightPressed) and (discSelection < cheatsMax - 1))
		{
			if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
			audio_play_sound(snd_ButtonChange,0,false);
			discSelection += 1;
		}
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyJumpPressed) or (keyStartPressed) or ((mouse_check_button_pressed(mb_left)) and ((point_in_rectangle(mouse_x,mouse_y,186,74,294,182)))))
			{
				if (cheatsArray[# discSelection,4])
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
		}
		
		if (select)
		{
			switch (cheatsArray[# discSelection,0])
			{
				case cheats.lifeless:
				global.cheatLifelessEquipped = !global.cheatLifelessEquipped;
				break;
				
				case cheats.starstorm:
				global.cheatStarstormEquipped = !global.cheatStarstormEquipped;
				break;
				
				case cheats.flipside:
				global.cheatFlipsideEquipped = !global.cheatFlipsideEquipped;
				break;
				
				case cheats.gamerBoy:
				global.cheatGamerBoyEquipped = !global.cheatGamerBoyEquipped;
				break;
				
				case cheats.eyeBleach:
				global.cheatEyeBleachEquipped = !global.cheatEyeBleachEquipped;
				break;
				
				case cheats.awaitingForTheNewMoon:
				global.cheatAwaitingForTheNewMoonEquipped = !global.cheatAwaitingForTheNewMoonEquipped;
				break;
				
				case cheats.gatherBattle:
				global.cheatGatherBattleEquipped = !global.cheatGatherBattleEquipped;
				break;
				
				case cheats.fashionable:
				global.cheatFashionableEquipped = !global.cheatFashionableEquipped;
				break;
				
				case cheats.strimpsDiner:
				global.cheatStrimpsDinerEquipped = !global.cheatStrimpsDinerEquipped;
				break;
				
				case cheats.coloredAbilities:
				global.cheatColoredAbilitiesEquipped = !global.cheatColoredAbilitiesEquipped;
				break;
			}
			cheatsArray[# discSelection,10] = !cheatsArray[# discSelection,10];
			select = false;
		}
		break;
		
		case "back":
		if (keyUpPressed) selection = "cheats";
		if (keyDownPressed) selection = "cheats";
		if (keyLeftPressed) selection = "back";
		if (keyRightPressed) selection = "back";
		
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
			if (global.canSave) scr_SaveGame(global.selectedSave);
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Collection;
			select = false;
		}
		break;
	}
	
	#region Go Back
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
		if (global.canSave) scr_SaveGame(global.selectedSave);
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_Collection;
		goBack = false;
	}
	#endregion
	
	#region Disc Animation
	var discSpd = sprite_get_speed(spr_Menu_Collection_Cheats_Shine) / 60;
	discIndex += discSpd;
	if (discIndex >= 2) discIndex -= 2;
	#endregion
}