///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Walky_Normal_Idle;
		sprWalk = spr_Walky_Normal_Walk;
		sprAttack = spr_Walky_Normal_Attack;
		sprHurt = spr_Walky_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion