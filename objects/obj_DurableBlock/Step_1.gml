///@description Begin Step

#region Setup Timer
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
		sprIdle = spr_DurableBlock_Normal_Idle;
		topWallSprite = spr_DurableBlock_Normal_Top;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion