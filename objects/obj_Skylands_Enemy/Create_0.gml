///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
hspDummy = 0;
vspDummy = 0;
knockbackX = 0;
knockbackY = 0;
accel = 0;
decel = .05;
movespeed = 0;
jumpspeed = 0;
grav = 0;
gravNormal = .15;
gravLimit = 0;
gravLimitNormal = 0;

//Other Variables

shakeX = 0;
shakeY = 0;
paletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
hurt = false;
invincible = false;
invincibleFlash = false;
attack = false;
character = 0;
state = 0;
hp = 0;
dmg = 0;
ability = playerAbilities.none;
points = 0;
isBoss = false;
hurtable = true;
enemy = true;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolObject = id;
parasolX = 0;
parasolY = 0;
scale = 1;
scaleExX = 0;
scaleExY = 0;
scaleExSpd = .1;
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
collisionX = obj_Wall;
collisionY = obj_Wall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
takenDamageType = 0;
waveEnder = false;
waveEnderTimerMax = 0;
pathFollowing = -1;

//Timers

setupTimer = 0;
hurtTimer = -1;
hurtTimerMax = 15;
invincibleTimer = -1;
invincibleTimerMax = 30;
invincibleFlashTimer = -1;
invincibleFlashTimerMax = 2;