///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Cerulean_Normal_Idle;
		sprAttackReady = spr_Cerulean_Normal_AttackReady;
		sprAttackRelease = spr_Cerulean_Normal_AttackRelease;
		sprHurt = spr_Cerulean_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion