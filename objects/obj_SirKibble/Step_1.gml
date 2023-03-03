///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_SirKibble_Normal_Idle;
		sprWalk = spr_SirKibble_Normal_Walk;
		sprReady = spr_SirKibble_Normal_Ready;
		sprAttack = spr_SirKibble_Normal_Attack;
		sprCatch = spr_SirKibble_Normal_Catch;
		sprHurt = spr_SirKibble_Normal_Hurt;
		sprHurtAir = spr_SirKibble_Normal_HurtAir;
		break;
	}
	if (state == 1) attackTimer = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion