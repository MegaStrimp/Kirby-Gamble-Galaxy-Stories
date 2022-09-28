///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
grav = .075;
gravLimit = 3;

//Other Variables

number = 0;
destroy = false;
shake = 0;
canChangeColor = false;
redTarget = 255;
greenTarget = 255;
blueTarget = 255;
red = 255;
green = 255;
blue = 255;
color = make_color_rgb(red,green,blue);
angleSpd = 0;
splitAmount = 0;
flashColor[0] = make_color_rgb(255,255,255);
flashColorCount = 0;
hasGravity = true;
clampY = false;

//Timers

destroyTimer = 20;
flashTimerMax = -1;
flashTimer = flashTimerMax;