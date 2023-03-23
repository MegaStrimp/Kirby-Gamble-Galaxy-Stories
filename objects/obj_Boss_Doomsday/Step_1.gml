///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprBodyNormal = spr_Doomsday_Normal_Body_Normal;
		sprAura = spr_Doomsday_Normal_Aura;
		sprEye = spr_Doomsday_Normal_Eye;
		sprEyeBomb = spr_Doomsday_Normal_EyeBomb;
		sprEyeLaserCharge = spr_Doomsday_Normal_EyeLaserCharge;
		sprEyeLaser = spr_Doomsday_Normal_EyeLaser;
		sprEyeFlash = spr_Doomsday_Normal_EyeFlash;
		sprSpawn1 = spr_Doomsday_Normal_Spawn1;
		sprSpawn2 = spr_Doomsday_Normal_Spawn2;
		sprSpawn3 = spr_Doomsday_Normal_Spawn3;
		sprSpawnEye = spr_Doomsday_Normal_SpawnEye;
		sprSpawnBombEye = spr_Doomsday_Normal_SpawnBombEye;
		sprAfterimage = spr_Doomsday_Normal_Afterimage;
		sprBomb = spr_Doomsday_Normal_Bomb;
		sprStar = spr_Doomsday_Normal_StarProjectile;
		break;
		#endregion
	}
	if (phase == 0) sprite_index = sprSpawn1;
	currentEyeSprite = sprEye;
	global.cutscene = true;
}
#endregion

#region Event Inherited
event_inherited();
#endregion