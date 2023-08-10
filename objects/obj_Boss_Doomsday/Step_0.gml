///@description Main

#region Death
if (death)
{
	if (!deathFlag)
	{
		if (audio_is_playing(mus_BossDoomsday)) audio_stop_sound(mus_BossDoomsday);
		var fade = instance_create_depth(x,y,-999,obj_FadeTimer);
		fade.alphaSpd = .005;
		fade.targetRoom = rm_Cutscene_BewareTheBeast;
		fade.fadeTimer = 60;
		deathFlag = true;
	}
	
	path_end();
	visible = false;
	attackNumber = -1;
	attackChooseTimer = -1;
}
#endregion

#region Death
if (death)
{
	//Reset All Timers
	
	attackNumber = -1;
	attackChooseTimer = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion

#region Hurt Player
scr_Enemy_HurtsPlayer(dmg);
#endregion

if ((!childPause) or ((global.cutscene) and (phase == 0)))
{
	#region Phases
	switch (phase)
	{
		#region Ready Phase 1
		case 0:
		#region Animation
		if ((spawnState >= 1) and (spawnEyeIndex < sprite_get_number(sprSpawnEye) - 1)) spawnEyeIndex += sprite_get_speed(sprSpawnEye) / 60;
		
		if (spawnState >= 2)
		{
			//if ((global.currentTimePausable % 2) == 0)
			//{
				var par = instance_create_depth(x + irandom_range(-20,20),y + irandom_range(-20,20),depth,obj_Particle);
				par.sprite_index = spr_Particle_BlackSmoke;
				par.vsp = -1.5;
				par.destroyTimer = 15;
			//}
			if ((spawnEyeFlashIndex < sprite_get_number(sprEyeFlash) - 1)) spawnEyeFlashIndex += sprite_get_speed(sprEyeFlash) / 60;
			with (obj_Camera)
			{
				shakeX = 2;
				shakeY = 2;
			}
		}
		
		if (spawnState >= 4)
		{
			auraIndex += sprite_get_speed(sprAura) / 60;
			if (auraIndex >= sprite_get_number(sprAura)) auraIndex -= sprite_get_number(sprAura);
		}
		#endregion
		break;
		#endregion
		
		#region Phase 1
		case 1:
		#region Attacks
		switch (attackNumber)
		{
			case enemyAttacks.doomsday_teleport:
			case enemyAttacks.doomsday_star:
			if (point_distance(x,y,teleportTargetX,teleportTargetY) > spdTeleport)
			{
				move_towards_point(teleportTargetX,teleportTargetY,spdTeleport);
			}
			else
			{
				speed = 0;
			}
			break;
			
			case enemyAttacks.doomsday_circle:
			if (attackState == 2)
			{
				if (point_distance(x,y,teleportTargetX,teleportTargetY) > spdTeleport)
				{
					move_towards_point(teleportTargetX,teleportTargetY,spdTeleport);
				}
				else
				{
					speed = 0;
				}
			}
			else if (attackState == 3)
			{
				if ((global.currentTimePausable % 20) == 0)
				{
					if (audio_is_playing(snd_Spit)) audio_stop_sound(snd_Spit);
					audio_play_sound(snd_Spit,0,false);
					
					var star = instance_create_depth(eyeX,eyeY,depth - 1,obj_Projectile_DoomsdayStar);
					star.owner = id;
					star.sprite_index = sprStar;
					star.enemy = true;
					star.isBoss = true;
					star.destroyableByPlayer = true;
					star.destroyableByEnemy = false;
					star.hurtsObject = false;
					star.hurtsEnemy = false;
					star.hurtsPlayer = true;
				}
			}
			break;
			
			case enemyAttacks.doomsday_bomb:
			if ((attackState == 2) or (attackState == 4))
			{
				if (point_distance(x,y,teleportTargetX,teleportTargetY) > spdTeleport)
				{
					move_towards_point(teleportTargetX,teleportTargetY,spdTeleport);
				}
				else
				{
					speed = 0;
				}
			}
			
			if (currentEyeSprite == sprEyeBomb)
			{
				if (floor(eyeIndex) == 3)
				{
					if (!bombThrown)
					{
						bombThrown = true;
						var bomb = instance_create_depth(eyeX,eyeY,depth - 1,obj_Projectile_DoomsdayBomb);
						bomb.owner = id;
						bomb.sprite_index = sprBomb;
						bomb.dirX = dirX;
						bomb.enemy = true;
						bomb.isBoss = true;
						bomb.destroyableByPlayer = true;
						bomb.destroyableByEnemy = false;
						bomb.hurtsObject = false;
						bomb.hurtsEnemy = false;
						bomb.hurtsPlayer = true;
						bomb.vsp = 4;
					}
				}
			}
			break;
			
			case enemyAttacks.doomsday_laser:
			if (attackState == 2)
			{
				if (point_distance(x,y,teleportTargetX,teleportTargetY) > spdTeleport)
				{
					move_towards_point(teleportTargetX,teleportTargetY,spdTeleport);
				}
				else
				{
					speed = 0;
				}
			}
			else if (attackState == 3)
			{
				//if ((global.currentTimePausable % 2) == 0)
				//{
					var par = instance_create_depth(x + irandom_range(-20,20),y + irandom_range(-20,20),depth,obj_Particle);
					par.sprite_index = spr_Particle_BlackSmoke;
					par.vsp = -1.5;
					par.destroyTimer = 15;
				//}
			}
			break;
		}
		#endregion
		
		#region Animation
		image_speed = 1;
		
		//var xDif = sign(x - xprevious);
		//if (xDif != 0) dirX = xDif;
		dirX = -1;
		
		auraIndex += sprite_get_speed(sprAura) / 60;
		if (auraIndex >= sprite_get_number(sprAura)) auraIndex -= sprite_get_number(sprAura);
		
		eyeIndex += sprite_get_speed(currentEyeSprite) / 60;
		if (eyeIndex >= sprite_get_number(currentEyeSprite))
		{
			eyeIndex -= sprite_get_number(currentEyeSprite);
			
			if (attackNumber == enemyAttacks.doomsday_bomb)
			{
				if (currentEyeSprite == sprEyeBomb)
				{
					currentEyeSprite = sprSpawnBombEye;
					eyeIndex = 0;
				}
				else if (currentEyeSprite == sprSpawnBombEye)
				{
					bombThrown = false;
					currentEyeSprite = sprEyeBomb;
					eyeIndex = 0;
				}
			}
			if (attackNumber == enemyAttacks.doomsday_laser)
			{
				if (currentEyeSprite == sprEyeLaserCharge)
				{
					eyeIndex = sprite_get_number(currentEyeSprite) - 1;
				}
			}
		}
		
		if (afterimageTimer == -1) afterimageTimer = afterimageTimerMax;
		#endregion
		break;
		#endregion
		
		#region Death
		case 2:
		break;
		#endregion
	}
	#endregion
	
	#region Healthbar
	if (hbActive)
	{
		if (hbSetup)
		{
			if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
			audio_play_sound(snd_BossHealth,0,false);
			bossHbHp += hp / 120;
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
	#endregion
	
	#region Timers
	#region Afterimage Timer
	if (afterimageTimer > 0)
	{
		afterimageTimer -= 1;
	}
	else if (afterimageTimer == 0)
	{
		var afim = instance_create_depth(x,y,depth,obj_Afterimage);
		afim.movement = "random";
		afim.lowerAlphaToDestroy = true;
		afim.sprite_index = sprAfterimage;
		afim.image_alpha = random_range(.2,.4);
		afim.hsp = random_range(1,3) * choose(-1,1);
		afim.vsp = random_range(1,3) * choose(-1,1);
		afim.destroyTimer = 5;
		afterimageTimer = -1;
	}
	#endregion
	
	#region Spawn State Timer
	if (spawnStateTimer > 0)
	{
		spawnStateTimer -= 1;
	}
	else if (spawnStateTimer == 0)
	{
		spawnState += 1;
		spawnStateTimer = -1;
		switch (spawnState)
		{
			//Spawn Eye
			case 1:
			spawnStateTimer = 120;
			break;
			
			//Eye Flash
			case 2:
			spawnStateTimer = 60;
			break;
			
			//White Screen Flash
			case 3:
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = "doomsday";
			fade.color = c_white;
			fade.delayMax = 60;
			spawnStateTimer = 50;
			break;
			
			//Change Sprite And Phase Change
			case 4:
			sprite_index = sprBodyNormal;
			phaseChangeTimer = 0;
			break;
		}
	}
	#endregion
	
	#region Phase Change Timer
	if (phaseChangeTimer > 0)
	{
		phaseChangeTimer -= 1;
	}
	else if (phaseChangeTimer == 0)
	{
		switch (phase)
		{
			case 0:
			scr_PlayMusic(true,false,mus_BossDoomsday,0,true);
			global.cutscene = false;
			spawnState = 0;
			hurtable = true;
			attackChooseTimer = attackChooseTimerMax;
			hbActive = true;
			phase += 1;
			break;
		}
		phaseChangeTimer = -1;
	}
	#endregion
	
	#region Attack Choose Timer
	if (attackChooseTimer > 0)
	{
		attackChooseTimer -= 1;
	}
	else if (attackChooseTimer == 0)
	{
		attackNumber = -1;
		switch (phase)
		{
			case 1:
			attackNumber = choose
			(
				enemyAttacks.doomsday_teleport,
				enemyAttacks.doomsday_star,
				//enemyAttacks.doomsday_circle,
				enemyAttacks.doomsday_bomb,
				enemyAttacks.doomsday_laser
			);
			if (attackRng >= 2)
			{
				attackRng = 0;
				//attackNumber = enemyAttacks.doomsday_teleport;
			}
			break;
		}
		
		switch (attackNumber)
		{
			case enemyAttacks.doomsday_teleport:
			case enemyAttacks.doomsday_star:
			teleportCountMax = irandom_range(3,5);
			teleportAttackTimer = 0;
			break;
			
			case enemyAttacks.doomsday_circle:
			attackRng += 1;
			circleAttackTimer = 0;
			break;
			
			case enemyAttacks.doomsday_bomb:
			attackRng += 1;
			bombAttackTimer = 0;
			break;
			
			case enemyAttacks.doomsday_laser:
			attackRng += 1;
			laserAttackTimer = 0;
			break;
		}
		attackChooseTimer = -1;
	}
	#endregion
	
	#region Teleport Attack Timer
	if (teleportAttackTimer > 0)
	{
		teleportAttackTimer -= 1;
	}
	else if (teleportAttackTimer == 0)
	{
		switch (attackState)
		{
			case 0:
			attackState += 1;
			if (attackNumber == enemyAttacks.doomsday_star)
			{
				if (audio_is_playing(snd_Spit)) audio_stop_sound(snd_Spit);
				audio_play_sound(snd_Spit,0,false);
				
				var nearestPlayer = -1;
				if (instance_exists(obj_Player)) nearestPlayer = instance_nearest(x,y,obj_Player);
				
				var star = instance_create_depth(eyeX,eyeY,depth - 1,obj_Projectile_DoomsdayStar);
				star.owner = id;
				star.sprite_index = sprStar;
				if (nearestPlayer != -1) star.targetDir = point_direction(x,y,nearestPlayer.x,nearestPlayer.y);
				star.enemy = true;
				star.isBoss = true;
				star.destroyableByPlayer = true;
				star.destroyableByEnemy = false;
				star.destroyableByWall = false;
				star.hurtsObject = false;
				star.hurtsEnemy = false;
				star.hurtsPlayer = true;
			}
			teleportTargetChooseX = camera_get_view_x(gameView) + irandom_range(30,450);
			teleportTargetChooseY = camera_get_view_y(gameView) + irandom_range(60,160);
			var par = instance_create_depth(teleportTargetChooseX,teleportTargetChooseY,depth,obj_Particle);
			par.sprite_index = sprEyeFlash;
			par.image_speed = 1;
			par.destroyAfterAnimation = true;
			teleportAttackTimer = 30;
			break;
			
			case 1:
			attackState = 0;
			teleportTargetX = teleportTargetChooseX;
			teleportTargetY = teleportTargetChooseY;
			
			teleportCount += 1;
			
			if (teleportCount >= teleportCountMax)
			{
				teleportCount = 0;
				speed = 0;
				attackChooseTimer = attackChooseTimerMax;
				teleportAttackTimer = -1;
			}
			else
			{
				teleportAttackTimer = 45;
			}
			break;
		}
	}
	#endregion
	
	#region Circle Attack Timer
	if (circleAttackTimer > 0)
	{
		circleAttackTimer -= 1;
	}
	else if (circleAttackTimer == 0)
	{
		switch (attackState)
		{
			case 0:
			attackState += 1;
			teleportTargetChooseX = 240;
			teleportTargetChooseY = 100;
			var par = instance_create_depth(teleportTargetChooseX,teleportTargetChooseY,depth,obj_Particle);
			par.sprite_index = sprEyeFlash;
			par.image_speed = 1;
			par.destroyAfterAnimation = true;
			circleAttackTimer = 30;
			break;
			
			case 1:
			attackState += 1;
			teleportTargetX = teleportTargetChooseX;
			teleportTargetY = teleportTargetChooseY;
			circleAttackTimer = 60;
			break;
			
			case 2:
			path_start(pth_Boss_Doomsday_Circle,5,path_action_restart,0);
			circleAttackTimer = 120;
			break;
			
			case 3:
			path_end();
			attackState = 0;
			attackChooseTimer = attackChooseTimerMax;
			circleAttackTimer = -1;
			break;
		}
	}
	#endregion
	
	#region Bomb Attack Timer
	if (bombAttackTimer > 0)
	{
		bombAttackTimer -= 1;
	}
	else if (bombAttackTimer == 0)
	{
		switch (attackState)
		{
			case 0:
			attackState += 1;
			attackDir = choose(-1,1);
			teleportTargetChooseX = camera_get_view_x(gameView) + (240 + (220 * attackDir));
			teleportTargetChooseY = camera_get_view_y(gameView) + 100;
			var par = instance_create_depth(teleportTargetChooseX,teleportTargetChooseY,depth,obj_Particle);
			par.sprite_index = sprEyeFlash;
			par.image_speed = 1;
			par.destroyAfterAnimation = true;
			bombAttackTimer = 30;
			break;
			
			case 1:
			attackState += 1;
			teleportTargetX = teleportTargetChooseX;
			teleportTargetY = teleportTargetChooseY;
			bombAttackTimer = 60;
			break;
			
			case 2:
			attackState += 1;
			hsp = 1.5 * -attackDir;
			currentEyeSprite = sprEyeBomb;
			bombAttackTimer = 250;
			break;
			
			case 3:
			attackState += 1;
			hsp = 0;
			teleportTargetX = (240 - (200 * attackDir));
			teleportTargetY = 190;
			currentEyeSprite = sprEye;
			bombAttackTimer = 60;
			break;
			
			case 4:
			attackState = 0;
			bombThrown = false;
			attackChooseTimer = attackChooseTimerMax;
			bombAttackTimer = -1;
			break;
		}
	}
	#endregion
	
	#region Laser Attack Timer
	if (laserAttackTimer > 0)
	{
		laserAttackTimer -= 1;
	}
	else if (laserAttackTimer == 0)
	{
		switch (attackState)
		{
			case 0:
			attackState += 1;
			attackDir = choose(-1,1);
			teleportTargetChooseX = camera_get_view_x(gameView) + (240 + (220 * attackDir));
			teleportTargetChooseY = camera_get_view_y(gameView) + 100;
			var par = instance_create_depth(teleportTargetChooseX,teleportTargetChooseY,depth,obj_Particle);
			par.sprite_index = sprEyeFlash;
			par.image_speed = 1;
			par.destroyAfterAnimation = true;
			laserAttackTimer = 30;
			break;
			
			case 1:
			attackState += 1;
			teleportTargetX = teleportTargetChooseX;
			teleportTargetY = teleportTargetChooseY;
			laserAttackTimer = 60;
			break;
			
			case 2:
			attackState += 1;
			currentEyeSprite = sprEyeLaserCharge;
			laserAttackTimer = 120;
			break;
			
			case 3:
			attackState += 1;
			var laser = instance_create_depth(eyeX,eyeY,depth - 1,obj_Projectile_DoomsdayLaser);
			laser.owner = id;
			laser.enemy = true;
			laser.isBoss = true;
			laser.hurtsObject = false;
			laser.hurtsEnemy = false;
			laser.hurtsPlayer = true;
			hsp = 1.5 * -attackDir;
			currentEyeSprite = sprEyeLaser;
			laserAttackTimer = 230;
			laser.destroyTimer = laserAttackTimer;
			break;
			
			case 4:
			attackState += 1;
			hsp = 0;
			currentEyeSprite = sprEye;
			laserAttackTimer = 30;
			break;
			
			case 5:
			attackState = 0;
			attackChooseTimer = attackChooseTimerMax;
			laserAttackTimer = -1;
			break;
		}
	}
	#endregion
	#endregion
}
else
{
	speed = 0;
}