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
		sprIdle = spr_MovingCloud_Normal_Idle;
		sprUp = spr_MovingCloud_Normal_Up;
		sprDown = spr_MovingCloud_Normal_Down;
		sprLeft = spr_MovingCloud_Normal_Left;
		sprRight = spr_MovingCloud_Normal_Right;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Animation
	
	image_speed = 1;
	
	var spr = sprIdle;
	if (hsp < 0) spr = sprLeft;
	if (hsp > 0) spr = sprRight;
	if (vsp < 0) spr = sprUp;
	if (vsp > 0) spr = sprDown;
	
	sprite_index = spr;
}
else
{
	image_speed = 0;
}