///@description Begin Step

#region Setup Timer
if (spawnTimer > 0)
{
	spawnTimer -= 1;
}
else if (spawnTimer == 0)
{
	switch (character)
	{
		//Normal
		case 0:
		sprSpawn = spr_RecoilStar_Normal_Spawn;
		sprIdle = spr_RecoilStar_Normal_Idle;
		sprDestroy = spr_RecoilStar_Normal_Destroy;
		break;
	}
	sprite_index = sprSpawn;
	if (GAMEMAKERBUG) sprite_index = sprIdle;
	sprHurt = sprIdle;
}
#endregion

#region Event Inherited
event_inherited();
#endregion