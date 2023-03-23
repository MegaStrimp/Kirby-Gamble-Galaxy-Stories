///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Kirby_Normal_Mirror_Attack3;
		break;
	}
	
	if (state == 0)
	{
		angle = angle + (180 * -dirX) + jumpAngle;
	}
	else if (state == 1)
	{
		spdBuiltIn = spd + 1;
		fricSpd = .6;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion