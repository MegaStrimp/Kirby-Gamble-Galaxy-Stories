///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BouncySis_Normal_Idle;
		sprJump = spr_BouncySis_Normal_Jump;
		sprDuck = spr_BouncySis_Normal_Duck;
		sprHurt = spr_BouncySis_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion