///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = choose(spr_Projectile_WalkyNote_Normal_Red,spr_Projectile_WalkyNote_Normal_Green,spr_Projectile_WalkyNote_Normal_Blue);
		break;
		#endregion
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion