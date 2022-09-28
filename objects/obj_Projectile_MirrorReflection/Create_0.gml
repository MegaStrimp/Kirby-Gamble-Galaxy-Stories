///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = 0;
spdMax = 4;

//Sprites

sprIdle = spr_Projectile_MirrorReflection_Normal_Idle;

//Other Variables

dmg = 6;
character = 0;
destroyableByWall = false;
destroyableByEnemy = true;
destroyableByObject = false;
hurtsProjectile = false;
canBeReflected = false;
damageType = damageTypes.mirror;
target = id;