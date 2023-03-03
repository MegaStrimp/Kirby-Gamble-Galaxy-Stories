///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Tookey_Normal_Idle;
		sprFly = spr_Tookey_Normal_Fly;
		sprHurt = spr_Tookey_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion