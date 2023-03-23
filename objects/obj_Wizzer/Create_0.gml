///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .015;
movespeed = .75;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Wizzer_Normal_Idle;
sprOpen = spr_Wizzer_Normal_Open;
sprClose = spr_Wizzer_Normal_Close;
sprReady = spr_Wizzer_Normal_Ready;
sprAttack = spr_Wizzer_Normal_Attack;
sprHurtNormal = spr_Wizzer_Normal_HurtNormal;
sprHurtInhale = spr_Wizzer_Normal_HurtInhale;

//Other Variables

paletteIndex = spr_Wizzer_Normal_Palette_NavyShell;
hp = wizzer_Hp;
dmg = baseEnemyContact_Damage;
hasXKnockback = false;
hasYKnockback = false;
ability = playerAbilities.beam;
points = wizzer_Points;
shellAnimation = false;
attackState = 0;

//Timers

attackTimerMax = 300;
attackTimerMin = 90;
attackTimer = attackTimerMax;