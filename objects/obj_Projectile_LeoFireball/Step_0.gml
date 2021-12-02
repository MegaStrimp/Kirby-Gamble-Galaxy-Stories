///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_LeoFireball_Normal_Idle;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Movement
	
	hsp = movespeed;
	vsp = -jumpspeed;
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_Fire3;
		particle.hsp = (2 * -dirX);
		particle.vsp = -2;
		particle.destroyAfterAnimation = true;
		particle.paletteSpriteIndex = paletteIndex;
		particle.paletteIndex = 1;
		particleTimer = particleTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}