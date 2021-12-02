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
	}
	particleOnHitSpr = sprDestroy;
	sprite_index = sprIdle;
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (hsp >= decel) hsp -= decel;
	if (hsp <= -decel) hsp += decel;
	if ((hsp > -decel) and (hsp < decel))
	{
		var par = instance_create_depth(x,y,depth,obj_Particle);
		par.sprite_index = sprDestroy;
		par.dir = dirX;
		par.destroyAfterAnimation = true;
		instance_destroy();
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_AirPuff;
		particle.destroyAfterAnimation = true;
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