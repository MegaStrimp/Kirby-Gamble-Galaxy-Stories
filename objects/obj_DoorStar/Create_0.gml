///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
movespeedMax = .4;
movespeed = movespeedMax;
fric = .02;
jumpspeed = .75;

//Sprites

sprIdle = spr_Particle_DoorStar1;
sprFade = spr_Particle_DoorStar2;

//Other Variables

character = 1;
dir = 1;
fade = false;

//Timers

setupTimer = 0;
destroyTimer = 40;
destroyTimerMin = 5;