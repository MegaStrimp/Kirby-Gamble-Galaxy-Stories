///@description Main

//Event Inherited

event_inherited();

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//Attack
	
	if (hurt) attack = false;
	
	if ((!attack) and (!hurt) and (attackTimer == -1)) attackTimer = attackTimerMax;
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else if (!attack)
	{
		sprite_index = sprIdle;
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		if (state != 1)
		{
			if (turnCounterMax != -1)
			{
				if (turnCounter >= turnCounterMax)
				{
					turnCounter = 0;
					dirX *= -1;
				}
				if (turnCounter <= turnCounterMax) turnCounter += 1;
			}
		}
		attack = true;
		sprite_index = sprAttackReady;
		image_index = 0;
		attackTimer = -1;
	}
}
else
{
	image_speed = 0;
}