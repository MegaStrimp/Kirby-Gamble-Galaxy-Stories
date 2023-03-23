///@description Initialize Variables

//Physics

gravNormal = .2;
gravLimitNormal = 5;

//Other Variables

spawn = false;
spawnerRange = 72;
character = 0;
paletteIndex = spr_Glunk_Normal_Palette_Melon;
state = 0;
hp = glunk_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.none;
points = glunk_Points;
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

//Timers

spawnTimer = 0;
animDirTimerMax = 45;
animDirTimer = animDirTimerMax;
animDirTimerMin = 10;
attackTimerMax = 210;
attackTimer = attackTimerMax;