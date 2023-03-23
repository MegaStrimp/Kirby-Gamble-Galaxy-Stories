///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_PoppyBrosJr_Normal_Idle;
		sprThrowReady = spr_PoppyBrosJr_Normal_ThrowReady;
		sprThrow = spr_PoppyBrosJr_Normal_Throw;
		sprHand = spr_PoppyBrosJr_Normal_Hand;
		sprHurt = spr_PoppyBrosJr_Normal_Hurt;
		break;
	}
	if (weaponIndex == 0)
	{
		ability = playerAbilities.none;
		attackTimer = -1;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion