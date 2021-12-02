///@description Initialize Variables

//Randomize

randomize();

//Sprites

sprIdle = spr_CuttableGrass_Normal_Idle;
sprTop = spr_CuttableGrass_Normal_Top;
sprBottom = spr_CuttableGrass_Normal_Bottom;

//Other Variables

character = 0;
number = 0;
cut = false;
damageType = "none";
color = 255;
colorLerp = 255;
spawn = false;
item = -1;

//Timers

setupTimer = 0;
destroyTimer = -1;