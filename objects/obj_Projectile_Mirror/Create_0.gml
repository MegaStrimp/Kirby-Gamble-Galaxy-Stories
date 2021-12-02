///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;

//Sprites

sprIdle = spr_Projectile_Mirror_Normal_Idle;
sprShine = spr_Projectile_Mirror_Normal_Shine;

//Other Variables

character = 0;
destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
canReflect = true;
canBeReflected = false;
damageType = "mirror";
enemy = false;
shine = false;

//Timers

shineTimerMax = 1;
shineTimer = shineTimerMax;