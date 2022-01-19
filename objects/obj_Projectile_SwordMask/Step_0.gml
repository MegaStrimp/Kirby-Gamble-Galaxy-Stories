///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_SwordMask1;
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
		if ((owner.hurt) or ((!enemy) and (owner.attackNumber != "swordNormal")))
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