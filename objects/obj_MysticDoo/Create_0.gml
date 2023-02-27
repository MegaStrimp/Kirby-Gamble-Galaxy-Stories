///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .02;
movespeed = .5;
jumpspeed = .75;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_MysticDoo_Normal_Idle;
sprFloatUp = spr_MysticDoo_Normal_FloatUp;
sprFloatTrans = spr_MysticDoo_Normal_FloatTrans;
sprFloatDown = spr_MysticDoo_Normal_FloatDown;
sprCharge = spr_MysticDoo_Normal_Charge;
sprAttack = spr_MysticDoo_Normal_Attack;
sprWave = spr_MysticDoo_Normal_Wave;
sprWalk = spr_MysticDoo_Normal_Walk;
sprWalkIdle = spr_MysticDoo_Normal_WalkIdle;
sprHurt = spr_MysticDoo_Normal_Hurt;

//Other Variables

paletteIndex = choose(spr_MysticDoo_Normal_Palette_CorruptedTwilight,spr_MysticDoo_Normal_Palette_PalePurple,spr_MysticDoo_Normal_Palette_DarkFlux);
hp = mysticDoo_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.mysticBeam;
points = mysticDoo_Points;
hasGravity = false;
isMystic = true;
attack = false;
attackState = 0;
orbitMax = 30;

//Timers

attackTimerMax = 300;
attackTimer = attackTimerMax;
slideTimer = -1;
slideTimerMax = 45;
