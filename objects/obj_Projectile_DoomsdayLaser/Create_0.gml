///@description Initialize Variables

//Event Inherited

event_inherited();

//Other Variables

damageType = damageTypes.yoyo;
destroyableByPlayer = false;
destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyOutsideView = false;
canBeReflected = false;
owner = id;

//Timers

destroyTimer = -1;
recoilStarTimer = 0;
recoilStarTimerMax = 30;