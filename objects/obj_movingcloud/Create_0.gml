///@description Initialize Variables

//Event Inherited

event_inherited();

//Sprites

sprIdle = spr_MovingCloud_Normal_Idle;
sprUp = spr_MovingCloud_Normal_Up;
sprDown = spr_MovingCloud_Normal_Down;
sprLeft = spr_MovingCloud_Normal_Left;
sprRight = spr_MovingCloud_Normal_Right;

//Other Variables

character = 0;
hasTop = false;
movementState = -1;
movementSubState = 0;

//Timers

setupTimer = 0;