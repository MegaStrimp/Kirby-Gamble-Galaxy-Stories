///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Wizzer_Normal_Idle;
		sprOpen = spr_Wizzer_Normal_Open;
		sprClose = spr_Wizzer_Normal_Close;
		sprReady = spr_Wizzer_Normal_Ready;
		sprAttack = spr_Wizzer_Normal_Attack;
		sprHurtNormal = spr_Wizzer_Normal_HurtNormal;
		sprHurtInhale = spr_Wizzer_Normal_HurtInhale;
		break;
	}
	sprHurt = sprHurtNormal;
}
#endregion

#region Event Inherited
event_inherited();
#endregion