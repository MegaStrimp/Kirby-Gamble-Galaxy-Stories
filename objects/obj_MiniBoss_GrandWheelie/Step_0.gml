///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_GrandWheelie_Normal_Idle;
		sprWalk = spr_Wizzkid_Normal_Walk;
		sprHighJump = spr_Wizzkid_Normal_HighJump;
		sprHighFall = spr_Wizzkid_Normal_HighFall;
		sprLaserReady = spr_Wizzkid_Normal_LaserReady;
		sprLaser = spr_Wizzkid_Normal_Laser;
		sprLaserRelease = spr_Wizzkid_Normal_LaserRelease;
		sprDeathAir = spr_Wizzkid_Normal_DeathAir;
		sprDeathGround = spr_Wizzkid_Normal_DeathGround;
		
		sprLaserProjStart = spr_Wizzkid_Normal_LaserProjStart;
		sprLaserProjLoop = spr_Wizzkid_Normal_LaserProjLoop;
		sprLaserProjParticle = spr_Wizzkid_Normal_LaserProjParticle;
		break;
		#endregion
	}
	walkDirX = 1;
	if ((instance_exists(obj_Player)) and (obj_Player.x < x)) walkDirX = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	#region Hurt Player
	scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
	#region Friction
	hsp = scr_Friction(hsp,decel);
	#endregion
	
	#region Healthbar
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
	#endregion
	
	#region Movement
	if (!attack)
	{
		var nearestPlayer = -1;
		nearestPlayer = instance_nearest(x,y,obj_Player);
		
		if (nearestPlayer > x)
		{
			walkDirX = 1;
		}
		else
		{
			walkDirX = -1;
		}
		
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
			
			case enemyAttacks.grandwheelie_tornado: ///Doesnt slam on the wall and isntead keeps trying to follow Kirby

				if attackStopTimer>420{
					if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
					audio_play_sound(snd_Charge_Ready,0,false);

				} else {
					var nearestPlayer = -1;
					nearestPlayer = instance_nearest(x,y,obj_Player);
					slammed=0
					if (nearestPlayer.x > x)
					{
						walkDirX = 1;
					}
					else
					{
						walkDirX = -1;
					}
					attackState = 1;
					sprite_index = sprCharge;
					image_index = 0;
					hsp+=walkDirX*3
					if abs(hsp)>5 hsp=5*sign(hsp)
					if attackStopTimer % 10{ //Leave stars while running
						var par = instance_create_depth(x + parXDir,y - 8,depth - 1,obj_RecoilStar);

						par.hsp = -hsp;
						par.dir = sign(par.hsp);
						par.hurtsObject = false;
						par.hurtsEnemy = false;
						par.canBeInhaled = true;
						par.destroyTimer = 25;
					
					}			
					
					
				}
			break;
			
			case enemyAttacks.grandwheelie_slam://Slam against the wall with no precaution

				if attackStopTimer>60{
					if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
					audio_play_sound(snd_Charge_Ready,0,false);
					attackState = 1;
					sprite_index = sprCharge;
					image_index = 0;
				} else {
					if !slammed{
						hsp+=walkDirX*3
						if abs(hsp)>5 hsp=5*sign(hsp)
						if attackStopTimer % 10{ //Leave stars while running
							var par = instance_create_depth(x + parXDir,y - 8,depth - 1,obj_RecoilStar);

							par.hsp = -hsp;
							par.dir = sign(par.hsp);
							par.hurtsObject = false;
							par.hurtsEnemy = false;
							par.canBeInhaled = true;
							par.destroyTimer = 25;
					
						}
						if (place_meeting(x+hsp,y,collisionX)){
							attackStopTimer=40
							hsp=-2
							vsp=-2
							slammed=1
						} 
					} else {
					
						sprite=sprHurtAir
					}
					
					
				}
			break;
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
		attackNumber = choose(enemyAttacks.grandwheelie_slam,enemyAttacks.grandwheelie_tornado,enemyAttacks.grandwheelie_projectile);
		switch (attackNumber)
		{
			case enemyAttacks.grandwheelie_tornado:
			attack = true;
			attackStopTimer = 480;
			break;
			
			case enemyAttacks.grandwheelie_slam:
			attack = true;
			attackStopTimer = 120;
			break;
			case enemyAttacks.grandwheelie_projectile:
			attack = true;
			attackStopTimer = 240;
			break;
		}
		attackReadyTimer = -1;
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
	dirX = -walkDirX; //Yeah uh I imported the sprite flipped horizontally, my bad.
	
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
		
		case enemyAttacks.grandwheelie_slam:
		if ((hasYCollision) and (place_meeting(x,y + (1 + vspFinal),collisionY)))
		{
			sprite_index = sprHighFall;
		}
		else
		{
			if (hsp == 0)
			{
				sprite_index = sprIdle;
			}
			else
			{
				sprite_index = sprDash;
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
	shakeX = 0;
	shakeY = 0;
}