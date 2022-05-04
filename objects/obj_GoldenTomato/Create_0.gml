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

sprHurt = -1;
points = 1000;
ability = playerAbilities.none;
enemy = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
hasGravity = true;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
destroy = false;
followTarget = false;
hasAura = false;
shake = 0;
flash = false;

//Timers

auraTimerMax = 2;
auraTimer = auraTimerMax;
flashTimer = -1;
flashTimerMax = 2;