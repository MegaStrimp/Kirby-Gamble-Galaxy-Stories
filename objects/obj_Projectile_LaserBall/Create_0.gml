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

//Other Variables

damageType = damageTypes.beam;
character = 0;
destroyableByWall = false;
destroyableByPlayer = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyableByProjectile = false;

//Timers

destroyTimer = 900;
invisTimer = 840;
invisTimerMax = 1;