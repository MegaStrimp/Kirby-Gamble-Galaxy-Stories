///@description Begin Step

#region Setup Timer
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
#endregion

#region Event Inherited
event_inherited();
#endregion