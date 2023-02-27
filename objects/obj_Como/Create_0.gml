///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .1;
movespeed = 1;
jumpspeed = .5;
gravNormal = .0;
gravLimitNormal = 0;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Como_Normal_Idle;
sprFall = spr_Como_Normal_Fall;
sprHurt = spr_Como_Normal_Hurt;

//Other Variables

paletteIndex = spr_Como_Normal_Palette_SpiderGold;
hp = como_Hp;
dmg = baseEnemyContactDamage;
points = como_Points;
hasGravity = false;
attack = false;
hasString = true;

//Timers
attackTimer = -1;
attackTimerMax = 5;
fallTimer = 60;
fallTimerMax = 60*1.5;
