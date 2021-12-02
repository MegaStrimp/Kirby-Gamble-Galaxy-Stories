///@description Main

//Characters

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Movement
	
	movespeed -= decel;
	hsp = movespeed;
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Sprite Change Timer
	
	if (spriteChangeTimer > 0)
	{
		spriteChangeTimer -= 1;
	}
	else if (spriteChangeTimer == 0)
	{
		if (sprite_index == spr_Particle_Spark4)
		{
			sprite_index = spr_Projectile_Spark_Normal_None;
		}
		else
		{
			visible = false;
		}
	    spriteChangeTimer = -1;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x - (6 * dirX),y,depth + 1,obj_Particle);
		par.sprite_index = spr_Particle_Spark4;
		par.hsp = (-1 * dirX);
		par.destroyAfterAnimation = true;
	    particleTimer = particleTimerMax;
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
	    destroyTimer = -1;
	}
	
	//Animation
	
	image_speed = imageSpeed;
}
else
{
	image_speed = 0;
}