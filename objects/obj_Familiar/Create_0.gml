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

//Timers

shineTimerMax = 7;
shineTimer = shineTimerMax;
attackTimerMax = 45; //Peashooter
attackTimerMax = 120; //Dr Fetus
attackTimer = attackTimerMax;