///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprDoor = spr_Door_Nidoo;
		sprReady = spr_Nidoo_Normal_Ready;
		sprShake = spr_Nidoo_Normal_Shake;
		sprRelease = spr_Nidoo_Normal_Release;
		sprHurt = -1;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion