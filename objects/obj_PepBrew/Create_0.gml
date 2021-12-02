///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
grav = .2;
gravLimit = 5;
accel = .2;
spd = 0;
spdMax = 2;

//Other Variables

sprHurt = "self";
points = 10;
ability = "none";
enemy = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
hasGravity = true;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_Wall;
collisionY = obj_Wall;
hasAura = false;

//Timers

auraTimerMax = 2;
auraTimer = auraTimerMax;