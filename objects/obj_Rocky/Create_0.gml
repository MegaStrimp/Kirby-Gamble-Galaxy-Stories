///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

decel = .05;
movespeed = 1.5;
jumpspeed = 4;
gravNormal = .7;
gravLimitNormal = 7;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_Rocky_Normal_Idle;
sprWalk = spr_Rocky_Normal_Walk;
sprJump = spr_Rocky_Normal_Jump;
sprHurtGround = spr_Rocky_Normal_HurtGround;
sprHurtAir = spr_Rocky_Normal_HurtAir;
sprHurt = sprHurtGround;

//Other Variables

paletteIndex = spr_Rocky_Normal_Palette_BrownRock;
hp = 44;
dmg = 1;
ability = "stone";
points = 400;
heavy = true;
particleReleased = false;
turnCounter = 0;
turnCounterMax = 2;
animDir = -1;

//Timers

attackTimerMax = 45;
attackTimer = attackTimerMax;