///@description Initialize Variables

//Randomize

randomize();

//Other Variables

owner = id;
state = 0;
amountMax = irandom_range(4,6);
angleMul = choose(1,-1);
amount = 0;
dir = 1;
spriteIndex = -1;
paletteIndex = -1;
hatIndex = -1;
hatShadowIndex = -1;
hatPaletteIndex = -1;

//Timers

createKirbyTimer = 5;