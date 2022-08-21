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
	//Activate
	
	if (!active)
	{
		//image_angle += 3;
		
		vsp += (accel * walkDirY);
		if ((abs(vsp) >= jumpspeed)) walkDirY *= -1;
		y += vsp;
		
		with (obj_Player)
		{
			if (place_meeting(x,y,other))
			{
				other.active = true;
				other.image_angle = 0;
				dir = 1;
				warpStarIndex = other;
				state = playerStates.warpStar;
				
			}
		}
		if (active) path_start(warpStarPath,6,path_action_stop,true);
	}
	else
	{
		if (particleTimer == -1) particleTimer = particleTimerMax;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x + irandom_range(-10,10),y + irandom_range(-10,10),depth + 1,obj_Particle);
		par.sprite_index = sprTrail;
		par.direction = irandom_range(-10,10) - path_orientation;
		par.spdBuiltIn = irandom_range(3,6);
		par.destroyAfterAnimation = true;
		particleTimer = -1;
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