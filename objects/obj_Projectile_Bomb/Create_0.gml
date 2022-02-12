///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
movespeed = 0;
jumpspeed = 0;
grav = .2;
gravLimit = 5;

//Sprites

sprIdle = spr_Projectile_Bomb_Normal;
sprBig = spr_Projectile_Bomb_Normal_Big;

//Other Variables

character = 0;
hurtsEnemy = false;
objectOnHit = true;
objectOnHitObj = obj_Projectile_ExplosionMask;
hasGravity = true;
enemy = false;
explosionIndex = 0;
angleSpd = 0;
active = true;
xOffset = 0;
yOffset = 0;
canRotate = true;
hasParticle = true;
hasHoming = false;
homingEnemy = -1;
hasRemoteDetonation = false;
hasMagma = false;
destroyAfterHurt = true;
canBeInhaled = false;

//Timers

explodeTimer = -1;
selfExplodeTimer = -1;
selfExplodeTimerMax = 300;