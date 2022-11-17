///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = 6;

//Sprites

mask_index = spr_24Square_Mask;

sprIdle = spr_Ufo_Normal_Idle;
sprWalk = spr_Ufo_Normal_Walk;
sprHurt = spr_Ufo_Normal_Hurt;
sprBeam = spr_Ufo_Normal_Beam;

//Other Variables

paletteIndex = spr_Ufo_Normal_Palette_Unearthly;
hp = 16;
dmg = 1;
ability = playerAbilities.ufo;
points = 800;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
hasXKnockback = false;
hasYKnockback = false;
angle = 0;
move = false;
carriedItem = obj_InvincibilityCandy;
carriedItemYOffset = 22;

//Timers

moveTimerMax = 80;
moveTimerMin = 10;
moveTimer = moveTimerMax;