///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
spd = 3;

//Sprites

sprIdle = spr_SMB_BowserFire_Normal_Idle;

//Other Variables

destroyableByProjectile = true;
damageType = damageTypes.fire;
enemy = false;
character = 0;
ability = playerAbilities.fire;

//Timer

vspStopTimer = 24;