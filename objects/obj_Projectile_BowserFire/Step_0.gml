///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_SMB_BowserFire_Normal_Idle;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Get Inhaled
	
	scr_Object_Inhale(false);
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
	
	#region Vsp Stop Timer
	if (vspStopTimer > 0)
	{
		vspStopTimer -= 1;
	}
	else if (vspStopTimer == 0)
	{
		vsp = 0;
		vspStopTimer = -1;
	}
	#endregion
}
else
{
	image_speed = 0;
}