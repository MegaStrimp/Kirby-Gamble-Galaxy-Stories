///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_JungleBomb_Normal_Idle;
		sprWalk = spr_JungleBomb_Normal_Walk;
		sprDuck = spr_JungleBomb_Normal_Duck;
		sprJump = spr_JungleBomb_Normal_Jump;
		sprFall = spr_JungleBomb_Normal_Fall;
		sprAttack = spr_JungleBomb_Normal_Attack;
		sprHurt = spr_JungleBomb_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion