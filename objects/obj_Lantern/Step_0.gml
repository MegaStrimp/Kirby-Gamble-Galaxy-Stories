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
		sprEmpty = spr_Lantern_Normal_Empty;
		sprFire = spr_Lantern_Normal_Fire;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Fire
	
	if (!fire)
	{
		if (place_meeting(x,y,obj_Projectile))
		{
			var proj = instance_place(x,y,obj_Projectile);
			if (proj.damageType == damageTypes.fire) fire = true;
		}
	}
	else
	{
		if (fireParticleTimer == -1) fireParticleTimer = fireParticleTimerMax;
	}
	
	//Fire Particle Timer
	
	if (fireParticleTimer > 0)
	{
		fireParticleTimer -= 1;
	}
	else if (fireParticleTimer == 0)
	{
		var par = instance_create_depth(x + (irandom_range(8,-8)),y,depth - 1,obj_Particle);
	    par.sprite_index = spr_Particle_Fire1;
	    par.direction = irandom_range(80,100);
	    par.image_angle = 90 + par.direction;
	    par.spdBuiltIn = irandom_range(1,3);
		par.destroyAfterAnimation = true;
		fireParticleTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	
	if (fire)
	{
		sprite_index = sprFire;
	}
	else
	{
		sprite_index = sprEmpty;
	}
}
else
{
	image_speed = 0;
}