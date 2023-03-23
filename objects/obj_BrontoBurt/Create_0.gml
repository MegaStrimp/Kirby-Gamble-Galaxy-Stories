///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .05;
movespeed = .75;
jumpspeed = 1.5;
gravNormal = .05;
gravLimitNormal = 1.25;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_BrontoBurt_Normal_Idle;
sprReady = spr_BrontoBurt_Normal_Ready;
sprWalk = spr_BrontoBurt_Normal_Walk;
sprFly = spr_BrontoBurt_Normal_Fly;
sprHurtGround = spr_BrontoBurt_Normal_HurtGround;
sprHurtFly = spr_BrontoBurt_Normal_HurtFly;
sprHurt = sprHurtGround;

//Other Variables

paletteIndex = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
hp = brontoBurt_Hp;
dmg = baseEnemyContact_Damage;
points = brontoBurt_Points;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = false;
triggerRange = 48;
state1Trigger = false;
joy = choose(false,true);

//Timers

jumpTimer = 0;
jumpTimerMax = 60;