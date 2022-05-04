///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
grav = .2;
gravLimit = 5;

//Other Variables

shake = 0;
points = 0;
challengePoints = 1;
sfx = snd_PointStar_Low;
character = 0;
hasGravity = false;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
target = id;
followTarget = false;
followState = 0;
followTimer = 0;
followSpd = 2;
destroy = false;
hasAura = false;

//Timers

setupTimer = 0;
auraTimer = -1;
auraTimerMax = 2;