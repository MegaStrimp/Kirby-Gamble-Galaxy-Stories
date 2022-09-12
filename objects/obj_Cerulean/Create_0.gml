///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

decel = .05;
movespeed = 1.5;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_BroomHatter_Normal_Idle;
sprWalk = spr_BroomHatter_Normal_Walk;
sprHurt = spr_BroomHatter_Normal_Inhale;
sprHurtNormal = spr_BroomHatter_Normal_Hurt;

//Other Variables

paletteIndex = spr_BroomHatter_Normal_Palette_YellowBroom;
hp = 16;
dmg = 1;
points = 200;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
particleReleased = true;
turnCounter = 0;
turnCounterMax = 2;

//Timers

attackTimerMax = 45;
attackTimer = attackTimerMax;