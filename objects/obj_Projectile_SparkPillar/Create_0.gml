///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
movespeed = 0;

//Sprites

sprIdleBlue = spr_Projectile_SparkPillar_Normal_Blue;
sprIdleGreen = spr_Projectile_SparkPillar_Normal_Green;

//Other Variables

destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
canBeReflected = false;
destroyOutsideView = false;
damageType = damageTypes.spark;
enemy = false;

//Timers

spriteChangeTimerMax = 6;
spriteChangeTimer = spriteChangeTimerMax;
destroyTimer = -1;