///@description Main

#region Aura
switch (sprite_index)
{
	case sprIdle:
	switch (auraState)
	{
		case 0:
		sprAura = sprAura1Idle;
		break;
		
		case 1:
		sprAura = sprAura2Idle;
		break;
		
		case 2:
		sprAura = sprAura3Idle;
		break;
		
		case 3:
		sprAura = sprAura4Idle;
		break;
	}
	break;
	
	case sprAttack:
	switch (auraState)
	{
		case 0:
		sprAura = sprAura1Attack;
		break;
		
		case 1:
		sprAura = sprAura2Attack;
		break;
		
		case 2:
		sprAura = sprAura3Attack;
		break;
		
		case 3:
		sprAura = sprAura4Attack;
		break;
	}
	break;
	
	case sprHurt:
	switch (auraState)
	{
		case 0:
		sprAura = sprAura1Hurt;
		break;
		
		case 1:
		sprAura = sprAura2Hurt;
		break;
		
		case 2:
		sprAura = sprAura3Hurt;
		break;
		
		case 3:
		sprAura = sprAura4Hurt;
		break;
	}
	break;
}
#endregion

#region DirX
dirX = 1;
#endregion

#region Event Inherited
event_inherited();
#endregion

#region Friction
hsp = scr_Friction(hsp,decel);
vsp = scr_Friction(vsp,decel);
#endregion

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	#region Hurt Player
	scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
	#region States
	switch (state)
	{
		#region Normal
		case 0:
		#region Movement
		if ((!attack) and (!hurt))
		{
		    hsp += accel * walkDirX;
		    vsp += accel * walkDirY;
		}
		hsp = clamp(hsp,-movespeed,movespeed);
		vsp = clamp(vsp,-jumpspeed,jumpspeed);
		
		if (!attack)
		{
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
		#endregion
		
		#region Attack
		if ((attackTimer == -1) and (!hurt)) attackTimer = attackTimerMax;
		#endregion
		
		#region Face
		faceX = lerp(faceX,walkDirX * 4,.1);
		#endregion
		
		#region Animation
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if ((attack) and (attackState == 1))
			{
				sprite_index = sprAttack;
			}
			else
			{
				sprite_index = sprIdle;
			}
		}
		#endregion
		break;
		#endregion
		
		#region Move Upwards
		case 1:
		#region Movement
		var nearestPlayer = instance_nearest(x,y,obj_Player);
		var newDirX = 1;
		if (nearestPlayer.x < x) newDirX = -1;
		var newDirY = 1;
		if (nearestPlayer.y < y) newDirY = -1;
		
		if (active)
		{
			if ((!attack) and (!hurt))
			{
			    vsp -= accel * walkDirY;
				grounded = false;
			}
		}
		else
		{
			if (abs(nearestPlayer.x - x) <= activateRange) active = true;
		}
		vsp = clamp(vsp,-jumpspeed,jumpspeed);
		#endregion
		
		#region Attack
		if ((active) and (attackTimer == -1) and (!hurt)) attackTimer = attackTimerMax;
		#endregion
		
		#region Face
		var nearestPlayer = instance_nearest(x,y,obj_Player);
		var newDirX = 1;
		if (nearestPlayer.x < x) newDirX = -1;
		walkDirX = newDirX;
		
		faceX = lerp(faceX,walkDirX * 4,.1);
		#endregion
		
		#region Animation
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if ((attack) and (attackState == 1))
			{
				sprite_index = sprAttack;
			}
			else
			{
				sprite_index = sprIdle;
			}
		}
		#endregion
		break;
		#endregion
		
		#region Stand Still and Shoot
		case 2:
		
		#region Attack
		if ((attackTimer == -1) and (!hurt)) attackTimer = attackTimerMax;
		#endregion
		
		#region Face
		var nearestPlayer = instance_nearest(x,y,obj_Player);
		var newDirX = 1;
		if (nearestPlayer.x < x) newDirX = -1;
		walkDirX = newDirX;
		
		faceX = lerp(faceX,walkDirX * 4,.1);
		#endregion
		
		#region Animation
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if ((attack) and (attackState == 1))
			{
				sprite_index = sprAttack;
			}
			else
			{
				sprite_index = sprIdle;
			}
		}
		#endregion
		break;
		#endregion
	}
	#endregion
	
	#region Attack Timer
	if (!hurt)
	{
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			switch (attackState)
			{
				case 0:
				attack = true;
				attackState = 1;
				attackTimer = 60;
				break;
				
				case 1:
				switch (state)
				{
					case 0:
					attackCountMax = irandom_range(1,4);
					break;
					
					case 1:
					attackCountMax = 1;
					break;
				}
				attackState = 2;
				attackTimer = 0;
				break;
				
				case 2:
				if (attackCount == attackCountMax)
				{
					attack = false;
					attackCount = 0;
					attackState = 0;
					attackTimer = attackTimerMax;
				}
				else
				{
					attackCount += 1;
					sprite_index = sprAttack;
					if (audio_is_playing(snd_Laser)) audio_stop_sound(snd_Laser);
					audio_play_sound(snd_Laser,0,false);
					var projectile = instance_create_depth(x,y,depth - 1,obj_Projectile_LaserBall);
					projectile.paletteIndex = paletteIndex;
					projectile.character = 0;
					projectile.owner = id;
					var projAngle = 0;
					if (walkDirX == -1) projAngle = 1;
					switch (projAngle)
					{
						case 0:
						projectile.dirX = 1;
						projectile.hsp = projectile.spd * 1;
						break;
						
						case 1:
						projectile.dirX = -1;
						projectile.hsp = projectile.spd * -1;
						break;
						
						case 2:
						projectile.dirY = 1;
						imageAngle = 270;
						image_angle = 270;
						projectile.vsp = projectile.spd * 1;
						break;
						
						case 3:
						projectile.dirY = -1;
						imageAngle = 270;
						image_angle = 270;
						projectile.vsp = projectile.spd * -1;
						break;
					}
					projectile.dirX = walkDirX;
					projectile.hsp = projectile.spd * projectile.dirX;
					projectile.image_xscale = projectile.dirX;
					projectile.enemy = true;
					projectile.abilityType = playerAbilities.beam;
					projectile.dmg = laserBall_Laser_Damage;
					scr_Attack_SetKnockback(projectile,laserBall_Laser_Strength,laserBall_Laser_HitStopAffectSource,laserBall_Laser_HitStopAffectPlayer,laserBall_Laser_HitStopAffectTarget,laserBall_Laser_HitStopLength,laserBall_Laser_HitStopShakeStrength);
					projectile.destroyableByEnemy = false;
					projectile.hurtsObject = false;
					projectile.hurtsEnemy = false;
					projectile.hurtsPlayer = true;
					if (state == 2)
					{
						projectile.moveAngleActive = true;
						projectile.moveAngleLimitMax = moveAngleLimitMax;
						projectile.destroyTimer = floor(projectile.destroyTimer / 2);
					}
					attackTimer = 10;
				}
				break;
			}
		}
	}
	else
	{
		attackTimer = -1;
		attack = false;
		attackState = 0;
		attackCount = 0;
	}
	#endregion
	
	#region Aura Timer
	if (auraTimer > 0)
	{
		auraTimer -= 1;
	}
	else if (auraTimer == 0)
	{
		auraState += 1;
		if (auraState > 3) auraState -= 4;
		auraTimer = -1;
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
	image_speed = 0;
}
