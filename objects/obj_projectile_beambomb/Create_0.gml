///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

spd = 0;
hsp = 0;
vsp = 0;

//Sprites

sprVortexReady = spr_Projectile_BeamBomb_Normal_VortexReady;
sprVortex = spr_Projectile_BeamBomb_Normal_Vortex;
sprExplosion = spr_Projectile_BeamBomb_Normal_Explosion;
sprSonar = spr_Projectile_BeamBomb_Normal_Sonar;

//Other Variables

damageType = damageTypes.mysticBeam;
character = 0;
explode = false;
didExplode = false;
button_released = false;

//Timers

particleTimer = 10;
sonarTimerMax = 40;
sonarTimer = sonarTimerMax;