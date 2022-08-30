///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_AirPuff_Normal_Idle;
		sprDestroy = spr_AirPuff_Normal_Destroy;
		break;
		
		//Whispy Big
		
		case 2:
		sprIdle = spr_AirPuff_WhispyBig_Idle;
		sprDestroy = spr_AirPuff_WhispyBig_Idle;
		break;
	}
	if (sprDestroy != -1) particleOnHitSpr = sprDestroy;
	sprite_index = sprIdle;
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Gravity
	
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
	
	//Destroy
	
	if (hsp >= decel) hsp -= decel;
	if (hsp <= -decel) hsp += decel;
	if ((hsp > -decel) and (hsp < decel))
	{
		if (sprDestroy != -1)
		{
			var par = instance_create_depth(x,y,depth,obj_Particle);
			par.sprite_index = sprDestroy;
			par.image_xscale = image_xscale;
			par.image_yscale = image_yscale;
			par.dir = dirX;
			par.destroyAfterAnimation = true;
		}
		instance_destroy();
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x,y,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_AirPuff1;
		if (character == 1) par.sprite_index = spr_Particle_AirPuff2;
		par.image_xscale = image_xscale;
		par.image_yscale = image_yscale;
		par.destroyAfterAnimation = true;
		particleTimer = particleTimerMax;
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}