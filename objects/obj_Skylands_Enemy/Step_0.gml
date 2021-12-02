///@description Main

if (!global.pause)
{
	//Destroy Outside View
	/*
	if (hasSpawner)
	{
		var x1 = camera_get_view_x(gameView) - spawnerRange;
		var y1 = camera_get_view_y(gameView) - spawnerRange;
		var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + spawnerRange;
		var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + spawnerRange;
		
		if (!point_in_rectangle(x,y,x1,y1,x2,y2))
		{
			spawner.spawn = true;
			instance_destroy();
		}
	}*/
	
	//Death
	
	if (hp <= 0)
	{
		if (audio_is_playing(snd_DeathParticles)) audio_stop_sound(snd_DeathParticles);
		audio_play_sound(snd_DeathParticles,0,false);
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
			var deathParticles = instance_create_depth(x,y,depth,obj_DeathParticles);
			deathParticles.state = choose("roundabout","doubleCross","cross","doubleHex");
			if (objectOnDeath) instance_create_depth(x,y,depth,objectOnDeathObj);
		}
		global.points += points;
		if ((waveEnder) and (instance_exists(obj_Skylands_Control)))
		{
			var enderEnemyCount = 0;
			with (obj_Skylands_Enemy)
			{
			    if (other.waveEnder)
				{
					enderEnemyCount += 1;
				}
			}
			if (enderEnemyCount == 1) obj_Skylands_Control.waveTimer = waveEnderTimerMax;
		}
		instance_destroy();
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	scaleExX = lerp(scaleExX,0,scaleExSpd);
	scaleExY = lerp(scaleExY,0,scaleExSpd);
	
	image_xscale = scale * dirX;
	image_yscale = scale * dirY;
	
	//Hurt Timer
	
	if (hurtTimer > 0)
	{
		hurtTimer -= 1;
	}
	else if (hurtTimer == 0)
	{
		hurt = false;
		hurtTimer = -1;
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
		if (place_meeting(x,y,obj_Projectile))
		{
			var collidingProjectile = instance_place(x,y,obj_Projectile);
			if ((collidingProjectile.destroyableByEnemy) and (collidingProjectile.owner != id))
			{
				if (collidingProjectile.particleOnHit)
				{
					var particle = instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,obj_Particle);
					particle.sprite_index = collidingProjectile.particleOnHitSpr;
					particle.dir = collidingProjectile.dirX;
					particle.destroyAfterAnimation = true;
				}
				
				if (collidingProjectile.deathParticlesOnHit)
				{
					var particle = instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,obj_DeathParticles);
					particle.state = collidingProjectile.deathParticlesOnHitNumber;
					particle.dir = collidingProjectile.dirX;
				}
				
				if (collidingProjectile.objectOnHit)
				{
					instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,collidingProjectile.objectOnHitObj);
				}
				instance_destroy(collidingProjectile);
			}
		}
	}
	else if (!invincible)
	{
		if (place_meeting(x,y,obj_Projectile))
		{
			var collidingProjectile = instance_place(x,y,obj_Projectile);
			
			if ((collidingProjectile.owner != id) and (((!isBoss) and (collidingProjectile.hurtsEnemy)) or ((isBoss) and (collidingProjectile.hurtsBoss))))
			{
				audio_play_sound(snd_EnemyHurt,0,false);
				hp -= collidingProjectile.dmg;
				scr_HurtKnockback(self,collidingProjectile);
				takenDamageType = collidingProjectile.damageType;
				hurt = true;
				hurtTimer = hurtTimerMax;
				invincible = true;
				invincibleTimer = collidingProjectile.hitInvincibility;
				invincibleFlashTimer = invincibleFlashTimerMax;
			}
			
			if ((collidingProjectile.destroyableByEnemy) and (collidingProjectile.owner != id))
			{
				if (collidingProjectile.particleOnHit)
				{
					var particle = instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,obj_Particle);
					particle.sprite_index = collidingProjectile.particleOnHitSpr;
					particle.dir = collidingProjectile.dirX;
					particle.destroyAfterAnimation = true;
				}
				
				if (collidingProjectile.deathParticlesOnHit)
				{
					var particle = instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,obj_DeathParticles);
					particle.state = collidingProjectile.deathParticlesOnHitNumber;
					particle.dir = collidingProjectile.dirX;
				}
				
				if (collidingProjectile.objectOnHit)
				{
					instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,collidingProjectile.objectOnHitObj);
				}
				instance_destroy(collidingProjectile);
			}
		}
	}
}

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if (pathFollowing != -1) path_start(pathFollowing,spd,path_action_stop,0);
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