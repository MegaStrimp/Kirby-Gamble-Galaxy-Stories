///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;

//Sprites

sprIdle = spr_Doomsday_Normal_Bomb;

//Other Variables

character = 0;
objectOnHit = true;
objectOnHitObj = obj_Projectile_ExplosionMask;
destroyableByPlayer = true;
destroyableByWall = true;
damageType = damageTypes.bomb;
ability = playerAbilities.bomb;