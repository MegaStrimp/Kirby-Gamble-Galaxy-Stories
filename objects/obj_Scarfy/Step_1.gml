///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprCalmIdle = spr_Scarfy_Normal_CalmIdle;
		sprCalmFly = spr_Scarfy_Normal_CalmFly;
		sprCalmHurt = spr_Scarfy_Normal_CalmHurt;
		sprMadFly = spr_Scarfy_Normal_MadFly;
		sprMadHurt = spr_Scarfy_Normal_MadHurt;
		break;
		sprHurt = sprCalmHurt;
	}
	
	if (state == 1) attackTimer = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion