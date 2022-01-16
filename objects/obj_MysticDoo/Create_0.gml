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
sprAttack = spr_MysticDoo_Normal_Attack;
sprHurt = spr_MysticDoo_Normal_Hurt;

//Other Variables

paletteIndex = spr_MysticDoo_Normal_Palette_CorruptedTwilight;
hp = 27;
dmg = 1;
ability = playerAbilities.mysticBeam;
points = 600;
hasGravity = false;
isMystic = true;
attack = false;
attackState = 0;
orbitMax = 30;

//Timers

attackTimerMax = 300;
attackTimer = attackTimerMax;