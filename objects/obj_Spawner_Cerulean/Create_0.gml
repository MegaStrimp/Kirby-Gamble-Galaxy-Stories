///@description Initialize Variables

//Physics

decel = .02;
movespeed = 1.5;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_Cerulean_Normal_Palette_GreenBean;
state = 0;
hp = cerulean_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.none;
points = cerulean_Points;
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
turnCounter = 0;
turnCounterMax = 2;

//Timers

spawnTimer = 0;
attackTimerMax = 15;
attackTimer = attackTimerMax;
