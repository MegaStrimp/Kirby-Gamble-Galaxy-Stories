///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
spdBuiltIn = 0;
spd = 0;
spdMax = 4;
turnSpd = 0;
fric = 0;
fricSpd = 0;
grav = .15;
gravLimit = 2;
piTurnSpd = 0;
xx = x;
scaleSpd = 0;
alphaSpd = 0;

//Other Variables

owner = -1;
destroyAfterAnimation = false;
destroyAfterCollidingFollow = false;
destroyOutsideRoom = false;
followObject = true;
followedObject = id;
followedObjectX = 0;
followedObjectY = 0;
hasGravity = false;
inhaleParticle = false;
turnAroundObject = false;
angle = 0;
orbit = 6;
timer = 0;
hasPiTurn = false;
time = 0;
scale = 1;
dir = 1;
dirY = 1;
imageSpeed = 1;
pausable = true;
hasPalette = false;
paletteSpriteIndex = -1;
paletteIndex = -1;
attachedObject = -1;
attachedObjectXOffset = 0;
attachedObjectYOffset = 0;
angleSpd = 0;
collisionX = -1;
collisionY = -1;
stopRotationAfterCollision = false;
hasAfterimage = false;
blendMode = bm_normal;

//Timers

invisTimer = -1;
invisTimerMax = 4;
trailTimer = -1;
trailTimerMax = 5;
destroyTimer = -1;