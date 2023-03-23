///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .015;
movespeed = .75;
jumpspeed = 5;
gravNormal = .15;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_SirKibble_Normal_Idle;
sprWalk = spr_SirKibble_Normal_Walk;
sprReady = spr_SirKibble_Normal_Ready;
sprAttack = spr_SirKibble_Normal_Attack;
sprCatch = spr_SirKibble_Normal_Catch;
sprHurt = spr_SirKibble_Normal_Hurt;
sprHurtAir = spr_SirKibble_Normal_HurtAir;

//Other Variables

paletteIndex = spr_SirKibble_Normal_Palette_Yellow;
hp = sirKibble_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.cutter;
points = sirKibble_Points;
attack = false;
attackState = 0;
thrown = false;
projectile = id;
cutterCatch = false;

//Timers

attackTimerMax = 180;
attackTimer = attackTimerMax;
attackTimerMin = 30;
attackStopTimer = -1;
attackStopTimerMax = 20;
cutterCatchTimer = -1;
cutterCatchTimerMax = 15;