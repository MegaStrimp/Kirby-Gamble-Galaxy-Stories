///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
jumpspeed = 3.5;
accel = .1;

//Other Variables

character = 3;
owner = id;
scale = 1;
dir = 1;
walkDirY = 1;
posX = 0;
scaleExX = 0;
scaleExY = 0;
attack = false;
attackState = 0;
attackTarget = -1;
attackYOffset = 0;
throwSpeed = 4.5;

//Timers

shineTimer = -1;
shineTimerMax = 7;
attackTimerMax = 45;
attackTimer = attackTimerMax;
setupTimer = 0;