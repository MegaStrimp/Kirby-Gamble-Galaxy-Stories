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

sprIdle = spr_Twizzy_Normal_Idle;
sprFly = spr_Twizzy_Normal_Fly;
sprHurt = spr_Twizzy_Normal_Hurt;

//Other Variables

paletteIndex = spr_Twizzy_Normal_Palette_FlyingYolk;
hp = twizzy_Hp;
dmg = baseEnemyContact_Damage;
points = twizzy_Points;
hasGravity = true;
hasXCollision = false;
hasYCollision = false;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = false;
triggerRange = 48;
state1Trigger = false;

//Timers

jumpTimer = 0;
jumpTimerMax = 60;