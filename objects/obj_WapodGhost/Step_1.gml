///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprSpawn = spr_Wapod_Normal_Spawn;
		sprIdle = spr_Wapod_Normal_Idle;
		sprHurt = spr_Wapod_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion