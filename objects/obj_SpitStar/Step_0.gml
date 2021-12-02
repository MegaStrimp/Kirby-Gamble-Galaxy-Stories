///@description Main

//Event Inherited

event_inherited();

//Variables

switch (state)
{
	case "smallStar":
	destroyableByEnemy = true;
	destroyableByObject = true;
	sprite_index = spr_SpitStar_Small;
	mask_index = spr_16Square_Mask;
	break;
	
	case "bigStar":
	destroyableByEnemy = false;
	destroyableByObject = false;
	sprite_index = spr_SpitStar_Small;
	mask_index = spr_16Square_Mask;
	image_xscale = 1.25;
	image_yscale = 1.25;
	break;
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	image_speed = 1;
	
	//Movement
	
	hsp = dirX * spd;
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var particle = instance_create_depth(x,y,depth + 1,obj_Particle);
		particle.sprite_index = spr_Particle_Sparkle1;
		particle.hsp = (1 * dirX);
		particle.destroyAfterAnimation = true;
		if (state == "bigStar")
		{
			var particle = instance_create_depth(x,y,depth + 1,obj_Particle);
			particle.sprite_index = spr_Particle_ShrinkingStar1;
			particle.spdBuiltIn = 6;
			particle.fricSpd = .3;
			if (dirX == 1)
			{
				particle.direction = choose(irandom_range(60,0),irandom_range(310,359));
			}
			else
			{
				particle.direction = irandom_range(120,240);
			}
			particle.destroyAfterAnimation = true;
		}
		particleTimer = particleTimerMax;
	}
	
	//Position
	
	x += hsp;
}
else
{
	image_speed = 0;
}