///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Active
	
	hurtsObject = active;
	hurtsEnemy = active;
	hurtsBoss = active;
	hurtsProjectile = active;
	destroyableByWall = active;
	
	//Movement
	
	speed = spd;
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var particle = instance_create_depth(x,y,depth + 1,obj_Particle);
		particle.sprite_index = spr_Particle_Sparkle1;
		particle.destroyAfterAnimation = true;
		var particle = instance_create_depth(x,y,depth + 1,obj_Particle);
		particle.sprite_index = spr_Particle_ShrinkingStar1;
		particle.destroyAfterAnimation = true;
		particleTimer = particleTimerMax;
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		var deathParticles = instance_create_depth(x,y,depth,obj_DeathParticles);
		deathParticles.state = choose("roundabout","doubleCross","cross","doubleHex");
		instance_destroy();
		destroyTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
}
else
{
	speed = 0;
	image_speed = 0;
}