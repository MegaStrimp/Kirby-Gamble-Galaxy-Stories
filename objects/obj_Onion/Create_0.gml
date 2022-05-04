///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

spd = 1;
groundSpd = 0;
groundSpdMax = 1.5;

//Sprites

mask_index = spr_Onion_Mask;

sprIdle = spr_Onion_Normal_Idle;
sprHurt = -1;

//Other Variables

paletteIndex = spr_Onion_Normal_Palette_OrangeCarrot;
hp = 1;
dmg = 1;
points = 200;
clampPositionX = false;
clampPositionY = false;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
hasDeathKnockback = false;
objectOnDeath = true;
objectOnDeathObj = obj_Projectile_ExplosionMask;
hasDeathParticles = false;
explosionResistance = true;
instaDeath = false;
groundCooldown = 0;
