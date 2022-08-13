///@description Begin Step

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