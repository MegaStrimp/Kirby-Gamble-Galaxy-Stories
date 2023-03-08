///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .015;
movespeed = .5;
jumpspeed = 2.25;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_PoppyBrosJr_Normal_Idle;
sprThrowReady = spr_PoppyBrosJr_Normal_ThrowReady;
sprThrow = spr_PoppyBrosJr_Normal_Throw;
sprHand = spr_PoppyBrosJr_Normal_Hand;
sprHurt = spr_PoppyBrosJr_Normal_Hurt;

//Other Variables

paletteIndex = spr_PoppyBrosJr_Normal_Palette_BlueBomber;
hp = poppyBrosJr_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.bomb;
points = poppyBrosJr_Points;
attack = false;
attackState = 0;
handPos = 0;
handPosSpd = 0;
bomb = -1;
handXOffset = 0;
handYOffset = 0;
weaponIndex = 1;

//Timers

attackTimerMax = 360;
attackTimer = attackTimerMax;