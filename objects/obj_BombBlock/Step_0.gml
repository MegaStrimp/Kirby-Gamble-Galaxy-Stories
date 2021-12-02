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
		sprIdle = spr_BombBlock_Normal_Idle;
		topWallSprite = spr_BombBlock_Normal_Top;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!isTop)
	{
		//Destroy
		
		if (hp <= 0)
		{
			if (explodeTimer == -1) explodeTimer = 0;
		}
	}
	
	//Animation
	
	if (isTop)
	{
		sprite_index = topWallSprite;
	}
	else
	{
		sprite_index = sprIdle;
	}
}