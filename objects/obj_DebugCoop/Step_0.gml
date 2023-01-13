///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Select
	
	if (!instance_exists(obj_Fade))
	{
		if (keyDownPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection += 1;
		}
		if (keyUpPressed)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			selection -= 1;
		}
		
		if (selection < 0) selection += 4;
		if (selection > 3) selection -= 4;
		
		player1Offset = (selection == 0);
		player2Offset = (selection == 1);
		player3Offset = (selection == 2);
		player4Offset = (selection == 3);
		
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			global.hasCoop = selection;
			global.hasP1 = (global.hasCoop >= 0);
			global.hasP2 = (global.hasCoop >= 1);
			global.hasP3 = (global.hasCoop >= 2);
			global.hasP4 = (global.hasCoop >= 3);
			
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = room_next(room);
		}
	}
}