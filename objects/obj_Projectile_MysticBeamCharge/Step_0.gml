///@description Main

//Variables

scr_Player_Inputs(player);

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Rotate
	
	imageAngle -= 20;
	
	if (character == 1)
	{
		//Star Animation
		
		starIndex += .1;
		if (starIndex >= sprite_get_number(spr_Projectile_BeamCharge_Vortex_Stars)) starIndex = 0;
	}
	
	//Damage
	
	dmg = ((dmgTemp * 2) * (destroyTimer / destroyTimerMax)) + dmgTemp;
	
	//Destroy
	
	if (((instance_exists(owner)) and (owner.hurt)) or (keyAttackPressed)) destroy = true;
	
	//Movement
	
	var spdLimit = 2 + (supercharged);
	
	if (keyUpHold)
	{
		vsp -= .25;
	}
	
	if (keyDownHold)
	{
		vsp += .25;
	}
	
	if (keyLeftHold)
	{
		hsp -= .25;
	}
	
	if (keyRightHold)
	{
		hsp += .25;
	}
	
	hsp = clamp(hsp,-spdLimit,spdLimit);
	vsp = clamp(vsp,-spdLimit,spdLimit);
	
	x += hsp;
	y += vsp;
	
	//Grow
	
	if (!destroy)
	{
		if (scale < scaleEx)
		{
			scale += .25;
		}
		else
		{
			scale = scaleEx;
		}
	}
	else
	{
		if (scale > 0)
		{
			scale -= .1;
		}
		else
		{
			scale = 0;
			instance_destroy();
		}
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x,y,depth + 1,obj_Particle);
		if (character == 1)
		{
			par.sprite_index = spr_Particle_VortexTrail;
			par.scale = scaleEx;
			par.image_xscale = scaleEx;
			par.image_yscale = scaleEx;
			par.destroyTimer = 5;
		}
		else
		{
			par.sprite_index = sprite_index;
			par.scale = scaleEx / 2;
			par.image_xscale = scaleEx / 2;
			par.image_yscale = scaleEx / 2;
			par.image_alpha = .5;
			par.destroyTimer = 9;
		}
		par.image_angle = imageAngle;
		particleTimer = particleTimerMax;
	}
	
	//Flare Timer
	
	if (flareTimer > 0)
	{
		flareTimer -= 1;
	}
	else if (flareTimer == 0)
	{
		var timerOffset = 0;
		switch (character)
		{
			case 0:
			var par = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2)),y + irandom_range(-(sprite_get_height(sprite_index) / 2),(sprite_get_height(sprite_index) / 2)),depth + 1,obj_Particle);
			par.sprite_index = choose(spr_Particle_BeamFlareWhite,spr_Particle_BeamFlareFlux,spr_Particle_BeamFlareYellow);
			par.image_index = choose(1,2);
			par.hsp = (choose(1,2) * (-sign(hsp)));
			par.vsp = (choose(1,2) * (-sign(vsp)));
			par.dir = -dirX;
			par.imageSpeed = 0;
			par.destroyTimer = irandom_range(5,15);
			timerOffset = irandom_range(-2,1);
			break;
			
			case 1:
			var particle = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 4),(sprite_get_width(sprite_index) / 4)),y + irandom_range(-(sprite_get_height(sprite_index) / 4),(sprite_get_height(sprite_index) / 4)),depth,obj_Particle);
			particle.sprite_index = spr_Particle_SmallSparkle_Purple;
			particle.vsp = .5;
			particle.destroyAfterAnimation = true;
			break;
		}
		
		if ((supercharged) and (character != 1))
		{
			timerOffset = -3;
			if (visible)
			{
				visible = false;
			}
			else
			{
				visible = true;
			}
		}
		flareTimer = flareTimerMax + timerOffset;
	}
	
	//Form Change Timer
	
	if (formChangeTimer > 0)
	{
		formChangeTimer -= 1;
	}
	else if (formChangeTimer == 0)
	{
		formIndex += 1;
		if (formIndex > 3) formIndex -= 4;
		switch (formIndex)
		{
			case 0:
			sprIdle = sprForm1;
			break;
			
			case 1:
			sprIdle = sprForm2;
			break;
			
			case 2:
			sprIdle = sprForm3;
			break;
			
			case 3:
			sprIdle = sprForm4;
			break;
		}
		formChangeTimer = formChangeTimerMax;
	}
	
	//Destroy Timer
	
	if (!destroy)
	{
		if (destroyTimer > 0)
		{
			destroyTimer -= 1;
		}
		else if (destroyTimer <= 0)
		{
			destroy = true;
		}
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	speed = 0;
	image_speed = 0;
}