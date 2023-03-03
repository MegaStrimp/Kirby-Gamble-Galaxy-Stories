///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
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