///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .02;
movespeed = 1;
jumpspeed = 5;
gravNormal = .25;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Gim_Normal_Idle;
sprWalk = spr_Gim_Normal_Walk;
sprHurt = spr_Gim_Normal_Hurt;
sprJump = spr_Gim_Normal_Jump;
sprFall = spr_Gim_Normal_Fall;
sprPrep = spr_Gim_Normal_Prep;
sprHandFlingDown = spr_GimHand_Normal_FlingDown;
sprHandFlingMiddle = spr_GimHand_Normal_FlingMiddle;
sprHandFlingUp = spr_GimHand_Normal_FlingUp;
sprHandHoldClose = spr_GimHand_Normal_HoldClose;
sprHandHoldAway = spr_GimHand_Normal_HoldAway;

//Other Variables

paletteIndex = spr_Gim_Normal_Palette_YoyoRobo;
hp = 11;
dmg = 1;
ability = playerAbilities.yoyo;
points = 100;
jump = 3;
walk = 4; //Took a little artistic liberty and made his walk variable go up to 4, since it meshed better with his walk cycle
state = 1;
walkDirX = dirX;
throwyo = 0;

//Timers

walkFrame = 12;
yoTimer = 0;
timer = walkFrame;
timerEnable = false;
timerState = 0;
