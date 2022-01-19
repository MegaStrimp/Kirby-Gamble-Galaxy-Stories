///@description Main
show_debug_message(image_index);
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
		sprHurt = "self";
		sprDeath = spr_PoppyBrosSr_Normal_Death;
		break;
		#endregion
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion

if (!global.pause)
{
	#region Hurt Player
	scr_Enemy_HurtsPlayer();
	#endregion
	
	#region Friction
	hsp = scr_Friction(hsp,decel);
	#endregion
	
	#region Movement
	if (attack)
	{
		switch (attackNumber)
		{
			case "dash":
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
			case 6:
			movespeed = 2;
			jumpspeed = 3.5;
			break;
			
			case 7:
			movespeed = 2;
			jumpspeed = 3.5;
			break;
			
			case 8:
			movespeed = 3;
			jumpspeed = 4.5;
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
				case "bombThrow":
				if (jumpCount == 3)
				{
					attackStopTimer = 0;
				}
				else
				{
					jumpCount += 1;
					vsp = -jumpspeed;
				}
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
		attackNumber = choose("bombThrow","dash");
		switch (attackNumber)
		{
			case "bombThrow":
			jumpCount += 1;
			vsp = -5;
			bombThrowTimer = bombThrowTimerMax;
			break;
			
			case "dash":
			dashDir = dirX;
			dashStopTimer = dashStopTimerMax;
			attack = true;
			isAttacking = true;
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
		jumpCount = 0;
		attack = false;
		attackNumber = -1;
		isAttacking = false;
		attackStopTimer = -1;
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
		attackStopTimer = 30;
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
		isAttacking = false;
		bombThrowTimer = -1;
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