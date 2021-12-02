///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Gate_Normal_Idle;
		break;
		
		//Space
		
		case 1:
		sprIdle = spr_Gate_Space_Idle;
		break;
	}
	setupTimer = -1;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Movement
	
	if ((active) and (!stopped))
	{
		if (state == 0)
		{
			y += spd * dir;
		}
		else
		{
			x += spd * dir;
		}
	}
	
	//Stop Timer
	
	if (stopTimer > 0)
	{
		stopTimer -= 1;
	}
	else if (stopTimer == 0)
	{
		if (revert)
		{
			dir *= -1;
			revert = false;
			with (obj_Button)
			{
			    if (number == other.number)
				{
					active = false;
				}
			}
		}
		active = false;
		stopped = true;
		stopTimer = -1;
	}
	
	//Revert Timer
	
	if (revertTimer > 0)
	{
		revertTimer -= 1;
	}
	else if (revertTimer == 0)
	{
		dir *= -1;
		active = true;
		revert = true;
		stopped = false;
		stopTimer = stopTimerMax;
		revertTimer = -1;
	}
	
	//Animation
	
	sprite_index = sprIdle;
}