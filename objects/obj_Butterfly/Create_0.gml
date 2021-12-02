///@description Initialize Variables

//Randomize

randomize();

//Physics

hsp = 0;
vsp = 0;
spdMax = 1.25;
spd = random_range(-spdMax,spdMax);
spdW = random_range(.1,.25);

//Other Variables

scale = 1;
dir = 1;
current_pal = irandom_range(0,sprite_get_width(spr_Butterfly_Palette) - 1);

//Timers

setupTimer = 0;
directionTimerMax = 60;
directionTimer = directionTimerMax + irandom_range(-10,20);