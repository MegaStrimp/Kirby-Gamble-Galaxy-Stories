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

sprIdle = spr_Yolky_Normal_Idle;
sprShoot = spr_Yolky_Normal_Shoot;
sprHurt = -1;

//Other Variables

paletteIndex = spr_Yolky_Normal_Palette_SunnySideUp;
hp = yolky_Hp;
dmg = baseEnemyContactDamage;
points = yolky_Points;
animDir = 1;
attack = false;
attackCount = 0;
attackCountMax = 3;
projCount = 1;

//Timers

shootTimer = -1;
shootTimerMax = 20;
attackTimerMax = 90;
attackTimer = attackTimerMax;
