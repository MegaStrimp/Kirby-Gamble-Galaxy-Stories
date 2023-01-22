///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Other Variables

destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyOutsideView = false;
canBeReflected = false;
damageType = 3;
state = 0;
owner = id;
enemy = false;
isDirectHit = true;
character = 0;

//Timers

particleTimer = 0;
particleTimerMax = 2;