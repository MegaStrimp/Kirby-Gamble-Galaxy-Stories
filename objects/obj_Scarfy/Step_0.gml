///@description Main

//Hurt Sprite

if (attack)
{
	sprHurt = sprMadHurt;
}
else
{
	sprHurt = sprCalmHurt;
}

//Event Inherited

event_inherited();

if (!childPause)
{
	//Get Inhaled
	
	if (place_meeting(x,y,obj_InhaleMask))
	{
		if ((!attack) and (state != 1))
		{
			particleCount = 0;
			particleTimer = 0;
			attack = true;
			hp = 1;
			imageSpeed = .5;
		}
		shakeX = 2;
		shakeY = 2;
	}
	else
	{
		shakeX = 0;
		shakeY = 0;
	}
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//Key Scarfy
	
	if (state == 1)
	{
		if (instance_exists(obj_Player))
		{
			playerHasKey = false;
			with (obj_Player)
			{
				if ((carriedItem == carriedItems.key) or (carriedItem == carriedItems.keyChestKey))
				{
					other.playerHasKey = true;
				}
			}
			
			if (playerHasKey)
			{
				if (!attack)
				{
					attack = true;
					attackState = 1;
					imageSpeed = 2;
					accelOld = accel;
					movespeedOld = movespeed;
					jumpspeedOld = jumpspeed;
					accel = .2;
					movespeed = 1.5;
					jumpspeed = 1.5;
				}
			}
			else
			{
				if (attack)
				{
					imageSpeed = 1;
					accel = accelOld;
					movespeed = movespeedOld;
					jumpspeed = jumpspeedOld;
					attack = false;
					hsp = 0;
					vsp = 0;
				}
			}
		}
	}
	
	//States
	
	switch (state)
	{
		//Vertical Wave Movement with Horizontal Straight Movement
		
		case 0:
		case 1:
		//Follow Player
		
		if (instance_exists(obj_Player))
		{
			var nearestPlayer = instance_nearest(x,y,obj_Player);
			if (nearestPlayer.x < x)
			{
				dirX = -1;
			}
			else
			{
				dirX = 1;
			}
		}
		break;
	}
	
	if (attack)
	{
		if (attackState == 0)
		{
			shakeX = 2;
			shakeY = 2;
			hsp = .5 * -dirX;
			vsp = 0;
			if (imageSpeed < 2)
			{
				imageSpeed += .02;
			}
			else if (imageSpeed >= 2)
			{
				imageSpeed = 2;
				accel = .2;
				movespeed = 1.5;
				jumpspeed = 1.5;
				attackState = 1;
			}
		}
		else if (attackState == 1)
		{
			hsp += accel * walkDirX;
			vsp += accel * walkDirY;
			hsp = clamp(hsp,-movespeed,movespeed);
			vsp = clamp(vsp,-jumpspeed,jumpspeed);
			
			var nearestPlayer = instance_nearest(x,y,obj_Player);
			var newDirX = 1;
			if (nearestPlayer.x < x) newDirX = -1;
			var newDirY = 1;
			if (nearestPlayer.y < y) newDirY = -1;
			
			if ((newDirX != walkDirX) and (canTurnX))
			{
				walkDirX = newDirX;
				canTurnX = false;
				canTurnXTimer = canTurnXTimerMax + irandom_range(0,floor(canTurnXTimerMax / 2));
			}
			if ((newDirY != walkDirY) and (canTurnY))
			{
				walkDirY = newDirY;
				canTurnY = false;
				canTurnYTimer = canTurnYTimerMax + irandom_range(0,floor(canTurnXTimerMax / 2));;
			}
		}
		else if (attackState == 2)
		{
			shakeX = 2;
			shakeY = 2;
			hsp = 0;
			vsp = 0;
			if (imageSpeed < 3)
			{
				imageSpeed += .02;
			}
			else if (imageSpeed >= 3)
			{
				if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
				audio_play_sound(snd_Explosion1,0,false);
				
				var par = instance_create_depth(x,y,depth,obj_Projectile_ExplosionMask);
				par.owner = id;
				par.enemy = true;
				par.abilityType = playerAbilities.bomb;
				par.dmg = scarfy_Explosion_Damage;
				scr_Attack_SetKnockback(par,scarfy_Explosion_Strength,scarfy_Explosion_HitStopAffectSource,scarfy_Explosion_HitStopAffectPlayer,scarfy_Explosion_HitStopAffectTarget,scarfy_Explosion_HitStopLength,scarfy_Explosion_HitStopShakeStrength);
				
				var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
				explosion.state = "explosion1";
				
				hasDeathKnockback = false;
				hasDeathParticles = false;
				death = true;
			}
		}
		
		//Particle Timer
		
		if (particleTimer > 0)
		{
			particleTimer -= 1;
		}
		else if (particleTimer == 0)
		{
			particleCount += 1;
			var par = instance_create_depth(x + (12 * choose(-1,1)),y + (12 * choose(-1,1)),depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Shine1;
			par.destroyAfterAnimation = true;
			par.pausable = false;
			if (particleCount >= 3)
			{
				particleTimer = -1;
			}
			else
			{
				particleTimer = particleTimerMax;
			}
		}
		
		#region Attack Timer
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			invincible = true;
			invincibleFlashTimer = invincibleFlashTimerMax;
			attackState = 2;
			attackTimer = -1;
		}
		#endregion
		
		#region Can Turn X Timer
		if (canTurnXTimer > 0)
		{
			canTurnXTimer -= 1;
		}
		else if (canTurnXTimer == 0)
		{
			canTurnX = true;
			canTurnXTimer = -1;
		}
		#endregion
		
		#region Can Turn Y Timer
		if (canTurnYTimer > 0)
		{
			canTurnYTimer -= 1;
		}
		else if (canTurnYTimer == 0)
		{
			canTurnY = true;
			canTurnYTimer = -1;
		}
		#endregion
	}
	else
	{
		if ((hurt) and (state != 1))
		{
			particleCount = 0;
			particleTimer = 0;
			attack = true;
			imageSpeed = .5;
		}
		scr_AI_VerticalWaveMovement(false);
	}
	
	if ((hurt) and (sprHurt != -1))
	{
		image_speed = 1 * imageSpeed;
		sprite_index = sprHurt;
	}
	else
	{
		image_speed = 1;
		
		if (attack)
		{
			sprite_index = sprMadFly;
		}
		else
		{
			if (sign(hsp) > 0)
			{
				sprite_index = sprCalmFly;
			}
			else
			{
				sprite_index = sprCalmIdle;
			}
		}
	}
}
else
{
	image_speed = 0;
}