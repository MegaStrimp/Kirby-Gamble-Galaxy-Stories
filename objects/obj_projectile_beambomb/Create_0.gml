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

//Other Variables

damageType = damageTypes.mysticBeam;
character = 0;
explode = false;
didExplode = false;

//Timers

particleTimer = 10;