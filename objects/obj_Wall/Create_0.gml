///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;

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
movementState = "none";
objectOnHit = false;
objectOnHitObj = obj_PointStar;

//Timers

setupTimer = 0;
explodeTimer = -1;
explodeTimerMax = 5;
invincibleTimer = -1;
invincibleTimerMax = 15;
movementTimer = -1;

//Temporary Fix

if (object_index = obj_Wall)
{
	instance_change(obj_ChildWall, true);
}
