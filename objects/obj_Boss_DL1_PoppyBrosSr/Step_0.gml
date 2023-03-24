///@description Main

#region Death
if (death)
{
	var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
	particle.sprite_index = spr_Particle_DL1_BossDeath;
	particle.destroyAfterAnimation = true;
	var fade = instance_create_depth(x,y,-999,obj_FadeTimer);
	fade.targetRoom = rm_DL1_WhispyWoods;
	fade.fadeTimer = 90;
	instance_destroy();
}
#endregion

#region Grav Limit
if (attackState == 1)
{
	gravMinLimit = true;
}
else
{
	gravMinLimit = false;
}
#endregion

#region Event Inherited
event_inherited();
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

if ((!childPause) or ((global.cutscene) and (phase == 0)))
{
	#region Hurt Player
	if (!death) scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
	#region Phases
	switch (phase)
	{
		#region Ready Phase 1
		case 0:
		if (grounded) phaseChangeTimer = 0;
		image_index = image_number - 1;
		break;
		#endregion
		
		#region Phase 1
		case 1:
		#region Cancel Attack
		if ((attackState == 2) and (grounded)) attackState = 0;
		#endregion
		
		#region Movement
		if (attackState == 0)
		{
			hsp = movespeed * walkDirX;
		}
		else
		{
			hsp = 0;
		}
		#endregion
		
		#region Jump
		if (attackState == 0)
		{
			if (grounded)
			{
				if (audio_is_playing(snd_EnemyJump3)) audio_stop_sound(snd_EnemyJump3);
				audio_play_sound(snd_EnemyJump3,0,false);
				walkDirX *= -1;
				if (walkDirX == 1)
				{
					sprite_index = sprIdleR;
				}
				else if (walkDirX == -1)
				{
					sprite_index = sprIdleL;
				}
				image_index = 0;
				jumpCount += 1;
				vsp = -jumpspeed;
				
				if (jumpCount >= jumpCountMax)
				{
					jumpCount = 0;
					walkDirX *= -1;
					vsp = -jumpspeed * 2;
					attackTimer = 0;
				}
				grounded = false;
			}
		}
		#endregion
		
		#region Animation
		image_speed = 1;
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
			phase = 1;
			global.cutscene = false;
			spawnState = 0;
			attackChooseTimer = attackChooseTimerMax;
			hbActive = true;
			hurtable = true;
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
			attackNumber = choose();
			break;
		}
		
		switch (attackNumber)
		{
			case 0:
			break;
		}
		attackChooseTimer = -1;
	}
	#endregion
	
	#region Attack Timer
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		switch (attackState)
		{
			case 0:
			attackState = 1;
			sprite_index = sprBombReady;
			image_index = 0;
			attackTimer = 50;
			bombTimer = irandom_range(attackTimer - 10,attackTimer + 20);
			break;
			
			case 1:
			attackState = 2;
			attackTimer = -1;
			break;
		}
	}
	#endregion
	
	#region Bomb Timer
	if (bombTimer > 0)
	{
		bombTimer -= 1;
	}
	else if (bombTimer == 0)
	{
		sprite_index = sprBombThrow1;
		image_index = 0;
		bombTimer = -1;
	}
	#endregion
	#endregion
}
else
{
	image_speed = 0;
}