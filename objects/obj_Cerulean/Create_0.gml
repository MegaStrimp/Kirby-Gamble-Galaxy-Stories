///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

decel = .02;
movespeed = 1.5;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_Cerulean_Normal_Idle;
sprAttackReady = spr_Cerulean_Normal_AttackReady;
sprAttackRelease = spr_Cerulean_Normal_AttackRelease;
sprHurt = spr_Cerulean_Normal_Hurt;

//Other Variables

paletteIndex = spr_Cerulean_Normal_Palette_GreenBean;
hp = cerulean_Hp;
dmg = baseEnemyContactDamage;
points = cerulean_Points;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
hasXKnockback = false;
hasYKnockback = false;
turnCounter = 0;
turnCounterMax = 2;
attack = false;

//Timers

attackTimerMax = 15;
attackTimer = attackTimerMax;