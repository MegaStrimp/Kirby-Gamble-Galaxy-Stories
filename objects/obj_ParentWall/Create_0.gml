///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;

//Enums

enum wallMaterials
{
	none,
	grass,
	wood,
	stone,
	sand,
	snow,
	ice,
	clouds,
	metal
}

enum slopeTypes
{
	normal,
	gentle,
	steep
}

enum movingWallAttributes
{
	asteroidFields1_1,
	asteroidFields3_1,
	asteroidFields3_2,
	asteroidFields3A_1,
	asteroidFields3A_2,
	asteroidFields4_1,
	asteroidFields5_1,
	asteroidFields5_2
}

enum wallHitEffects
{
	none,
	starBlock,
	starBlock_Free,
	crate,
	crate_Free,
	metalBlock,
	metalBlock_Free,
}

enum wallStrengths
{
	none,
	metal,
	gold
}

//Other Variables

slope = false;
slopeType = slopeTypes.normal;
platform = false;
object = false;
wallStrength = wallStrengths.none;
damageType = damageTypes.none;
hp = 1;
hasEnemyWall = false;
enemyWall = id;
invincible = false;
enemyCollisionHitbox = false;
owner = id;
ownerScale = -1;
ownerXOffset = 0;
ownerYOffset = 0;
hasTop = true;
isTop = false;
canExplode = false;
topWall = -1;
topWallSprite = -1;
topWallMask = spr_24x4Originless_Mask;
topWallOwner = id;
movementState = -1;
objectOnHit = false;
objectOnHitObj = obj_PointStar;
shakeX = 0;
shakeY = 0;
drawShakeX = 0;
drawShakeY = 0;
paletteIndex = -1;
flashIndex = 1;
material = wallMaterials.none;
hitEffect = wallHitEffects.none;
hitEffectTimer = 0;
speedMultObject = 1;
speedMultFinal = speedMultObject;

//Timers

setupTimer = 0;
explodeTimer = -1;
explodeTimerMax = 3;
flashTimer = -1;
flashTimerMax = 2;
invincibleTimer = -1;
invincibleTimerMax = 15;
movementTimer = -1;
