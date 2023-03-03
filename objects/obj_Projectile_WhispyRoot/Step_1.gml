///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprRootReady = spr_WhispyWoods_Normal_RootReady;
		sprRoot1 = spr_WhispyWoods_Normal_Root1;
		sprRoot2 = spr_WhispyWoods_Normal_Root2;
		sprRoot3 = spr_WhispyWoods_Normal_Root3;
		sprRoot1R = spr_WhispyWoods_Normal_Root1R;
		sprRoot2R = spr_WhispyWoods_Normal_Root2R;
		sprRoot3R = spr_WhispyWoods_Normal_Root3R;
		break;
	}
	sprite_index = sprRootReady;
}
#endregion

#region Event Inherited
event_inherited();
#endregion