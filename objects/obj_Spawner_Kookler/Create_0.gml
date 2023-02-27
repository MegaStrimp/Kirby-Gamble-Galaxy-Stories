///@description Initialize Variables

//Physics

spd = 2;

//Other Variables

spawn = false;
spawnerRange = 24;
horLoop = 1;
verLoop = 1;
horOffset = 0;
verOffset = 0;
character = 0;
paletteIndex = spr_Kookler_Normal_Palette_BlueSpin;
state = 0;
hp = kookler_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.none;
points = kookler_Points;
hurtable = true;
hasGravity = true;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 4;
parasolY = 3;
scale = 1;
dirX = 1;
dirY = 1;
walkDirX = 1;
walkDirY = 1;
imageAngle = 0;
hasXCollision = false;
hasYCollision = false;
clampPositionX = true;
clampPositionY = true;
offScreenTurning = true;
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;
followedPath = pth_Enemy_Kookler_Circle;

//Timers

spawnTimer = 0;