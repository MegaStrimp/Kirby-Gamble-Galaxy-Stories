///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_AirPuff_Normal_Idle;
		sprDestroy = spr_AirPuff_Normal_Destroy;
		break;
		
		//Whispy Big
		
		case 2:
		sprIdle = spr_AirPuff_WhispyBig_Idle;
		sprDestroy = spr_AirPuff_WhispyBig_Idle;
		break;
	}
	if (sprDestroy != -1) particleOnHitSpr = sprDestroy;
	sprite_index = sprIdle;
}
#endregion

#region Event Inherited
event_inherited();
#endregion