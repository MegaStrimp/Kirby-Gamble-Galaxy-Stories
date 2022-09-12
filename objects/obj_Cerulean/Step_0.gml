///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BroomHatter_Normal_Idle;
		sprAttackReady = spr_BroomHatter_Normal_Walk;
		sprAttackRelease = spr_BroomHatter_Normal_Inhale;
		sprHurt = spr_BroomHatter_Normal_Hurt;
		break;
	}
	if (state == 1) attackTimer = -1;
	sprite_index = sprIdle;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Normal
		
		case 0:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		break;
		
		//Stand Still
		
		case 1:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurtNormal;
		}
		else
		{
			sprite_index = sprIdle;
		}
		break;
	}
	
	//Attack Timer
	
	if ((!hurt) and (place_meeting(x,y + 1,collisionY)))
	{
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			if (turnCounter != -1)
			{
				if (turnCounter >= turnCounterMax)
				{
					turnCounter = 0;
					dirX *= -1;
				}
				if (turnCounter <= turnCounterMax) turnCounter += 1;
			}
			particleReleased = false;
			sprite_index = sprWalk;
			image_index = 0;
			hsp = movespeed * dirX;
			attackTimer = attackTimerMax;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}