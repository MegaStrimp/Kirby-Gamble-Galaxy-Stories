///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
movespeed = 0;
jumpspeed = .4;
grav = .01;
gravLimit = 1;
accel = .025;
decel = .05;
walkDirY = -1;
vspDummy = 0;

//Other Variables

owner = id;
scale = 1;
dir = 1;
sprHurt = -1;
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
doesJump = false;

//Ground Failsafe

while (place_meeting(x,y + 1,obj_ParentWall)) y -= 1;
while (place_meeting(x,y,obj_ParentWall)) y += 1;

//Timers

destroyTimerMin = 90;
destroyTimerMax = 600;
destroyTimer = destroyTimerMax;
auraTimerMax = 2;
auraTimer = auraTimerMax;