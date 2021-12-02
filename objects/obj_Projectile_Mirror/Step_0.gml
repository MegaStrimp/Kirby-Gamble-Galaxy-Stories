///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Mirror_Normal_Idle;
		sprShine = spr_Projectile_Mirror_Normal_Shine;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Shine Timer
	
	if (shineTimer > 0)
	{
		shineTimer -= 1;
	}
	else if (shineTimer == 0)
	{
		if (shine)
		{
			shine = false;
		}
		else
		{
			shine = true;
		}
		shineTimer = shineTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	if (shine)
	{
		sprite_index = sprShine;
	}
	else
	{
		sprite_index = sprIdle;
	}
}
else
{
	image_speed = 0;
}