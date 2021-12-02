///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
decel = .5;

//Other Variables

character = 0;
hurtsBoss = false;
particleOnHit = true;
particleOnHitSpr = spr_AirPuff_Normal_Destroy;
destroy = false;

//Sprites

sprIdle = spr_AirPuff_Normal_Idle;
sprDestroy = spr_AirPuff_Normal_Destroy;

//Timers

particleTimer = 2;
particleTimerMax = 4;