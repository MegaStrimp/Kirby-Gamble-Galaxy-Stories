///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_WarpStar_Normal_Idle;
		sprAura = spr_Particle_WarpStarAura_Yellow;
		sprTrail = spr_Particle_WarpStarTrail_Yellow;
		break;
		
		//Orange
		
		case 1:
		sprIdle = spr_WarpStar_Orange_Idle;
		sprAura = spr_Particle_WarpStarAura_Orange;
		sprTrail = spr_Particle_WarpStarTrail_Orange;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Aura Timer
	
	if (auraTimer > 0)
	{
		auraTimer -= 1;
	}
	else if (auraTimer == 0)
	{
		if (hasAura)
		{
			hasAura = false;
		}
		else
		{
			hasAura = true;
		}
		auraTimer = auraTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}