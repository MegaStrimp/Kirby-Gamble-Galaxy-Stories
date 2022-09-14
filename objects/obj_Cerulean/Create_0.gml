///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

decel = .02;
movespeed = 3;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_Cerulean_Normal_Idle;
sprAttackReady = spr_Cerulean_Normal_AttackReady;
sprAttackRelease = spr_Cerulean_Normal_AttackRelease;
sprHurt = spr_Cerulean_Normal_Hurt;

//Other Variables

paletteIndex = spr_Cerulean_Normal_Palette_GreenBean;
hp = 16;
dmg = 1;
points = 200;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
turnCounter = 0;
turnCounterMax = 2;
attack = false;

//Timers

attackTimerMax = 30;
attackTimer = attackTimerMax;