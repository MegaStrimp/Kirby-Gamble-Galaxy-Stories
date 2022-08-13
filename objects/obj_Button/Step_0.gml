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
		sprIdle = spr_Button_Normal_Idle;
		sprPressed = spr_Button_Normal_Pressed;
		break;
		
		//Space
		
		case 1:
		sprIdle = spr_Button_Space_Idle;
		sprPressed = spr_Button_Space_Pressed;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Gravity
	
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
	
	//Activate
	
	with (obj_Projectile)
	{
		if ((!other.active) and (place_meeting(x,y,other)))
		{
			if ((hurtsObject) and (owner != id))
			{
				if ((other.damageType == damageTypes.none) or (damageType == damageTypes.every) or (other.damageType = damageType))
				{
					other.activate = true;
				}
			}
		
			if ((destroyableByObject) and (owner != id))
			{
				if (particleOnHit)
				{
					var particle = instance_create_depth(x,y,depth,obj_Particle);
					particle.sprite_index = particleOnHitSpr;
					particle.dir = dirX;
					particle.destroyAfterAnimation = true;
				}
			
				if (deathParticlesOnHit)
				{
					var particle = instance_create_depth(x,y,depth,obj_DeathParticles);
					particle.state = deathParticlesOnHitNumber;
					particle.dir = dirX;
				}
			
				if (objectOnHit)
				{
					var proj = instance_create_depth(x,y,depth,objectOnHitObj);
					if (objectOnHitDmg != "none") proj.dmg = objectOnHitDmg;
					if (objectOnHitObj == obj_Projectile_ExplosionMask)
					{
						if (enemy)
						{
							proj.enemy = true;
							proj.hurtsEnemy = false;
							proj.hurtsPlayer = true;
						}
						else
						{
							proj.enemy = false;
							proj.hurtsEnemy = true;
							proj.hurtsPlayer = false;
						}
						if (object_index == obj_Projectile_Bomb)
						{
							if (audio_is_playing(snd_BombExplode)) audio_stop_sound(snd_BombExplode);
							audio_play_sound(snd_BombExplode,0,false);
							if (hasMagma)
							{
								for (var i = 0; i < 3; i++)
								{
									proj = instance_create_depth(x + ((i - 1) * 15),y - 4,depth,obj_Projectile_SmallFire);
									proj.owner = id;
									proj.dmg = 8;
									proj.enemy = false;
									proj.destroyableByWall = false;
									proj.destroyableByEnemy = false;
									proj.destroyableByObject = false;
								}
							}
						}
						else
						{
							if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
							audio_play_sound(snd_Explosion1,0,false);
						}
						var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
						explosion.state = "explosion1";
					}
				}
				instance_destroy();
			}
		}
	}
	
	if ((!active) and (place_meeting(x,y,obj_Player))) activate = true;
	
	if (activate)
	{
		switch (state)
		{
			#region Open Gate
			case 0:
			with (obj_Gate)
			{
				if (number == other.number)
				{
					active = true;
					stopped = false;
					stopTimer = stopTimerMax;
					if (other.revertTimer != -1) revertTimer = other.revertTimer;
				}
			}
			break;
			#endregion
			
			#region Bomb Block
			case 1:
			with (obj_ParentWall)
			{
			    if ((!isTop) and (canExplode))
				{
					if (place_meeting(x,y,other))
					{
						explodeTimer = explodeTimerMax;
					}
					if (place_meeting(x + 24,y,other))
					{
						explodeTimer = explodeTimerMax;
					}
					if (place_meeting(x - 24,y,other))
					{
						explodeTimer = explodeTimerMax;
					}
					if (place_meeting(x,y + 24,other))
					{
						explodeTimer = explodeTimerMax;
					}
					if (place_meeting(x,y - 24,other))
					{
						explodeTimer = explodeTimerMax;
					}
				}
			}
			
			with (obj_BombSolidBlock_Invis)
			{
			    if (place_meeting(x,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x + 24,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x - 24,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x,y + 24,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x,y - 24,other))
				{
				    explodeTimer = explodeTimerMax;
				}
			}
			
			with (obj_BombSolidBlock_Create)
			{
			    if (place_meeting(x,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x + 24,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x - 24,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x,y + 24,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x,y - 24,other))
				{
				    explodeTimer = explodeTimerMax;
				}
			}
			break;
			#endregion
		}
		activate = false;
		active = true;
		
		if (activateMovingWall)
		{
			if (instance_exists(obj_BigMovingWall))
			{
				var nearestMovingWall = instance_nearest(x,y,obj_BigMovingWall);
				if (!nearestMovingWall.active) and (nearestMovingWall.canBeActivated) nearestMovingWall.activate = true;
			}
		}
		
		if (destroyAfterPressed)
		{
			for (var i = 0; i < 2; i++)
			{
				var particle = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth,obj_Particle);
				particle.sprite_index = spr_Particle_Aura2;
				if (i == 0) particle.sprite_index = spr_Particle_Explosion1;
				particle.imageSpeed = 1;
				particle.destroyAfterAnimation = true;
			}
			for (var i = 0; i < 3; i++)
			{
				var particle = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth,obj_Particle);
				particle.sprite_index = spr_Particle_ShrinkingStar1;
				particle.imageSpeed = 1;
				particle.destroyAfterAnimation = true;
				particle.spdBuiltIn = 6;
				particle.fricSpd = .6;
				switch (i)
				{
					case 0:
					particle.direction = 90;
					break;
					
					case 1:
					particle.direction = 215;
					break;
					
					case 2:
					particle.direction = 325;
					break;
				}
			}
			instance_destroy();
		}
	}
	
	//Slopes
	
	if (hasXCollision)
	{
		if ((!place_meeting(x + hsp,y,collisionX)) and (place_meeting(x,y + 1,collisionX)))
		{
		    yplus = 0;
		    while ((!place_meeting(x + hsp,y + yplus,collisionX) and yplus <= abs(hsp)))
			{
				yplus += 1;
			}
		    y += yplus;
		}
	}
	
	//Horizontal Collision
	
	if (hasXCollision)
	{
		if place_meeting(x + hsp,y,collisionX)
		{
		    yplus = 0;
		    while ((place_meeting(x + hsp,y - yplus,collisionX)) and (yplus <= abs(1 * hsp)))
			{
				yplus += 1;
			}
		    if place_meeting(x + hsp,y - yplus,collisionX)
		    {
		        while (!place_meeting(x + (sign(hsp) / 10),y,collisionX))
				{
					x += (sign(hsp) / 10);
				}
		        hsp = 0;
		    }
		    else
		    {
		        y -= yplus
		    }
		}
	}
	
	x += hsp;
	
	//Vertical Collision
	
	if (hasYCollision)
	{
		if (place_meeting(x,y + vsp,collisionY))
		{
		    while (!place_meeting(x,y + (sign(vsp) / 10),collisionY))
		    { 
		        y += (sign(vsp) / 10);
		    }
		    vsp = 0;
		}
	}
	
	y += vsp;
	
	//Animation
	
	if (active)
	{
		sprite_index = sprPressed;
	}
	else
	{
		sprite_index = sprIdle;
	}
}