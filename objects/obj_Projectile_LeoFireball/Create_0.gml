///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
movespeed = 0;
jumpspeed = 0;

//Sprites

sprIdle = spr_Projectile_LeoFireball_Normal_Idle;

//Other Variables

character = 0;
damageType = damageTypes.fire;
canBeReflected = true;
//Timers

particleTimerMax = 10;
particleTimer = particleTimerMax;