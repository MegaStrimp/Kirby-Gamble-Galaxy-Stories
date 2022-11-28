///@description Initialize Variables

//Event Inherited

event_inherited();

//Other Variables

destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyOutsideView = false;
canBeReflected = false;
state = 0;
owner = id;
enemy = false;
hurtFlags = hurt_type.HURT_NOCOLL;

hitStop.length = 0;
hitStop.affectTar = false;