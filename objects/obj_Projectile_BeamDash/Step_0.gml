///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Kirby_BeamDash;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (instance_exists(owner))
	{
		if ((owner.hurt) or (owner.attackNumber != "beamDash"))
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}