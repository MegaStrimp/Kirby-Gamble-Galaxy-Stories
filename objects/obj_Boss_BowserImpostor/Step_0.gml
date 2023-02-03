///@description Main

#region Death
if (death)
{
	if (!deathFlag)
	{
		if (audio_is_playing(mus_SMB_Bowser)) audio_stop_sound(mus_SMB_Bowser);
		deathFlag = true;
		instance_create_depth(x,y,depth,obj_Boss_BowserImpostor_Death);
	}
	
	path_end();
	visible = false;
}
#endregion

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_SMB_BowserImpostor_Idle;
		sprFire = spr_SMB_BowserImpostor_Fire;
		sprHammerL = spr_SMB_BowserImpostor_HammerL;
		sprHammerR = spr_SMB_BowserImpostor_HammerR;
		sprDeath = spr_SMB_BowserImpostor_Death;
		break;
		#endregion
	}
	
	if (phase == 0)
	{
		global.cutscene = true;
		phaseChangeTimer = 240;
		instance_create_depth(225,148,depth,obj_Mario_Death);
	}
}
#endregion

#region Death
if (death)
{
	//Reset All Timers
	
	fireTimer = fireTimerMin;
	jumpTimer = jumpTimerMin;
	attackState = 0;
}
#endregion

#region Event Inherited
event_inherited();
#endregion

if ((!global.pause) and (((!global.cutscene) or ((global.cutscene) and (phase == 0))) and (pausedInCutscenes)))
{
	#region Hurt Player
	if (!death) scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
	#region Phases
	switch (phase)
	{
		#region Ready Phase 1
		case 0:
		break;
		#endregion
		
		#region Phase 1
		case 1:
		#region Movement
		if (x <= 160) walkDirX = 1;
		if (x >= 400) walkDirX = -1;
		
		if (attackState != 1) hsp = movespeed * walkDirX;
		#endregion
		
		#region Animation
		image_speed = 1;
		
		if (attackState == 1)
		{
			sprite_index = sprFire;
		}
		else
		{
			sprite_index = sprIdle;
		}
		#endregion
		break;
		#endregion
		
		#region Ready Phase 2
		case 2:
		break;
		#endregion
		
		#region Phase 2
		case 3:
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
	#endregion
	
	#region Timers
	#region Spawn State Timer
	if (spawnStateTimer > 0)
	{
		spawnStateTimer -= 1;
	}
	else if (spawnStateTimer == 0)
	{
		spawnState += 1;
		switch (spawnState)
		{
			case 0:
			break;
		}
		spawnStateTimer = -1;
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
			scr_PlayMusic(true,false,mus_SMB_Bowser,0,true);
			global.cutscene = false;
			spawnState = 0;
			fireCountMax = irandom_range(1,3);
			jumpCountMax = irandom_range(1,3);
			fireTimer = fireTimerMin;
			jumpTimer = jumpTimerMin;
			hbActive = true;
			hurtable = true;
			phase = 1;
			break;
		}
		phaseChangeTimer = -1;
	}
	#endregion
	
	#region Fire Timer
	if (fireTimer > 0)
	{
		fireTimer -= 1;
	}
	else if (fireTimer == 0)
	{
		attackState += 1;
		switch (attackState)
		{
			case 1:
			fireTimer = 30;
			break;
			
			case 2:
			fireCount += 1;
			
			hsp = 0;
			
			if (audio_is_playing(snd_BowserFire)) audio_stop_sound(snd_BowserFire);
			audio_play_sound(snd_BowserFire,0,false);
			
			var nearestPlayer = instance_nearest(x,y,obj_Player);
			var targetVsp = 0;
			if (nearestPlayer.y > y + 24) targetVsp = 1;
			if (nearestPlayer.y < y - 24) targetVsp = -1;
			
			var projectile = instance_create_depth(x + (9 * image_xscale),y - (12 * image_yscale),depth - 1,obj_Projectile_BowserFire);
			projectile.character = 0;
			projectile.owner = id;
			projectile.dirX = dirX;
			projectile.hsp = projectile.spd * projectile.dirX;
			projectile.vsp = targetVsp;
			projectile.scale = 2;
			projectile.image_xscale = projectile.dirX * projectile.scale;
			projectile.image_yscale = projectile.scale;
			projectile.enemy = true;
			projectile.destroyableByEnemy = false;
			projectile.hurtsObject = false;
			projectile.hurtsEnemy = false;
			projectile.hurtsPlayer = true;
			
			attackState = 0;
			if (fireCount >= fireCountMax)
			{
				fireCount = 0;
				fireCountMax = irandom_range(1,3);
				fireTimer = fireTimerMax;
			}
			else
			{
				fireTimer = fireTimerMin;
			}
			break;
		}
	}
	#endregion
	
	#region Jump Timer
	if (jumpTimer > 0)
	{
		if (attackState != 1) jumpTimer -= 1;
	}
	else if (jumpTimer == 0)
	{
		if (place_meeting(x,y + 1,collisionY))
		{
			jumpCount += 1;
			vsp = -jumpspeed;
			
			if (jumpCount >= jumpCountMax)
			{
				jumpCount = 0;
				jumpCountMax = irandom_range(1,3);
				jumpTimer = jumpTimerMax;
			}
			else
			{
				jumpTimer = jumpTimerMin;
			}
		}
	}
	#endregion
	#endregion
}
else
{
	image_speed = 0;
}