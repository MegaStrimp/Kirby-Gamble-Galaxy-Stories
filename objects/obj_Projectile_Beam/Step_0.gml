///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Inputs
	
	scr_Player_Inputs(player);
	
	//Destroy
	
	if (enemy)
	{
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
	}
	
	//Trail
	
	if ((character == 2) or (character == 3))
	{
		/*var afterimage = instance_create_depth(x,y,depth + 1,obj_Afterimage);
		afterimage.image_speed = 0;
		afterimage.sprite_index = sprite_index;
		afterimage.image_index = image_index;
		afterimage.image_xscale = image_xscale;
		afterimage.image_alpha = .3;
		afterimage.destroyTimer = 3;*/
	}
	
	//Mask
	
	if (visible)
	{
		mask_index = sprite_index;
	}
	else
	{
		mask_index = -1;
	}
	
	//Movement
	
	if (hasGravity)
	{
		if (vsp < gravLimit)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	if (orbitSpd != 0) orbit += orbitSpd;
	
	if (state == 0)
	{
		angle += spd;
		var a1 = 335;
		var a2 = 135;
		var a3 = 205;
		var a4 = 225;
		if (isUfo)
		{
			a1 = 315; // 45
			a2 = 300;
			a3 = 225;
			a4 = 235;
		}
		if ((hasLimit) and (((sign(spd) == -1) and ((angle < a1) and (angle > a2))) or ((sign(spd) == 1) and ((angle > a3) and (angle < a4))))) instance_destroy();
		if (angle >= 360) angle -= 360;
		if (angle < 0) angle += 360;
		if (instance_exists(owner))
		{
			if (owner.hurt)
			{
				instance_destroy();
			}
		}
	}
	else if (state == 2)
	{
		var spdFinal = spd;
		if ((!enemy) and (instance_exists(owner)) and (owner.attackNumber == playerAttacks.mysticBeamCharge) and (isMystic) and (keyAttackHold))
		{
			orbitMaxFinal -= .25;
			spdFinal = spd * 2;
		}
		else
		{
			orbitMaxFinal = orbitMax;
		}
		orbitMaxFinal = max(orbitMaxFinal,0);
		if (orbitMaxFinal == 0)
		{
			if (owner.mysticBeamChargeEx == 0)
			{
				if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
				audio_play_sound(snd_Charge_Ready,0,false);
				var particle = instance_create_depth(x - (16 * owner.dir),y - 15,depth - 1,obj_Particle);
				particle.sprite_index = spr_Particle_Flash1;
				particle.scale = 1.5;
				particle.destroyAfterAnimation = true;
			}
			owner.mysticBeamChargeEx += 1;
			owner.canMysticBeamShield = true;
			instance_destroy();
		}
		angle += spdFinal;
		if (angle >= 360) angle -= 360;
		if (angle < 0) angle += 360;
		if (instance_exists(owner))
		{
			if (enemy)
			{
				if (owner.attackState == 2)
				{
					state = 1;
				}
			}
		}
	}
	else if (state == 4)
	{
		var finalHsp = hsp * dirX;
		if (place_meeting(x,y + floor(vsp + 2),obj_Wall))
		{
			jumpCount += 1;
			var finalVsp = 6;
			if (jumpCount == 3)
			{
				jumpCount = 0;
				finalVsp = 10;
			}
			vsp -= finalVsp;
		}
		x += finalHsp;
		y += vsp;
	}
	
	//Position
	
	if ((state == 0) or (state == 2))
	{
		if (instance_exists(owner))
		{
			if (state == 2) orbit = lerp(orbit,orbitMaxFinal,.1);
			x = lengthdir_x(orbit, angle) + (owner.x + centerX);
			y = lengthdir_y(orbit, angle) + (owner.y + centerY);
		}
		else
		{
			instance_destroy();
		}
	}
	else if ((state == 1) or (state == 3))
	{
		speed = spd;
		y += vsp;
	}
	
	//Collision
	
	if (state == 3)
	{
		if (changeDirection)
		{
			if (place_meeting(x,y,obj_ParentWall))
			{
				changeDirection = false;
				if (straightBounce)
				{
					direction += 180;
				}
				else
				{
					direction += 90 * -dirX;
				}
				directionTimer = directionTimerMax;
			}
		}
	}
	
	//Invis Timer
	
	if (invisTimer > 0)
	{
		invisTimer -= 1;
	}
	else if (invisTimer == 0)
	{
		if (visible)
		{
			visible = false;
		}
		else
		{
			visible = true;
		}
		invisTimer = invisTimerMax;
	}
	
	//Alpha Timer
	
	if (alphaTimer > 0)
	{
		alphaTimer -= 1;
	}
	else if (alphaTimer == 0)
	{
		if (image_alpha == 1)
		{
			image_alpha = .1;
		}
		else
		{
			image_alpha = 1;
		}
		alphaTimer = alphaTimerMax;
	}
	
	//Pulse Timer
	
	if (pulseTimer > 0)
	{
		pulseTimer -= 1;
	}
	else if (pulseTimer == 0)
	{
		if (image_index == pulseTarget)
		{
			image_index = imageIndex;
		}
		else
		{
			image_index = pulseTarget;
		}
		pulseTimer = pulseTimerMax;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x,y,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_Spark1;
		if (character == 5) par.sprite_index = spr_Particle_Spark2;
		par.image_index = irandom_range(0,par.image_number - 1);
		par.imageSpeed = 0;
		par.destroyTimer = 1;
		if (instance_exists(owner))
		{
			if ((!enemy) and (abilityType = playerAbilities.beam) and (!isMystic) and
			(((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul))
			or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))
			or ((player == 2) and (global.hatTypeBeamP3 == abilityHatSkins.beam_marxSoul))
			or ((player == 3) and (global.hatTypeBeamP4 == abilityHatSkins.beam_marxSoul))))
			{
				par.sprite_index = spr_Particle_MarxDiamonds;
				par.image_alpha = .5;
				par.imageSpeed = 1;
				par.scale = random_range(.5,.75);
				par.destroyTimer = 3;
			}
		}
		particleTimer = particleTimerMax + irandom_range(-4,4);
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
	
	//Direction Timer
	
	if (directionTimer > 0)
	{
		directionTimer -= 1;
	}
	else if (directionTimer == 0)
	{
		changeDirection = true;
		directionTimer = -1;
	}
	
	//Trail Timer
	
	if (trailTimer > 0)
	{
		trailTimer -= 1;
	}
	else if (trailTimer == 0)
	{
		var par = instance_create_depth(x,y,depth + 1,obj_Afterimage);
		par.sprite_index = trailSpr;
		par.destroyAfterAnimation = true;
		par.destroyTimer = -1;
		trailTimer = trailTimerMax;
	}
	
	//Animation
	
	image_speed = imageSpeed;
	
	sprite_index = sprIdle;
	
	if (character == 5)
	{
		shakeX = 2;
		shakeY = 2;
	}
}
else
{
	image_speed = 0;
	speed = 0;
}