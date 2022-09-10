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
		sprIdle = spr_BreakingWall_Normal_Idle;
		topWallSprite = spr_BreakingWall_Normal_Top;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Detect Player
	
	switch (state)
	{
		//Detect Player
		
		case 0:
		image_speed = 0;
		if (place_meeting(x,y - 1, obj_Player))
		{
			state = 1;
			if ((isTop) and (instance_exists(topWallOwner))) topWallOwner.state = 1;
			image_index = 0;
		}
		break;
		
		//Destroy
		
		case 1:
		image_speed = 1;
		break;
	}
}
else
{
	image_speed = 0;
}