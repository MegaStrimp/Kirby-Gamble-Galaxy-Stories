///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Cutter_Player;
		break;
		
		//Enemy
		
		case 1:
		sprIdle = spr_Projectile_Cutter_Enemy;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	scr_Player_Inputs(player);
	
	//Event Inherited
	
	event_inherited();
	
	//Movement
	
	hsp -= (decel * dirX);
	hsp = clamp(hsp,-decelMax,decelMax);
	
	if ((!global.cutscene) and (!enemy))
	{
		if (keyUpHold)
		{
			vsp = -jumpspeed;
		}
		if (keyDownHold)
		{
			vsp = jumpspeed;
		}
		if (((keyUpHold) and (keyDownHold)) or ((!keyUpHold) and (!keyDownHold)))
		{
			vsp = 0;
		}
	}
	
	//Cutter Catch
	
	if (!enemy)
	{
		if ((sign(hsp) == -sign(dirX)) and (place_meeting(x,y,owner)))
		{
			var collidedPlayer = instance_place(x,y,owner);
			if (((collidedPlayer.player == 0) and ((global.abilityP1 == "cutter") or (global.characterP1 == "sirKibble"))) or ((collidedPlayer.player == 1) and ((global.abilityP2 == "cutter") or (global.characterP2 == "sirKibble"))))
			{
				if (audio_is_playing(snd_CutterCatch)) audio_stop_sound(snd_CutterCatch);
				audio_play_sound(snd_CutterCatch,0,false);
				collidedPlayer.cutterCatch = true;
				collidedPlayer.cutterCatchTimer = collidedPlayer.cutterCatchTimerMax;
			}
			instance_destroy();
		}
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}