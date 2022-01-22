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

sprIdle = spr_Key_Normal;

//Other Variables

character = 0;
active = true;
owner = id;
hasGravity = true;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_Wall;
collisionY = obj_Wall;
dirX = 1;

//Timer

setupTimer = 0;