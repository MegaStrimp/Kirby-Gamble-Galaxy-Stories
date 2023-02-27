///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_Glunk_Normal_Idle;
sprHurt = spr_Glunk_Normal_Hurt;

//Other Variables

paletteIndex = spr_Glunk_Normal_Palette_Melon;
hp = glunk_Hp;
dmg = baseEnemyContactDamage;
points = glunk_Points;
animDir = 1;
attack = false;
attackCount = 0;
attackCountMax = 3;

//Timers

animDirTimerMax = 45;
animDirTimer = animDirTimerMax;
animDirTimerMin = 10;
attackTimerMax = 210;
attackTimer = attackTimerMax;