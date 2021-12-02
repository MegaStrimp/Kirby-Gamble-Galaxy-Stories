///@description Initialize Variables

//Physics

hsp = 0;
vsp = -4;
grav = .2;
gravLimit = 2;

//Other Variables

shake = 0;
pointStarPoints = 1;
sfx = snd_PointStar_Low;
character = 0;
hasGravity = false;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_Wall;
collisionY = obj_Wall;

//Timers

setupTimer = 0;
destroyTimer = 30;