///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .015;
movespeed = .5;
jumpspeed = 2;
gravNormal = .2;
gravLimitNormal = 5;
shroomLaunchSpd = -6;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdleL = spr_Cappy_Normal_IdleL;
sprIdleR = spr_Cappy_Normal_IdleR;
sprShroomIdle = spr_Cappy_Normal_ShroomIdle;
sprHurt = spr_Cappy_Normal_Hurt;
sprShroom = spr_Cappy_Normal_Shroom;

//Other Variables

paletteIndex = spr_Cappy_Normal_Palette_RedCap;
hp = 12;
dmg = 1;
points = 200;
dirXDummy = 1;
attack = false;
shroom = id;
attackCount = 0;
attackCountMax = random_range(1,3);
thrown = false;

//Timers

attackStopTimer = -1;
attackStopTimerMax = 300;
attackTimer = -1;
attackTimerMax = 90;