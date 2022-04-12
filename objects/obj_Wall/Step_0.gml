///@description Main

if (!global.pause)
{
	//Explode Timer
	
	if (explodeTimer > 0)
	{
		explodeTimer -= 1;
	}
	else if (explodeTimer == 0)
	{
		if (canExplode)
		{
			with (obj_Wall)
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
			
			if (audio_is_playing(snd_BreakingWall)) audio_stop_sound(snd_BreakingWall);
			audio_play_sound(snd_BreakingWall,0,false);
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
			
			if (hasEnemyWall)
			{
				if (instance_exists(enemyWall)) instance_destroy(enemyWall);
			}
			instance_destroy();
		}
		explodeTimer = -1;
	}
}

//Hurt

if (isTop)
{
	if (!instance_exists(topWallOwner))
	{
		instance_destroy();
	}
	else
	{
		if (hp <= 0) topWallOwner.hp = 0;
	}
}

if (object)
{
	if (!invincible)
	{
		with (obj_Projectile)
		{
			if (place_meeting(x,y,other))
			{
				if ((hurtsObject) and (owner != other))
				{
					if ((other.damageType == damageTypes.none) or (damageType == damageTypes.every) or (other.damageType = damageType))
					{
						other.hp -= dmg;
						if (!destroyableByObject)
						{
							other.invincible = true;
							other.invincibleTimer = other.invincibleTimerMax;
						}
					}
				}
				
				if ((destroyableByObject) and (owner != other.id))
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
	}
	
	//Invincible Timer
	
	if (invincibleTimer > 0)
	{
		invincibleTimer -= 1;
	}
	else if (invincibleTimer == 0)
	{
		invincible = false;
		invincibleTimer = -1;
	}
}
else //if (!platform)
{
	with (obj_Projectile)
	{
		if ((!other.enemyCollisionMask) and (place_meeting(x,y,other)))
		{
			if ((destroyableByWall) and (owner != other))
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
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}