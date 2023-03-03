///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprPot = spr_Wapod_Normal_Pot;
		sprGhostSpawn = spr_Wapod_Normal_Spawn;
		sprGhostIdle = spr_Wapod_Normal_Idle;
		sprGhostHurt = spr_Wapod_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion