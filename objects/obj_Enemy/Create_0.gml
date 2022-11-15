///@description Initialize Variables

//Randomize

randomize();

//Physics

hsp = 0;
hspDummy = 0;
hspFinal = 0;
vsp = 0;
vspDummy = 0;
vspFinal = 0;
knockbackX = 0;
knockbackY = 0;
accel = 0;
decel = .05;
movespeed = 0;
jumpspeed = 0;
grav = 0;
gravNormal = .15;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 0;
gravLimitParasol = .5;

//Other Variables

owner = id;
destroyOutsideView = false;
hasSpawner = false;
spawner = id;
spawnerRange = 96;
canShakeX = true;
canShakeY = true;
shakeX = 0;
shakeY = 0;
paletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
paletteFlash = 1;
hurt = false;
death = false;
deathAnimationPlayed = false;
invincible = false;
invincibleFlash = false;
attack = false;
character = 0;
state = 0;
hp = 0;
hpMax = 0;
bossHbHp = 0;
dmg = 0;
ability = playerAbilities.none;
points = 0;
isMiniBoss = false;
isBoss = false;
isBossMinion = false;
hurtable = true;
hasGravity = true;
enemy = true;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolObject = -1;
parasolX = 0;
parasolY = 0;
scale = 1;
scaleExX = 0;
scaleExY = 0;
scaleExSpd = .1;
dirX = -1;
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
takenDamageType = 0;
bossOffsetX = -1;
bossOffsetY = -1;
isMystic = false;
overlayHsp = 0;
overlayVsp = 0;
fluxOverlayAlpha = 0;
hasDeathKnockback = true;
hasDeathAnimation = true;
hasDeathParticles = true;
canGetHealthbar = true;
healthbarBackHp = 0;
healthbarIndex = 0;
hbActive = true;
groundFailsafe = true;
sprHurt = -1;
sprBossIcon = -1;
sprBossText = -1;
drawShakeX = 0;
drawShakeY = 0;
squadType = -1;
explosionResistance = false;
projectileHitKnockbackDir = 1;
takenIsFamiliar = false;
bubbleX = 0;
bubbleY = 0;
instaDeath = false;
fellDown = false;
hurtImageIndex = 0;
collisionHitbox = -1;
pausedInCutscenes = true;
starColors = [0,1,2,3,4,5,6,7];

//Timers

setupTimer = 0;
hurtTimer = -1;
hurtTimerMax = 180;
hurtTimerMax = 20;
hurtStopTimer = -1;
hurtStopTimerMax = 12;
invincibleTimer = -1;
invincibleTimerMax = 180;
invincibleTimerMax = 20;
invincibleFlashTimer = -1;
invincibleFlashTimerMax = 2;
shineEffectTimer = -1;
shineEffectTimerMax = 6;