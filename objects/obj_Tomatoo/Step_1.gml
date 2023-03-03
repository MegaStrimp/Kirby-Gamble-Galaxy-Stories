///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Tomatoo_Normal_Idle;
		sprDuck = spr_Tomatoo_Normal_Duck;
		sprJump = spr_Tomatoo_Normal_Jump;
		sprFall = spr_Tomatoo_Normal_Fall;
		sprHeavyDuck = spr_Tomatoo_Normal_HeavyDuck;
		sprHurt = spr_Tomatoo_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion