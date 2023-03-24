///@description Main

//Event Inherited

event_inherited();

//Friction

if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	if (!hurt)
	{
		//Attack Timer
		
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			sprite_index = sprReady;
			attack = true;
			attackTimer = -1;
		}
	}
	else
	{
		attack = false;
		attackTimer = attackTimerMax;
	}
	
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
}
else
{
	image_speed = 0;
}