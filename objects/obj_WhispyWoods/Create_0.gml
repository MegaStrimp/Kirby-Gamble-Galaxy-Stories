///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

movespeed = 1.5;
jumpspeed = 5;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

sprIdle = spr_WhispyWoods_Normal_Idle;
sprBlink = spr_WhispyWoods_Normal_Blink;
sprSpit = spr_WhispyWoods_Normal_Spit;
sprGamble = spr_WhispyWoods_Normal_Gamble;
sprGambleLeaf = spr_WhispyWoods_Normal_GambleLeaf;
sprBossIcon = spr_Healthbar_Boss_Icon_WhispyWoods;

//Other Variables

hp = 500;
dmg = 1;
points = 200;
isBoss = true;
hasXKnockback = false;
hasYKnockback = false;

phase = "inactive";
//phase = "2";
faceSprite = sprIdle;
faceIndex = 0;
gambleIndex = 0;
gambleShake = false;
attack = false;
attackState = "none";
attackStop = false;
spawnHealthbar = true;
attackCount = 0;

//Counters

readyCounter = 0;
readyCounterMax = 30;

gambleShakeCounter = 0;
gambleShakeCounterMax = 180;

idleCounter = 0;
idleCounterMax = irandom_range(30,120);

attackCounter = 0;
attackCounterMax = 120;

spitCounter = 0;
spitCounterMax = 3;

appleCounter = 0;
appleCounterMax = 3;

appleSpawnCounter = 0;
appleSpawnCounterMax = 60;

attackStopCounter = 0;
attackStopCounterMax = 120;

leafCounterMax = 30;
leafCounter = leafCounterMax;