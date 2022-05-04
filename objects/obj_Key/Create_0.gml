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
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
dirX = 1;
xOffset = 0;
yOffset = 0;
shake = 0;
isKeyChestKey = false;
auraAngle = 0;

//Timer

setupTimer = 0;