///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

spd = 7;
hsp = 0;
vsp = 0;

//Sprites

sprIdle = spr_Projectile_LaserBall_Normal_Laser;
sprBall = spr_Projectile_LaserBall_Normal_Ball;

//Other Variables

damageType = damageTypes.beam;
character = 0;
destroyableByWall = false;
destroyableByPlayer = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyableByProjectile = false;
moveAngleActive = false;
moveAnglePaused = false;
moveAngleDeadzone = 24;
moveAngleLimit = 0;
moveAngleLimitMax = 2;

/*
0 - Right
1 - Left
2 - Down
3 - Up
*/
moveAngle = 0;

//Timers

destroyTimer = 900;
invisTimer = 840;
invisTimerMax = 1;
moveAngleTimer = -1;
moveAngleTimerMax = 15;