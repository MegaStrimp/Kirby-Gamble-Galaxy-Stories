///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = 4;

//Sprites

sprIdle = spr_Chuckie_Idle;
sprNeck = spr_Chuckie_Neck;
sprHurt = spr_Chuckie_Hurt;

//Other Variables

paletteIndex = spr_Chuckie_Normal_Palette_BlueSphere;
hp = chuckie_Hp;
dmg = baseEnemyContactDamage;
points = chuckie_Points;
hasXCollision = false;
hasYCollision = false;
hasXKnockback = false;
hasYKnockback = false;
followedPath = pth_Enemy_Chuckie;
sound1Played = false;
sound2Played = false;
sound3Played = false;

//Timers

particleTimerMax = 20;
particleTimer = particleTimerMax;
destroyTimerMax = -1;
destroyTimer = destroyTimerMax;