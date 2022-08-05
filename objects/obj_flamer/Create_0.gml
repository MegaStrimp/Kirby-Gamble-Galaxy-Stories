///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

movespeed = 3;

//Sprites

mask_index = spr_Flamer_Normal_Idle;

sprIdle = spr_Flamer_Normal_Idle;
sprReady = spr_Flamer_Normal_Ready;
sprAttack = spr_Flamer_Normal_Attack;
sprHurt = spr_Flamer_Normal_Hurt;

//Other Variables

paletteIndex = spr_Flamer_Normal_Palette_FieryRed;
hp = 12;
dmg = 1;
ability = playerAbilities.fire;
points = 300;
hasXCollision = false;
hasYCollision = false;
hasXKnockback = false;
hasYKnockback = false;
attackState = 0;
moveDir = 0;
playerDir = 0;

//Timers

attackTimerMax = 210;
attackTimerMin = 30;
attackTimer = attackTimerMax;
particleTimer = -1;
particleTimerMax = 15;