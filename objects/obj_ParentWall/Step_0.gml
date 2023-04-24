///@description Main

if (!global.pause)
{
	#region Hit Effect Timer
	if (hitEffectTimer != -1)
	{
		hitEffectTimer = max(hitEffectTimer - speedMultFinal,0);
		if (hitEffectTimer == 0)
		{
			hitEffectTimer = -1;
		}
	}
	#endregion
	
	#region Explode Timer
	if (explodeTimer > 0)
	{
		explodeTimer -= 1;
	}
	else if (explodeTimer == 0)
	{
		if (canExplode)
		{
			with (obj_ParentWall)
			{
			    if ((!isTop) and (canExplode))
				{
					if (distance_to_object(other) <= 24) explodeTimer = explodeTimerMax;
				}
			}
			
			with (obj_BombSolidBlock_Invis)
			{
				if (distance_to_object(other) <= 24) explodeTimer = explodeTimerMax;
			}
			
			with (obj_BombSolidBlock_Create)
			{
				if (distance_to_object(other) <= 24) explodeTimer = explodeTimerMax;
			}
			
			scr_HitEffects_Wall(id,-1,wallHitEffects.starBlock_Free);
			
			if (hasEnemyWall)
			{
				if (instance_exists(enemyWall)) instance_destroy(enemyWall);
			}
			instance_destroy();
		}
		explodeTimer = -1;
	}
	#endregion
	
	#region Flash Timer
	if (flashTimer > 0)
	{
		flashTimer -= 1;
	}
	else if (flashTimer == 0)
	{
		if (flashIndex == 1)
		{
			flashIndex = 2;
		}
		else
		{
			flashIndex = 1;
		}
		flashTimer = -1;
	}
	#endregion
}

//Hurt
if (isTop)
{
	if (instance_exists(topWallOwner))
	{
		if (hp <= 0) topWallOwner.hp = 0;
	}
}

if (object)
{
	if (!invincible)
	{
		with (obj_Chuckie)
		{
			if (place_meeting(x,y,other))
			{
				if (other.damageType == damageTypes.none)
				{
					other.hp -= 1;
				}
				scr_HitEffects_Wall(other.id,-1,other.hitEffect);
			}
		}
		
		with (obj_WarpStar)
		{
			if (place_meeting(x,y,other))
			{
				if (other.damageType == damageTypes.none)
				{
					other.hp -= 10;
				}
				scr_HitEffects_Wall(other.id,-1,other.hitEffect);
			}
		}
		
		with (obj_Projectile)
		{
			if (place_meeting(x,y,other))
			{
				if ((hurtsObject) and (owner != other))
				{
					if (((other.damageType == damageTypes.none) or (damageType == damageTypes.every) or (other.damageType = damageType)) and (wallStrength >= other.wallStrength))
					{
						other.hp -= dmg;
						if (!destroyableByObject)
						{
							other.invincible = true;
							other.invincibleTimer = other.invincibleTimerMax;
						}
					}
				}
				scr_HitEffects_Wall(other.id,id,other.hitEffect);
				
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
						if (isBoss)
						{
							proj.isBoss = isBoss;
							proj.owner = owner;
						}
						if (objectOnHitDmg != -1) proj.dmg = objectOnHitDmg;
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
							if (object_index == obj_Projectile_DoomsdayBomb)
							{
								proj.explosionIndex = 1;
								proj.showHitbox = false;
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
	
	#region Invincible Timer
	if (invincibleTimer > 0)
	{
		invincibleTimer -= 1;
	}
	else if (invincibleTimer == 0)
	{
		invincible = false;
		invincibleTimer = -1;
	}
	#endregion
}
else if (!platform)
{
	with (obj_Projectile)
	{
		if (place_meeting(x,y,other))
		{
			if (!other.enemyCollisionHitbox)
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
						if (isBoss)
						{
							proj.isBoss = isBoss;
							proj.owner = owner;
						}
						if (objectOnHitDmg != -1) proj.dmg = objectOnHitDmg;
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
							if (object_index == obj_Projectile_DoomsdayBomb)
							{
								proj.explosionIndex = 1;
								proj.showHitbox = false;
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
			else if ((other.owner.hurtable) and (!other.owner.invincible) and (other.owner.hp > 0))
			{
				scr_Enemy_Hurt(other.owner,id);
			
				//if ((destroyableByEnemy) and (owner != other.owner) and (!other.owner.enemy))
				if (destroyableByEnemy)
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
						if (isBoss)
						{
							proj.isBoss = isBoss;
							proj.owner = owner;
						}
						if (objectOnHitDmg != -1) proj.dmg = objectOnHitDmg;
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
							if (object_index == obj_Projectile_DoomsdayBomb)
							{
								proj.explosionIndex = 1;
								proj.showHitbox = false;
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
}

#region Debug Delete
if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}
#endregion