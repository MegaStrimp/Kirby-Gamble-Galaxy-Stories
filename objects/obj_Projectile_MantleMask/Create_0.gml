///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Other Variables

destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
hurtsEnemy = false;
hurtsBoss = true;
canBeReflected = false;
destroyOutsideView = false;
state = 0;
owner = id;
enemy = false;
character = 0;
xPos = 0;
yPos = 0;

//Timers

destroyTimerMax = 1;
destroyTimer = destroyTimerMax;