///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_EnemyParasol_Normal_Idle;
		sprFloatReady = spr_EnemyParasol_Normal_FloatReady;
		sprFloat = spr_EnemyParasol_Normal_Idle;
		sprHurt = -1;
		break;
		
		//Sci-Fi
		
		case 1:
		sprIdle = spr_EnemyParasol_SciFi_Idle;
		sprFloatReady = spr_EnemyParasol_SciFi_FloatReady;
		sprFloat = spr_EnemyParasol_SciFi_Idle;
		sprHurt = -1;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion