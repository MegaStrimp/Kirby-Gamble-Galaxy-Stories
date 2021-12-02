///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
movespeed = 4;

//Other Variables

enemy = false;
character = 0;
deathParticlesOnHit = true;
deathParticlesOnHitNumber = "explosion1";
enemyImageIndex = 0;
state = 0;

//Sprites

sprIdle = spr_Projectile_Ice_Normal;
sprHurt = spr_WaddleDee_Normal_Hurt;

//Timers

flashTimerMax = 3;
flashTimer = flashTimerMax;
flashStopTimerMax = 45;
flashStopTimer = flashStopTimerMax;