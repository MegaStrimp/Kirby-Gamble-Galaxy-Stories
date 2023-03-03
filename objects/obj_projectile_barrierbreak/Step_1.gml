///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_BarrierBreak_Normal_Head;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion