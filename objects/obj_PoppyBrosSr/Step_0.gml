///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_PoppyBrosSr_Normal_Idle;
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
	if (attack)
	{
		switch (attackNumber)
		{
			case enemyAttacks.poppyBroSr_dash:
			if (isAttacking)
			{
				movespeed = 4;
			}
			else
			{
				movespeed = 0;
			}
			break;
			
			default:
			movespeed = 0;
			hsp = 0;
			break;
		}
	}
	else
	{
		with (obj_Player)
		{
			if (player == 0)
			{
				if (x > other.x)
				{
					other.dirX = 1;
				}
				else
				{
					other.dirX = -1;
				}
			}
		}
		
		switch (jumpCount)
		{
			case 5:
			var tempWalkDirX = 1;
			if ((instance_exists(obj_Player)) and (obj_Player.x < x)) tempWalkDirX = -1;
			if (tempWalkDirX == walkDirX) jumpCount -= 1;
			break;
			
			case 6:
			movespeed = 2;
			jumpspeed = 3.5;
			break;
			
			case 7:
			movespeed = 2;
			jumpspeed = 3.5;
			break;
			
			case 8:
			movespeed = 4;
			jumpspeed = 4.75;
			break;
			
			case 9:
			movespeed = 3;
			jumpspeed = 4.5;
			break;
			
			default:
			movespeed = .75;
			jumpspeed = 3;
			break;
		}
	}
	
	hsp = movespeed * walkDirX;
	#endregion
	
	#region Jump
	if (place_meeting(x,y + 1,collisionY))
	{
		if (!attack)
		{
			if (jumpCount == 15)
			{
				attackReadyTimer = 0;
			}
			else
			{
				walkDirX *= -1;
				if (walkDirX == 1)
				{
					image_index = 0;
				}
				else if (walkDirX == -1)
				{
					image_index = image_number - 1;
				}
				jumpCount += 1;
				vsp = -jumpspeed;
			}
		}
		else
		{
			switch (attackNumber)
			{
				case enemyAttacks.poppyBroSr_bombThrowTripleJump:
				if (jumpCount == 3)
				{
					attackStopTimer = 0;
				}
				else
				{
					jumpCount += 1;
					vsp = -7;
				}
				break;
			}
		}
	}
	#endregion
	
	#region Attack
	if (attack)
	{
		if (attackNumber == enemyAttacks.poppyBroSr_bombThrow)
		{
			handX = (path_get_x(pth_Enemy_PoppyBrosSrHand1,handPath) + handXOffset) * dirX;
			handY = path_get_y(pth_Enemy_PoppyBrosSrHand1,handPath) + handYOffset;
			
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
	
	#region Dash Stop Timer
	if (dashStopTimer > 0)
	{
		dashStopTimer -= 1;
	}
	else if (dashStopTimer == 0)
	{
		isAttacking = false;
		attackStopTimer = 0;
		dashStopTimer = -1;
	}
	#endregion
	
	#region Bomb Throw Timer
	if (bombThrowTimer > 0)
	{
		bombThrowTimer -= 1;
	}
	else if (bombThrowTimer == 0)
	{
		bombThrowState = 2;
		if (instance_exists(bomb))
		{
			bomb.active = true;
			bomb.destroyableByPlayer = true;
			bomb.destroyableByEnemy = false;
			bomb.hsp = 2.5 * dirX;
			bomb.vsp = -4.5;
			bomb.angleSpd = bomb.hsp * 4;
		}
		isAttacking = false;
		attackStopTimer = 60;
		bombThrowTimer = -1;
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
	image_speed = 1 * walkDirX;
	sprite_index = sprIdle;
	
	if ((walkDirX == 1) and (image_index >= image_number - 1))
	{
		image_index = image_number - 1;
	}
	else if ((walkDirX == -1) and (image_index < 1))
	{
		image_index = .9;
	}
	#endregion
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}