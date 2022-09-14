///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;

//Enums

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

//Other Variables

slope = false;
slopeType = "normal";
platform = false;
object = false;
damageType = damageTypes.none;
hp = 1;
hasEnemyWall = false;
enemyWall = id;
invincible = false;
enemyCollisionMask = false;
owner = id;
hasTop = true;
isTop = false;
canExplode = false;
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

//Timers

setupTimer = 0;
explodeTimer = -1;
explodeTimerMax = 5;
invincibleTimer = -1;
invincibleTimerMax = 15;
movementTimer = -1;
