///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = 2;

//Sprites

mask_index = spr_24Square_Mask;

sprIdle = spr_Bit_Normal_Idle;
sprHurt = -1;

//Other Variables

hasXCollision = false;
hasYCollision = false;
hasXKnockback = false;
hasYKnockback = false;

angleDir = 0;
moveWidth = 24;

targetX = xstart;
targetY = ystart;

//Timers

movetimerMax = 120;
movetimer = movetimerMax;