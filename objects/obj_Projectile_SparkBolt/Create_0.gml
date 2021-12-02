///@description Initialize Variables

//Event Inherited

event_inherited();

//Sprites

sprIdleBlue = spr_Projectile_SparkBolt_Normal_Blue;
sprIdleGreen = spr_Projectile_SparkBolt_Normal_Green;

//Other Variables

damageType = "spark";
destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
hurtsObject = false;
hurtsEnemy = true;
hurtsBoss = true;
hurtsProjectile = false;
destroyOutsideView = false;
canBeReflected = false;
owner = id;
enemy = false;
createObject = true;
obj = -1;

//Timers

spriteChangeTimerMax = 6;
spriteChangeTimer = spriteChangeTimerMax;