///@description Initialize Variables

//Physics

accel = .02;
decel = .05;
movespeed = .5;
jumpspeed = .75;
grav = 0;
gravNormal = .2;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 5;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 72;
character = 0;
paletteIndex = choose(spr_MysticDoo_Normal_Palette_CorruptedTwilight,spr_MysticDoo_Normal_Palette_PalePurple,spr_MysticDoo_Normal_Palette_DarkFlux);
state = 0;
hp = mysticDoo_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.mysticBeam;
points = mysticDoo_Points;
hurtable = true;
hasGravity = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 0;
parasolY = 0;
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
orbitMax = 30;

//Timers

spawnTimer = 0;
attackTimerMax = 300;
attackTimer = attackTimerMax;