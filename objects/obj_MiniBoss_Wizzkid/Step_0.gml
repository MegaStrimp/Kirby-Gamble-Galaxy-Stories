///@description Main

#region Event Inherited
event_inherited();
#endregion

#region Friction
if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);
#endregion

#region Healthbar
if (!childPauseHard)
{
	if (hbActive)
	{
		if (hbSetup)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			bossHbHp += hp / 60;
			if (bossHbHp >= hp)
			{
				bossHbHp = hp;
				hbSetup = false;
			}
		}
		else
		{
			bossHbHp = hp;
		}
	}
}
#endregion

#region Hurt Player
scr_Enemy_HurtsPlayer(dmg);
#endregion

if (!childPause)
{
	#region Movement
	if ((!attack) or ((attackNumber == enemyAttacks.wizzkid_laser) and (attackState == 0)))
	{
		var nearestPlayer = -1;
		nearestPlayer = instance_nearest(x,y,obj_Player);
		
		if ((!attack) and (nearestPlayer != -1) and (instance_exists(nearestPlayer))) slideTargetX = nearestPlayer.x;
		
		if (slideTargetX > x)
		{
			walkDirX = 1;
		}
		else
		{
			walkDirX = -1;
		}
		
		if (slideTimer == -1) slideTimer = slideTimerMax;
	}
	#endregion
	
	#region Attack
	if (attack)
	{
		switch (attackNumber)
		{
			case enemyAttacks.wizzkid_jump:
			if ((attackState == 0) and (hasYCollision) and (place_meeting(x,y + (1 + vspFinal),collisionY)) and (vsp > 1))
			{
				if (audio_is_playing(snd_BeamBombExplode)) audio_stop_sound(snd_BeamBombExplode);
				audio_play_sound(snd_BeamBombExplode,0,false);
				for (var i = 0; i < 2; i++)
				{
					var parXDir = 2;
					if (i == 1) var parXDir = -2;
					var par = instance_create_depth(x + parXDir,y - 8,depth - 1,obj_RecoilStar);
					if (i == 0)
					{
						par.hsp = 3;
					}
					else if (i == 1)
					{
						par.hsp = -3;
					}
					par.dir = sign(par.hsp);
					par.hurtsObject = false;
					par.hurtsEnemy = false;
					par.canBeInhaled = true;
					par.destroyTimer = 25;
				}
				attackState = 1;
				attackStopTimer = 30;
				with (obj_Camera) shakeY = 3;
			}
			break;
			
			case enemyAttacks.wizzkid_laser:
			switch (attackState)
			{
				case 0:
				if ((x <= xLimit1) or (x >= xLimit2))
				{
					if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
					audio_play_sound(snd_Charge_Ready,0,false);
					slideTimer = -1;
					var nearestPlayer = -1;
					nearestPlayer = instance_nearest(x,y,obj_Player);
					
					if ((nearestPlayer != -1) and (instance_exists(nearestPlayer))) slideTargetX = nearestPlayer.x;
					
					if (nearestPlayer.x > x)
					{
						walkDirX = 1;
					}
					else
					{
						walkDirX = -1;
					}
					attackState = 1;
					sprite_index = sprLaserReady;
					image_index = 0;
				}
				break;
			}
		}
	}
	#endregion
	
	#region Slide Timer
	if (slideTimer > 0)
	{
		slideTimer -= 1;
	}
	else if (slideTimer == 0)
	{
		if (grounded)
		{
			image_index = 0;
			hsp = movespeed * walkDirX;
			slideTimer = -1;
		}
	}
	#endregion
	
	#region Attack Ready Timer
	if (attackReadyTimer > 0)
	{
		attackReadyTimer -= 1;
	}
	else if (attackReadyTimer == 0)
	{
		attackNumber = choose(enemyAttacks.wizzkid_jump,enemyAttacks.wizzkid_jump,enemyAttacks.wizzkid_laser);
		switch (attackNumber)
		{
			case enemyAttacks.wizzkid_jump:
			slideTimer = -1;
			if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
			audio_play_sound(snd_BigJump,0,false);
			attack = true;
			vsp = -jumpspeedHighJump;
			attackStopTimer = 480;
			break;
			
			case enemyAttacks.wizzkid_laser:
			slideTargetX = xLimit1;
			if (x > xstart) slideTargetX = xLimit2;
			attack = true;
			break;
		}
		attackReadyTimer = -1;
	}
	#endregion
	
	#region Jump Attack Timer
	if (jumpAttackTimer > 0)
	{
		jumpAttackTimer -= 1;
	}
	else if (jumpAttackTimer == 0)
	{
		jumpAttackTimer = -1;
	}
	#endregion
	
	#region Laser Attack Timer
	if (laserAttackTimer > 0)
	{
		laserAttackTimer -= 1;
	}
	else if (laserAttackTimer == 0)
	{
		if (attackState == 2)
		{
			sprite_index = sprLaserRelease;
			image_index = 0;
		}
		laserAttackTimer = -1;
	}
	#endregion
	
	#region Attack Stop Timer
	if (attackStopTimer > 0)
	{
		attackStopTimer -= 1;
	}
	else if (attackStopTimer == 0)
	{
		attack = false;
		attackNumber = -1;
		attackState = 0;
		attackReadyTimer = attackReadyTimerMax;
		attackStopTimer = -1;
	}
	#endregion
	
	#region Animation
	dirX = walkDirX;
	
	image_speed = 1;
	
	switch (attackNumber)
	{
		case -1:
		if (hsp == 0)
		{
			sprite_index = sprIdle;
		}
		else
		{
			sprite_index = sprWalk;
		}
		break;
		
		case enemyAttacks.wizzkid_jump:
		if ((hasYCollision) and (place_meeting(x,y + (1 + vspFinal),collisionY)))
		{
			sprite_index = sprHighFall;
		}
		else
		{
			if (vsp > 0)
			{
				sprite_index = sprHighFall;
			}
			else
			{
				sprite_index = sprHighJump;
			}
		}
		break;
		
		case enemyAttacks.wizzkid_laser:
		switch (attackState)
		{
			case 0:
			if (hsp == 0)
			{
				sprite_index = sprIdle;
			}
			else
			{
				sprite_index = sprWalk;
			}
			break;
		}
		break;
	}
	#endregion
}
else
{
	image_speed = 0;
}