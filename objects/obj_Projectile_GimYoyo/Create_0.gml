/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Movement Variables
hsp = 0;
vsp = 0;

start_x = x;
start_y = y;

old_x = start_x;
old_y = start_y;

//Other Variables
destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
hurtsObject = false;
hurtsEnemy = false;
hurtsBoss = false;
hurtsPlayer = true;
hurtsProjectile = false;
canBeReflected = false;

// Timer Variables
pathTimer = 0;
pathTimerEnd = 45;
pathTimerEndInc = -0.45;
