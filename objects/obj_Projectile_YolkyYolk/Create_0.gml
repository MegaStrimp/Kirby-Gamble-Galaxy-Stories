///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
movespeed = 0;
jumpspeed = 0;
grav = .2;
gravLimit = 5;

//Sprites

sprIdle = spr_Projectile_YolkyYolk_Normal;

//Other Variables

character = 0;
hurtsEnemy = false;
hasGravity = true;
particleOnHit = true;
particleOnHitSpr = spr_Particle_YolkyYolk;
