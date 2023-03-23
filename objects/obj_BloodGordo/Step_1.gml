///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BloodGordo_Normal_Idle;
		sprAngry = spr_BloodGordo_Normal_Angry;
		sprCautious = spr_BloodGordo_Normal_Cautious;
		sprSleep = spr_BloodGordo_Normal_Sleep;
		sprTriggered = spr_BloodGordo_Normal_Triggered;
		sprHurt = -1;
		sprAura = spr_BloodGordo_Normal_Aura;
		break;
	}
	
	spd = spdMin;
}
#endregion

#region Event Inherited
event_inherited();
#endregion