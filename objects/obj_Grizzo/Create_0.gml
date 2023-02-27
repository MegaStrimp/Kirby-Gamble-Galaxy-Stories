///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .015;
movespeed = .5;
jumpspeed = 2.25;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_Grizzo_Normal_Idle;
sprWalk = spr_Grizzo_Normal_Walk;
sprDash = spr_Grizzo_Normal_Dash;
sprSleep = spr_Grizzo_Normal_Sleep;
sprHurt = spr_Grizzo_Normal_Hurt;

//Other Variables

paletteIndex = spr_Grizzo_Normal_Palette_TanBear;
hp = grizzo_Hp;
dmg = baseEnemyContactDamage;
points = grizzo_Points;
heavy = true;
gettingInhaled = false;
attack = false;
attackState = 0;
attackHop = false;
inhalePower = 0;
inhalePowerMax = 45;

//Timers

attackTimerMax = 150;
attackTimer = attackTimerMax;
particleTimer = -1;
particleTimerMax = 5;
