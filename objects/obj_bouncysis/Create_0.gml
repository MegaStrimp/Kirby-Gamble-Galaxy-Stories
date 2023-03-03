///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .015;
movespeed = 1;
jumpspeed = 7;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_BouncySis_Mask;

sprIdle = spr_BouncySis_Normal_Idle;
sprJump = spr_BouncySis_Normal_Jump;
sprDuck = spr_BouncySis_Normal_Duck;
sprHurt = spr_BouncySis_Normal_Hurt;

//Other Variables

paletteIndex = spr_BouncySis_Normal_Palette_GiganticPink;
hp = bouncySis_Hp;
dmg = baseEnemyContactDamage;
points = bouncySis_Points;
heavy = true;
duck = false;
jump = false;
gettingInhaled = false;
inhalePower = 0;
inhalePowerMax = 45;

//Timers

jumpTimer = -1;
jumpTimerMax = 30;