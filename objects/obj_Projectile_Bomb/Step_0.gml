///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Bomb_Normal;
		sprBig = spr_Projectile_Bomb_Normal_Big;
		break;
		
		//Modern
		
		case 1:
		sprIdle = spr_Projectile_Bomb_Modern;
		sprBig = spr_Projectile_Bomb_Modern_Big;
		break;
		
		//Egg
		
		case 2:
		sprIdle = spr_Projectile_Bomb_Egg;
		sprBig = spr_Projectile_Bomb_Egg_Big;
		break;
		
		//Fetus
		
		case 3:
		sprIdle = spr_Projectile_Bomb_Fetus;
		sprBig = spr_Projectile_Bomb_Fetus;
		break;
	}
	
	if (hasHoming)
	{
		if (hasRemoteDetonation)
		{
			if (hasMagma)
			{
				sprIdle = spr_Projectile_Bomb_Normal_EyStMa;
				sprBig = spr_Projectile_Bomb_Normal_EyStMaBig;
				canRotate = true;
				hasParticle = false;
			}
			else
			{
				sprIdle = spr_Projectile_Bomb_Normal_EySt;
				sprBig = spr_Projectile_Bomb_Normal_EyStBig;
				canRotate = false;
				hasParticle = false;
			}
		}
		else if (hasMagma)
		{
			sprIdle = spr_Projectile_Bomb_Normal_EyMa;
			sprBig = spr_Projectile_Bomb_Normal_EyMaBig;
		}
		else
		{
			sprIdle = spr_Projectile_Bomb_Normal_Ey;
			sprBig = spr_Projectile_Bomb_Normal_BigEy;
		}
	}
	else if (hasRemoteDetonation)
	{
		if (hasMagma)
		{
			sprIdle = spr_Projectile_Bomb_Normal_StMa;
			sprBig = spr_Projectile_Bomb_Normal_StMaBig;
			canRotate = false;
			hasParticle = false;
		}
		else
		{
			sprIdle = spr_Projectile_Bomb_Normal_St;
			sprBig = spr_Projectile_Bomb_Normal_BigSt;
			canRotate = false;
			hasParticle = false;
		}
	}
	else if (hasMagma)
	{
		sprIdle = spr_Projectile_Bomb_Normal_Ma;
		sprBig = spr_Projectile_Bomb_Normal_BigMa;
		hasParticle = false;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{	
	//Event Inherited
	
	if (active)
	{
		if (enemy)
		{
			destroyableByPlayer = true;
			destroyableByEnemy = false;
			hurtsObject = false;
			hurtsEnemy = false;
			hurtsBoss = false;
			hurtsPlayer = true;
		}
		else
		{
			
			destroyableByPlayer = false;
			destroyableByEnemy = true;
			hurtsObject = true;
			hurtsEnemy = true;
			hurtsBoss = true;
			hurtsPlayer = false;
		}
		if (!hasRemoteDetonation)
		{
			destroyableByWall = true;
			destroyableByObject = true;
		}
		destroyableByProjectile = false;
	}
	else
	{
		destroyableByWall = false;
		destroyableByPlayer = false;
		destroyableByEnemy = false;
		destroyableByObject = false;
		destroyableByProjectile = false;
		hurtsObject = false;
		hurtsEnemy = false;
		hurtsBoss = false;
		hurtsPlayer = false;
		hurtsProjectile = false;
	}
	
	event_inherited();
	
	//Get Inhaled
	
	if (canBeInhaled) scr_Object_Inhale(false);
	
	//Inputs
	
	scr_Player_Inputs(player);
	
	if (active)
	{
		//Rotation
		
		if (canRotate) image_angle += angleSpd * dirX;
		
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
		
		//Remote Detonation
		
		if (hasRemoteDetonation)
		{
			//Explode
			
			if (keyAttackPressed)
			{
				var particle = instance_create_depth(x,y,depth,obj_DeathParticles);
				particle.state = "explosion1";
				var proj = instance_create_depth(x,y,depth,obj_Projectile_ExplosionMask);
				if (objectOnHitDmg != "none") proj.dmg = dmg;
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
				instance_destroy();
			}
			
			//Collision
			
			if ((place_meeting(x + 1,y,obj_Wall)) or (place_meeting(x - 1,y,obj_Wall)) or (place_meeting(x,y - 1,obj_Wall)) or (place_meeting(x,y + 1,obj_Wall)))
			{
				hsp = 0;
				vsp = 0;
				angleSpd = 0;
			}
		}
		
		//Homing
		
		if (hasHoming)
		{
			if (homingEnemy == -1)
			{
				with (obj_Enemy)
				{
					if ((!hurt) and (x >= other.x - 12) and (x <= other.x + 12) and (y >= other.y) and (y <= other.y + 72)) other.homingEnemy = id;
				}
			}
			if (instance_exists(homingEnemy))
			{
				if (!hasGravity) hasGravity = true;
				x = lerp(x,homingEnemy.x,.1);
			}
			else
			{
				homingEnemy = -1;
			}
		}
		
		//Position
		
		if (homingEnemy == -1) x += hsp;
		y += vsp;
		
		depth = layer_get_depth("Environment");
	}
	else
	{
		if (!enemy) depth = layer_get_depth("Player");
		
		if ((!instance_exists(owner)) or ((destroyAfterHurt) and (instance_exists(owner)) and (enemy) and (owner.hurt))) instance_destroy();
		
		//Self Explode Timer
		
		if (selfExplodeTimer > 0)
		{
			selfExplodeTimer -= 1;
		}
		else if (selfExplodeTimer == 0)
		{
			if (audio_is_playing(snd_BombExplode)) audio_stop_sound(snd_BombExplode);
			audio_play_sound(snd_BombExplode,0,false);
			var particle = instance_create_depth(x,y,depth,obj_DeathParticles);
			particle.state = "explosion1";
			var obj = instance_create_depth(x,y,depth,objectOnHitObj);
			obj.dmg = 0;
			if (objectOnHitObj == obj_Projectile_ExplosionMask)
			{
				if (!enemy)
				{
					owner.carriedItem = carriedItems.none;
					owner.carriedItemIndex = -1;
					owner.carriedItemState = carriedItemStates.none;
					obj.enemy = true;
					obj.hurtsEnemy = false;
					obj.hurtsPlayer = true;
				}
				else
				{
					obj.enemy = false;
					obj.hurtsEnemy = true;
					obj.hurtsPlayer = false;
				}
			}
			instance_destroy();
			selfExplodeTimer = -1;
		}
	}
	
	//Particle Index
	
	explosionIndex += .5;
	if (explosionIndex >= (sprite_get_number(spr_Particle_Bomb1))) explosionIndex -= (sprite_get_number(spr_Particle_Bomb1));
	
	//Explode Timer
	
	if (explodeTimer > 0)
	{
		explodeTimer -= 1;
	}
	else if (explodeTimer == 0)
	{
		if (audio_is_playing(snd_BombExplode)) audio_stop_sound(snd_BombExplode);
		audio_play_sound(snd_BombExplode,0,false);
		var obj = instance_create_depth(x,y,depth,objectOnHitObj);
		if (objectOnHitDmg != "none") obj.dmg = objectOnHitDmg;
		if (objectOnHitObj == obj_Projectile_ExplosionMask)
		{
			obj.enemy = enemy;
			obj.hurtsEnemy = !enemy;
			obj.hurtsPlayer = enemy;
		}
		instance_destroy();
		explodeTimer = -1;
	}
	
	//Animation
	
	sprite_index = sprIdle;
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}