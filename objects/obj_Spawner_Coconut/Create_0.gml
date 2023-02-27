///@description Initialize Variables

//Physics

gravNormal = .2;
gravLimitNormal = 6;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_Coconut_Normal_Palette_TropicalBrown;
state = 0;
hp = coconut_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.none;
points = coconut_Points;
hurtable = true;
hasGravity = true;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 2;
parasolY = 3;
scale = 1;
dirX = 1;
dirY = 1;
walkDirX = 1;
walkDirY = 1;
imageAngle = 0;
hasXCollision = true;
hasYCollision = true;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = true;
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;

//Timers

spawnTimer = 0;