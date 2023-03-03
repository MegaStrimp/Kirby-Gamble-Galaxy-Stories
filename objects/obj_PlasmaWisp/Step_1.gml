///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_PlasmaWisp_Normal_Idle;
		sprCharge = spr_PlasmaWisp_Normal_Charge;
		sprAttack = spr_PlasmaWisp_Normal_Shoot;
		sprAttackBasic = spr_PlasmaWisp_Normal_AttackBasic;
		sprAttackRecharge = spr_PlasmaWisp_Normal_AttackRecharge;
		sprHurt = spr_PlasmaWisp_Normal_Hurt;
		break;
		#endregion
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion