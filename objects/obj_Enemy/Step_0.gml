///@description Main

//Variables

if (parasol)
{
	gravLimit = gravLimitParasol;
	grav = gravParasol;
	if ((!instance_exists(parasolObject)) or (place_meeting(x,y + 1,obj_Wall))) parasol = false;
}
else
{
	if (hurt)
	{
		gravLimit = 4;
		grav = .2;
	}
	else
	{
		gravLimit = gravLimitNormal;
		grav = gravNormal;
	}
}

if (!global.pause)
{
	//Destroy Outside View
	
	checkEnemySpawners = true;
	with (obj_Enemy) if ((id != other.id) and (spawner == other.spawner)) other.checkEnemySpawners = false;
	
	if (((destroyOutsideView) or (hasSpawner)) and (checkEnemySpawners))
	{
		var x1 = camera_get_view_x(gameView) - spawnerRange;
		var y1 = camera_get_view_y(gameView) - spawnerRange;
		var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + spawnerRange;
		var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + spawnerRange;
		
		if (!point_in_rectangle(x,y,x1,y1,x2,y2))
		{
			if (hasSpawner) spawner.spawn = true;
			if (instance_exists(parasolObject)) instance_destroy(parasolObject);
			instance_destroy();
		}
	}
	
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
	
	//Knockback
	
	if (knockbackX >= decel) knockbackX -= decel;
	if (knockbackX <= -decel) knockbackX += decel;
	if ((knockbackX > -decel) and (knockbackX < decel)) knockbackX = 0;
	
	if (knockbackY >= grav) knockbackY -= grav;
	if (knockbackY <= -grav) knockbackY += grav;
	if ((knockbackY > -grav) and (knockbackY < grav)) knockbackY = 0;
	
	//Death
	
	if ((death) or ((!hasDeathAnimation) and (hp <= 0)))
	{
		if (takenDamageType == damageTypes.ice)
		{
			var iceCube = instance_create_depth(x,y,depth,obj_Projectile_IceCube);
			iceCube.dmg = 36;
			iceCube.dirX = dirX;
			if (sprHurt == "self")
			{
				iceCube.sprHurt = sprite_index;
				iceCube.enemyImageIndex = image_index;
			}
			else
			{
				iceCube.sprHurt = sprHurt;
			}
		}
		else
		{
			if (hasDeathParticles)
			{
				if (audio_is_playing(snd_DeathParticles)) audio_stop_sound(snd_DeathParticles);
				audio_play_sound(snd_DeathParticles,0,false);
			}
			
			if (isBoss)
			{
				for (var i = 0; i < 3; i++)
				{
					var particle = instance_create_depth(x,y,depth,obj_Particle);
					particle.followObject = false;
					particle.followedObject = id;
					particle.turnAroundObject = true;
					particle.sprite_index = spr_Particle_Explosion2;
					particle.image_index = i;
					particle.imageSpeed = 0;
					particle.spd = -15;
					if (i == 0) particle.spd = -30;
					particle.orbit = 24;
					if (i == 0) particle.orbit = 6;
					particle.angle = 90;
					if (i == 2) particle.angle = 270;
					particle.visible = false;
					particle.destroyTimer = 30;
				}
				for (var i = 0; i < 8; i++)
				{
					var parDirection = (45 * i);
				
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_SpitStar_Small;
					par.image_index = 1;
					par.imageSpeed = 0;
					par.spdBuiltIn = 6;
					par.fricSpd = .2;
					par.direction = parDirection;
					par.destroyTimer = 45;
					var parScaleDir = 1;
					if ((par.direction > 90) and (par.direction <= 270))
					{
						var parScaleDir = -1;
					}
					par.dir = parScaleDir;
				}
			}
			else
			{
				if (hasDeathParticles)
				{
					var deathParticles = instance_create_depth(x,y,depth,obj_DeathParticles);
					deathParticles.state = choose("roundabout","doubleCross","cross","doubleHex");
				}
				if (objectOnDeath)
				{
					proj = instance_create_depth(x,y,depth,objectOnDeathObj);
					if (objectOnDeathObj == obj_Projectile_ExplosionMask)
					{
						proj.enemy = enemy;
						proj.hurtsEnemy = !enemy;
						proj.hurtsPlayer = enemy;
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
			}
		}
		if (!global.gambleMaykr) global.points += points;
		
		checkEnemySpawners = true;
		with (obj_Enemy) if ((id != other.id) and (spawner == other.spawner)) other.checkEnemySpawners = false;
		
		if ((hasSpawner) and (checkEnemySpawners)) spawner.spawn = true;
		
		if ((instance_exists(obj_SquadControl)) and (squadType != -1))
		{
			obj_SquadControl.waveEnemyCount[obj_SquadControl.currentWave][squadType] += 1;
		}
		instance_destroy();
	}
	
	//Animation
	
	scaleExX = lerp(scaleExX,0,scaleExSpd);
	scaleExY = lerp(scaleExY,0,scaleExSpd);
	
	image_xscale = scale * dirX;
	image_yscale = scale * dirY;
	
	//Collision
	
	if (hp > 0)
	{
		if ((setupTimer == 0) and (groundFailsafe)) while (place_meeting(x,y + 1,obj_Wall)) y -= 1;
		scr_Enemy_Collision();
	}
	
	//Bumpers
	
	if (place_meeting(x,y,obj_Bumper) and ((hasXKnockback) or ((hasYKnockback))))
	{
		//Variables
		
		var collidedBumper = instance_place(x,y,obj_Bumper);
		collidedBumper.hit = true;
		collidedBumper.hitTimer = collidedBumper.hitTimerMax;
		
		//Sound
		
		if (audio_is_playing(snd_Bumper)) audio_stop_sound(snd_Bumper);
		audio_play_sound(snd_Bumper,0,false);
		
		//Vertical Knockback
		
		if (hasYKnockback)
		{
			if (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) + 4))
			{
				knockbackY = collidedBumper.force;
			}
			if (y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) - 4))
			{
				knockbackY = -collidedBumper.force;
			}
			if ((y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) + 4)) and (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) - 4)))
			{
				knockbackY = -(collidedBumper.force / 2);
			}
		}
		
		//Horizontal Knockback
		
		if (hasXKnockback)
		{
			if (x > ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2)) + 4))
			{
				knockbackX = collidedBumper.force;
			}
			if (x < ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2)) - 4))
			{
				knockbackX = -collidedBumper.force;
			}
		}
	}
	
	//Springs
	
	if ((place_meeting(x,y + 1,obj_Spring)) and (hasYKnockback))
	{
		if (sign(vsp + knockbackY) == 1)
		{
			//Variables
			
			var collidedSpring = instance_place(x,y + 1,obj_Spring);
			collidedSpring.hit = true;
			collidedSpring.hitTimer = collidedSpring.hitTimerMax;
			
			//Particles
			
			for (var i = 0; i < 2; i++)
			{
				var par = instance_create_depth(collidedSpring.x + (8 * collidedSpring.image_xscale),collidedSpring.y + (4 * collidedSpring.image_yscale),collidedSpring.depth + 1,obj_Particle);
				par.sprite_index = spr_Particle_SmallStar;
				par.hsp = 6;
				if (i == 0)
				{
					par.hsp = 2;
					par.dir = 1;
				}
				else if (i == 1)
				{
					par.hsp = -2;
					par.dir = -1;
				}
				par.vsp = -4;
				par.grav = .5;
				par.destroyTimer = 15;
				par.hasGravity = true;
			}
			
			//Sound
			
			if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
			audio_play_sound(snd_BigJump,0,false);
			
			//Vertical Knockback
			
			knockbackY = -collidedSpring.force;
		}
	}
	
	//Trampolines
	
	if ((place_meeting(x,y - 1,obj_Trampoline)) and (hasYKnockback))
	{
		if (sign(vsp + knockbackY) == 1)
		{
			//Variables
			
			var collidedTrampoline = instance_place(x,y - 1,obj_Trampoline);
			collidedTrampoline.jumpCount += 1;
			collidedTrampoline.resetTimer = collidedTrampoline.resetTimerMax;
			collidedTrampoline.hit = true;
			collidedTrampoline.hitTimer = collidedTrampoline.hitTimerMax;
			
			//Particles
			
			if (collidedTrampoline.jumpCount >= (floor(collidedTrampoline.jumpCountMax / 2)))
			{
				for (var i = 0; i < 2; i++)
				{
					var par = instance_create_depth(collidedTrampoline.x + (12 * collidedTrampoline.image_xscale),collidedTrampoline.y,collidedTrampoline.depth + 1,obj_Particle);
					par.sprite_index = spr_Particle_SmallStar;
					par.hsp = 6;
					if (i == 0)
					{
						par.hsp = 2;
					}
					else if (i == 1)
					{
						par.hsp = -2;
					}
					par.vsp = -4;
					par.grav = .5;
					par.destroyTimer = 15;
					var parScaleDir = 1;
					if ((par.direction > 90) and (par.direction <= 270))
					{
						var parScaleDir = -1;
					}
					par.dir = parScaleDir;
					par.hasGravity = true;
				}
				
				//Sound
				
				if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
				audio_play_sound(snd_BigJump,0,false);
			}
			else
			{
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
			}
			
			//Vertical Knockback
			
			knockbackY = -(collidedTrampoline.force / 3) - ((collidedTrampoline.force / collidedTrampoline.jumpCountMax) * collidedTrampoline.jumpCount);
		}
	}
	
	//Hurt Timer
	
	if (hurtTimer > 0)
	{
		hurtTimer -= 1;
	}
	else if (hurtTimer == 0)
	{
		if (hp < 1)
        {
            death = true;
        }
        else if (hp > 0)
        {
            hurt = false;
        }
		hurtTimer = -1;
	}
	
	//Hurt Stop Timer
	
	if (hurtStopTimer > 0)
	{
		hurtStopTimer -= 1;
	}
	else if (hurtStopTimer == 0)
	{
		speed = 8;
		hurtStopTimer = -1;
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
	
	//Invincible Flash Timer
	
	if (invincible)
	{
		if (invincibleFlashTimer > 0)
		{
			invincibleFlashTimer -= 1;
		}
		else if (invincibleFlashTimer == 0)
		{
			if (invincibleFlash)
			{
				invincibleFlash = false;
			}
			else
			{
				invincibleFlash = true;
			}
			invincibleFlashTimer = invincibleFlashTimerMax;
		}
	}
	else
	{
		invincibleFlash = false;
		invincibleFlashTimer = -1;
	}
	
	//Hurt
	
	if (!hurtable)
	{
		with (obj_Projectile)
		{
			if (place_meeting(x,y,other))
			{
				if ((destroyableByEnemy) and (owner != other) and (!enemy))
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
							proj.enemy = enemy;
							proj.hurtsEnemy = !enemy;
							proj.hurtsPlayer = enemy;
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
	else if ((!invincible) and (hp > 0))
	{
		with (obj_Projectile)
		{
			if (place_meeting(x,y,other))
			{
				var canBeHurt = false;
				if ((owner != other) and (enemy != other.enemy) and (((damageType == damageTypes.explosion)/* and (!other.explosionResistance)*/) or (damageType != damageTypes.explosion)) and (((!other.isBoss) and (hurtsEnemy)) or ((other.isBoss) and (hurtsEnemy) and (hurtsBoss)))) canBeHurt = true;
				if (canBeHurt)
				{
					if (audio_is_playing(snd_EnemyHurt)) audio_stop_sound(snd_EnemyHurt);
					audio_play_sound(snd_EnemyHurt,0,false);
					other.takenDamageType = damageType;
					if (dmg >= other.hp)
					{
						other.hurtTimer = other.hurtStopTimerMax + 5;
						if ((other.hasDeathKnockback) and (other.takenDamageType != damageTypes.ice)) other.hurtStopTimer = other.hurtStopTimerMax;
			            other.shake = 1;
			            if (instance_exists(obj_Camera)) obj_Camera.shake = 3;
					}
					else
					{
						if (!other.isBoss) global.healthbarMarkedEnemy = other.id;
						other.hurtTimer = other.hurtTimerMax;
					}
					other.hp -= dmg;
					other.shakeX = 2;
					other.shakeY = 2;
					other.direction = point_direction(other.x,other.y,x,y) + irandom_range(150,210);
					scr_HurtKnockback(other,id);
					other.hurt = true;
					if (!destroyableByEnemy)
					{
						other.invincible = true;
						other.invincibleTimer = hitInvincibility;
						other.invincibleFlashTimer = other.invincibleFlashTimerMax;
					}
					if (other.isMystic) other.fluxOverlayAlpha = .8;
					
					if (object_index == obj_Projectile_SlideMask)
					{
						//Kill
			
						if ((other.hp <= -30) and (instance_exists(obj_Camera)))
						{
							obj_Camera.freezeFrameTimer = obj_Camera.freezeFrameTimerMax;
							obj_Camera.shakeX = 3;
							obj_Camera.shakeY = 3;
							obj_Camera.hitZoom += .05;
						}
			
						if (!other.hurtable)
						{
							var parDir = 1;
							if (x < other.x) parDir = -1;
							var parCarryStart = instance_create_depth(other.x + ((sprite_get_width(other.mask_index) / 2) * parDir),other.y,other.depth - 1,obj_Particle);
							parCarryStart.sprite_index = spr_Particle_SlideToSentry;
							parCarryStart.imageSpeed = 1;
							parCarryStart.destroyAfterAnimation = true;
						}
					}
				}
			
				if ((owner != other) and (!enemy))
				{
					switch (damageType)
					{
						case playerAbilities.cutter:
						var particle = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						particle.sprite_index = spr_Particle_CutterHit;
						particle.destroyAfterAnimation = true;
						break;
				
						case playerAbilities.ninja:
						var particle = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						particle.sprite_index = spr_Particle_CutterHit;
						particle.destroyAfterAnimation = true;
						break;
				
						case playerAbilities.wing:
						var particle = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						particle.sprite_index = spr_Particle_CutterHit;
						particle.destroyAfterAnimation = true;
						break;
					}
				}
			
				if ((destroyableByEnemy) and (owner != other) and (!enemy))
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
		
		if (place_meeting(x,y,obj_Spike))
		{
			var collidingSpike = instance_place(x,y,obj_Spike);
			{
				hp -= collidingSpike.dmg;
				other.shakeX = 2;
				other.shakeY = 2;
				scr_HurtKnockback(self,collidingSpike);
				hurt = true;
				hurtTimer = hurtTimerMax;
				invincible = true;
				invincibleTimer = invincibleTimerMax;
				invincibleFlashTimer = invincibleFlashTimerMax;
				if (isMystic) fluxOverlayAlpha = .8;
			}
		}
	}
	
	//Scan
	
	with (obj_Projectile)
	{
		if (place_meeting(x,y,other))
		{
			if ((damageType == damageTypes.scan) and (other.ability != playerAbilities.none))
			{
				if (canScan)
				{
					if (owner.scanTimer == -1)
					{
						if (audio_is_playing(snd_ScanCapture)) audio_stop_sound(snd_ScanCapture);
						audio_play_sound(snd_ScanCapture,0,false);
						global.pause = true;
						if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
						if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
						canScan = false;
						particleTimer = particleTimerMax;
						owner.cAbility = other.ability;
						owner.scanTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan1;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan2;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan3;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
					}
				}
			}
		}
	}
	
	//Shine Effect Timer
	
	if (shineEffectTimer > 0)
	{
		shineEffectTimer -= 1;
	}
	else if (shineEffectTimer == 0)
	{
		var particle = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2)),y + irandom_range(-(sprite_get_height(sprite_index) / 2),(sprite_get_height(sprite_index) / 2)),depth,obj_Particle);
		particle.sprite_index = spr_Particle_SmallSparkle_White;
		particle.destroyAfterAnimation = true;
		shineEffectTimer = shineEffectTimerMax;
	}
}

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if (parasol)
	{
		parasolObject = instance_create_depth(x + (parasolX * dirX),y - (sprite_get_height(sprite_index) / 2) + parasolY,depth + 1,obj_EnemyParasol);
		parasolObject.parasolX = (parasolX * dirX);
		parasolObject.parasolY = parasolY;
		parasolObject.parasolOwner = id;
		parasolObject.dirX = -dirX;
	}
	hp += floor((hp * (instance_number(obj_Player) - 1)) / 2);
	hpMax = hp;
	healthbarBackHp = hp;
	if (isBoss) healthbarBackHp = bossHbHp;
	setupTimer = -1;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}