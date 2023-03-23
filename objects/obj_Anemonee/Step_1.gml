///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Anemonee_Normal_Idle;
		sprHurt = spr_Anemonee_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion