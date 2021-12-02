///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Bouncy_Normal_Idle;
		sprHurt = "self";
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//Movement
	
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
			movespeed = 4;
			jumpspeed = 4.5;
			break;
			
			case 9:
			movespeed = 4;
			jumpspeed = 4.5;
			break;
			
			default:
			movespeed = .75;
			jumpspeed = 3;
			break;
		}
	}
	
	hsp = movespeed * walkDirX;
	
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
	
	//Attack Ready Timer
	
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
	
	//Attack Stop Timer
	
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
	
	//Dash Stop Timer
	
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
	
	//Bomb Throw Timer
	
	if (bombThrowTimer > 0)
	{
		bombThrowTimer -= 1;
	}
	else if (bombThrowTimer == 0)
	{
		isAttacking = false;
		bombThrowTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}