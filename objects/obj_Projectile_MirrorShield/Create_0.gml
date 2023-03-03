///@description Initialize Variables

//Event Inherited

event_inherited();

//Other Variables

destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
hurtsObject = false;
destroyOutsideView = false;
canBeReflected = false;
canReflect = true;
owner = id;
enemy = false;
character = 0;

//Sprites

sprShield = spr_Projectile_MirrorShield_Normal_Shield;
sprRing = spr_Projectile_MirrorShield_Normal_Ring;

//Timers

spriteTimerMax = 1;
spriteTimer = spriteTimerMax;
invincibleTimer = -1;
invincibleTimerMax = 4;