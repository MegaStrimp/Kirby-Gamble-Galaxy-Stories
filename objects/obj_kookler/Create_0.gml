///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = 2;

//Sprites

mask_index = spr_24Square_Mask;

sprIdle = spr_Kookler_Normal_Idle;
sprHurt = spr_Kookler_Normal_Hurt;

//Other Variables

paletteIndex = spr_Kookler_Normal_Palette_BlueSpin;
hp = kookler_Hp;
dmg = baseEnemyContactDamage;
points = kookler_Points;
hasXCollision = false;
hasYCollision = false;
followedPath = pth_Enemy_Kookler_Circle;
path = -1;