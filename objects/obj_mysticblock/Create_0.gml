///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

firebarSpd = 3;

//Other Variables

visible = true;
character = 0;
state = 0;
hurt = false;
maxBeams = 4;
currentBeams = 0;
attackState = 0;
attackNumber = -1;
nearestPlayer = -1;

//Sprites

sprIdle = spr_MysticBlock_Normal_Idle;
sprReady = spr_MysticBlock_Normal_Ready;
sprFirebar = spr_MysticBlock_Normal_Firebar;
sprAttack = spr_MysticBlock_Normal_Attack;
sprHurt = spr_MysticBlock_Normal_Hurt;
sprToplessIdle = spr_MysticBlock_Normal_ToplessIdle;
sprToplessReady = spr_MysticBlock_Normal_ToplessReady;
sprToplessFirebar = spr_MysticBlock_Normal_ToplessFirebar;
sprToplessAttack = spr_MysticBlock_Normal_ToplessAttack;
sprToplessHurt = spr_MysticBlock_Normal_ToplessHurt;

//Timers

setupTimer = 0;
attackTimerMax = 240;
attackTimer = attackTimerMax;