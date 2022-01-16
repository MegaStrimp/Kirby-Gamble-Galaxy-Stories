///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Sprites

mask_index = spr_24Square_Mask;

sprIdle = spr_Search_Normal_Idle;
sprCharge = spr_Search_Normal_Charge;
sprHurt = spr_Search_Normal_Hurt;

//Other Variables

paletteIndex = spr_Search_Normal_Palette_BombshellGray;
hp = 1;
dmg = 1;
ability = playerAbilities.crash;
points = 500;
hasXKnockback = true;
hasYKnockback = true;
hasDeathKnockback = false;
objectOnDeath = true;
objectOnDeathObj = obj_Projectile_ExplosionMask;
hasDeathParticles = false;
charge = false;
scaleExTemp = 0;
scaleExTempSpd = .01;
scaleExTempSpdMax = .03;
scaleExTempDir = 1;
scaleExTempMax = .1;
explosionResistance = true;

//Timers

explodeTimer = -1;
explodeTimerMax = 90;