///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Ice_Normal;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	scr_Player_Inputs(player);
	
	//Slopes
	
	if ((!place_meeting(x + hsp,y,obj_Wall)) and (place_meeting(x,y + 1,obj_Wall)))
	{
		yplus = 0;
		while ((!place_meeting(x + hsp,y + yplus,obj_Wall) and yplus <= abs(hsp)))
		{
			yplus += 1;
		}
		y += yplus;
	}
	
	//Horizontal Collision
	
	if place_meeting(x + hsp,y,obj_Wall)
	{
		yplus = 0;
		while ((place_meeting(x + hsp,y - yplus,obj_Wall)) and (yplus <= abs(1 * hsp)))
		{
			yplus += 1;
		}
		if (!place_meeting(x + hsp,y - yplus,obj_Wall))
		{
			y -= yplus
		}
	}
	
	x += hsp;
	
	//Vertical Collision
	
	if (place_meeting(x,y + vsp,obj_Wall))
	{
		while (!place_meeting(x,y + (sign(vsp) / 10),obj_Wall))
		{ 
			y += (sign(vsp) / 10);
		}
		vsp = 0;
	}
	
	y += vsp;
	
	//Movement
	
	if ((!enemy) and (state == 0))
	{
		if (place_meeting(x,y,obj_Player))
		{
			var collidedPlayer = instance_place(x,y,obj_Player);
			if (audio_is_playing(snd_IceKick)) audio_stop_sound(snd_IceKick);
			audio_play_sound(snd_IceKick,0,false);
			if (!collidedPlayer.attack)
			{
				with (collidedPlayer)
				{
					if (((player == 0) and (global.abilityP1 == "ice")) or ((player == 1) and (global.abilityP2 == "ice")))
					{
						iceKick = true;
						iceKickTimer = iceKickTimerMax;
						sprite_index = sprIceKick;
						image_index = 0;
					}
				}
			}
			dmg += 2;
			state = 1;
			if (collidedPlayer.x <= x) hsp = movespeed;
			if (collidedPlayer.x > x) hsp = -movespeed;
		}
	}
	
	//Event Inherited
	
	event_inherited();
	
	//Flash Timer
	
	if (flashTimer > 0)
	{
		flashTimer -= 1;
	}
	else if (flashTimer == 0)
	{
		if (sprite_index == sprIdle)
		{
			sprite_index = sprHurt;
			image_index = enemyImageIndex;
		}
		else
		{
			sprite_index = sprIdle;
		}
		flashTimer = flashTimerMax;
	}
	
	//Flash Stop Timer
	
	if (flashStopTimer > 0)
	{
		flashStopTimer -= 1;
	}
	else if (flashStopTimer == 0)
	{
		sprite_index = sprIdle;
		flashTimer = -1;
		flashStopTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}