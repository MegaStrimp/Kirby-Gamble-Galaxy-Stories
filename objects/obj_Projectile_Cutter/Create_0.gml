///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
jumpspeed = 2;
decel = .5;
decelMax = 10;

//Sprites

sprIdle = spr_Projectile_Cutter_Player;
sprCharge = spr_Projectile_CutterCharge_Normal;
sprDestroy = spr_Projectile_Cutter_Destroy;

//Other Variables

destroyableByObject = false;
destroyableByProjectile = true;
damageType = damageTypes.cutter;
enemy = false;
character = 0;
//deathParticlesOnHit = true;
deathParticlesOnHitNumber = 2;
player = 0;
angleSpd = 0;
charge = false;
syncImageAngle = false;
collided = 0;

//Timers

trailTimer = 0;
trailTimerMax = 10;