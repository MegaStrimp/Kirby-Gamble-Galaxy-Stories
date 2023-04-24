///@description Begin Step

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (timeMult)
	{
		case .5:
		sprite_index = spr_TimeTangle_p5x;
		break;
		
		case 1:
		sprite_index = spr_TimeTangle_1x;
		break;
	}
	setupTimer = -1;
}
#endregion