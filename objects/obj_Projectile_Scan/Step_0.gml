///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Scan_Normal_Idle;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (instance_exists(owner))
	{
		if (owner.hurt)
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}

//Particle Timer

if (particleTimer > 0)
{
	particleTimer -= 1;
}
else if (particleTimer == 0)
{
	var posX = irandom_range(x + ((sprite_get_width(sprite_index) / 2) * image_xscale),x + (sprite_get_width(sprite_index) * image_xscale));
	var posY = irandom_range(y - ((sprite_get_height(sprite_index) / 2) * image_yscale),y + ((sprite_get_height(sprite_index) / 2) * image_yscale));
	var par = instance_create_depth(posX,posY,depth - 1,obj_Particle);
	par.spdMax = random_range(1,2);
	par.dir = sign(image_xscale);
	par.pausable = false;
	par.followedObject = owner;
	par.destroyAfterCollidingFollow = true;
	par.sprite_index = spr_Particle_Scan4;
	par.followedObjectX = 4;
	par.followedObjectY = -3;
	par.destroyAfterAnimation = true;
	particleTimer = particleTimerMax;
}