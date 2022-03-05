///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
movespeed = 1;
jumpspeed = 6;
grav = .2;
gravLimit = 5;
accel = .025;
walkDirY = -1;
vspDummy = 0;

//Other Variables

owner = id;
scale = 1;
dir = 1;
sprHurt = "self";
ability = playerAbilities.none;
points = 0;
enemy = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
destroy = false;
insideWall = false;
hasAura = false;
player = id;
isBubble = false;
invincible = false;

//Timers

destroyTimerMin = 90;
destroyTimerMax = 600;
destroyTimer = destroyTimerMax;
auraTimerMax = 2;
auraTimer = auraTimerMax;