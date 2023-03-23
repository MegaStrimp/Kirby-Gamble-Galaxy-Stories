///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = 2;

//Sprites

mask_index = spr_24Square_Mask;

sprBody = spr_Mopoo_Normal_Body;
sprFace = spr_Mopoo_Normal_Face;
sprHurt = spr_Mopoo_Normal_Hurt;

//Other Variables

paletteIndex = spr_Mopoo_Normal_Palette_PuffyCloud;
hp = mopoo_Hp;
dmg = baseEnemyContact_Damage;
points = mopoo_Points;
hasXCollision = false;
hasYCollision = false;
followedPath = pth_Enemy_Kookler_Circle;
path = -1;
xprevious1 = x;
yprevious1 = y;
xprevious2 = x;
yprevious2 = y;
xprevious3 = x;
yprevious3 = y;
faceIndex = 0;