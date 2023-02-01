///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics
angle = 60;
strength = 4.3;

//Other Variables

destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
hurtsObject = true;
hurtsEnemy = true;
hurtsPlayer = true;
canBeReflected = false;
destroyOutsideView = false;
state = 0;
owner = id;
enemy = false;
isDirectHit = true;
abilityType = damageTypes.bomb;
damageType = damageTypes.bomb;
explosionIndex = 0;
showHitbox = true;

//Timers

setupTimer = 0;
destroyTimerMax = 15;
destroyTimer = destroyTimerMax;

//Sound

//audio_play_sound(snd_Explosion1,0,false);