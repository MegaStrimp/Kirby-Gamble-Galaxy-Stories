///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Wizzkid_Normal_Idle;
		sprIdleHat = spr_PoppyBrosSr_Normal_IdleHat;
		sprAttack = spr_PoppyBrosSr_Normal_Attack;
		sprAttackHat = spr_PoppyBrosSr_Normal_AttackHat;
		sprDash = spr_PoppyBrosSr_Normal_Dash;
		sprHand = spr_PoppyBrosSr_Normal_Hand;
		sprHurt = spr_PoppyBrosSr_Normal_Hurt;
		sprDeath = spr_PoppyBrosSr_Normal_Death;
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

if (!global.pause)
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
		if (bossHbHp >= hp) hbSetup = false;
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
		
		if ((nearestPlayer != -1) and (instance_exists(nearestPlayer))) slideTargetX = nearestPlayer.x;
		
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
		if (attackNumber == enemyAttacks.poppyBroSr_bombThrow)
		{
			handX = (path_get_x(pth_Enemy_PoppyBrosSrHand1,handPath)) * dirX;
			handY = path_get_y(pth_Enemy_PoppyBrosSrHand1,handPath);
			//handX = (path_get_x(pth_Enemy_PoppyBrosSrHand1,handPath) + handXOffset) * dirX;
			//handY = path_get_y(pth_Enemy_PoppyBrosSrHand1,handPath) + handYOffset;
			
			switch (bombThrowState)
			{
				case 0:
				handIndex = 0;
				handPath += .04;
				handPath = clamp(handPath,0,1);
				if (handPath == 1) bombThrowState = 1;
				break;
				
				case 1:
				handPath -= .07;
				handPath = clamp(handPath,0,1);
				if (handPath == 0)
				{
					bombThrowState = 2;
					bombThrowTimer = 0;
				}
				break;
				
				case 2:
				handIndex = 2;
				handXOffset -= .15;
				handYOffset += .05;
				break;
			}
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
		jumpCount = 0;
		attackNumber = choose(enemyAttacks.poppyBroSr_bombThrow,enemyAttacks.poppyBroSr_dash);
		attackNumber = choose(enemyAttacks.poppyBroSr_bombThrow);
		switch (attackNumber)
		{
			case enemyAttacks.poppyBroSr_bombThrow:
			bombThrowState = 0;
			jumpCount += 1;
			gravLimitNormal = 3.5;
			hsp = 0;
			vsp = -7;
			attack = true;
			bomb = instance_create_depth(x,y,depth + 1,obj_Projectile_Bomb);
			bomb.owner = id;
			bomb.active = false;
			bomb.enemy = true;
			bomb.destroyableByWall = false;
			bomb.destroyableByPlayer = false;
			bomb.destroyableByEnemy = false;
			bomb.destroyableByObject = false;
			bomb.destroyableByProjectile = false;
			bomb.hurtsObject = false;
			bomb.hurtsEnemy = false;
			bomb.hurtsBoss = false;
			bomb.hurtsPlayer = false;
			bomb.hurtsProjectile = false;
			bomb.hurtsObject = false;
			bomb.hurtsEnemy = false;
			bomb.hurtsPlayer = true;
			bomb.destroyAfterHurt = false;
			bomb.canBeInhaled = true;
			//bombThrowTimer = bombThrowTimerMax;
			break;
			
			case enemyAttacks.poppyBroSr_dash:
			dashDir = dirX;
			dashStopTimer = dashStopTimerMax;
			attack = true;
			isAttacking = true;
			break;
		}
		attackReadyTimer = -1;
	}
	#endregion
	
	#region Slide Timer
	if (slideTimer > 0)
	{
		slideTimer -= 1;
	}
	else if (slideTimer == 0)
	{
		if (place_meeting(x,y + 1,collisionY))
		{
			hsp = movespeed * walkDirX;
			slideTimer = -1;
		}
	}
	#endregion
	
	#region Attack Stop Timer
	if (attackStopTimer > 0)
	{
		attackStopTimer -= 1;
	}
	else if (attackStopTimer == 0)
	{
		//walkDirX = 1;
		//if ((instance_exists(obj_Player)) and (obj_Player.x < x)) walkDirX *= -1;
		jumpCount = 0;
		gravLimitNormal = 4;
		attack = false;
		attackNumber = -1;
		isAttacking = false;
		attackStopTimer = -1;
	}
	#endregion
	
	#region Animation
	dirX = walkDirX;
	
	image_speed = 1;
	
	sprite_index = sprIdle;
	#endregion
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}