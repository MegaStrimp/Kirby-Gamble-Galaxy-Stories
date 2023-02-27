///@description Initialize Variables

//Physics

accel = .1;
movespeed = 1.5;
jumpspeed = 1.5;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_PlasmaWisp_Normal_Palette_Plasma;
state = 0;
hp = plasmaWisp_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.spark;
points = plasmaWisp_Points;
hurtable = true;
hasGravity = false;
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
hasXCollision = false;
hasYCollision = false;
clampPositionX = true;
clampPositionY = true;
offScreenTurning = true;
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
hasXKnockback = false;
hasYKnockback = false;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;
loopCount = 3;

//Timers

spawnTimer = 0;
attackTimer = 0;
