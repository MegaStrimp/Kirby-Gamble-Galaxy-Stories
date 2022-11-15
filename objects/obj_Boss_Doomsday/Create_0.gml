///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Physics
spdTeleport = 10;
#endregion

#region Sprites
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

sprBossIcon = -1;
sprBossText = spr_Healthbar_Boss_Text_Doomsday;
#endregion

#region Other Variables
hp = 1000;
dmg = 1;
points = 700;
isBoss = true;
hbActive = false;
healthbarIndex = 4;
hbSetup = true;
hasXCollision = false;
hasYCollision = false;
hasXKnockback = false;
hasYKnockback = false;
hurtable = false;
phase = 0;
spawnHealthbar = true;
attackNumber = -1;
attackState = 0;
attackRng = 0;
attackDir = 1;
currentEyeSprite = sprEye;
eyeIndex = 0;

teleportCount = 0;
teleportCountMax = 3;
teleportTargetX = x;
teleportTargetY = y;
teleportTargetChooseX = x;
teleportTargetChooseY = y;

auraIndex = 0;
spawnState = 0;
spawnEyeIndex = 0;
spawnEyeFlashIndex = 0;
eyeX = x;
eyeY = y;

bombThrown = false;
attackCircleDashFollowPath = false;

spawnedDeathFade = false;
#endregion

#region Timers
spawnStateTimer = -1;
phaseChangeTimer = -1;
attackChooseTimer = -1;
attackChooseTimerMax = 45;

afterimageTimer = -1;
afterimageTimerMax = 10;
teleportAttackTimer = -1;
starAttackTimer = -1;
circlettackTimer = -1;
bombAttackTimer = -1;
laserAttackTimer = -1;
#endregion