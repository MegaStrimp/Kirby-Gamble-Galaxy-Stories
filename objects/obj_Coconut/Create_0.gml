///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

gravNormal = .2;
gravLimitNormal = 6;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Coconut_Normal_Idle;
sprHurt = -1;

//Other Variables

paletteIndex = spr_Coconut_Normal_Palette_TropicalBrown;
hp = coconut_Hp;
dmg = baseEnemyContactDamage;
points = coconut_Points;
triggered = false;
hasGravity = false;