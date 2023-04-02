///@description Begin Step

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprSpawn = spr_RecoilStar_Normal_Spawn;
		sprIdle = spr_RecoilStar_Normal_Idle;
		sprDestroy = spr_RecoilStar_Normal_Destroy;
		break;
		#endregion
	}
	sprite_index = sprSpawn;
	if (GAMEMAKERBUG) sprite_index = sprIdle;
	sprHurt = sprIdle;
	setupTimer = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion