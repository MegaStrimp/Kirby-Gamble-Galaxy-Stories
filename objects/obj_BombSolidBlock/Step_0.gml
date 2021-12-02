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
		sprIdle = spr_BombSolidBlock_Normal_Idle;
		topWallSprite = spr_BombSolidBlock_Normal_Top;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
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