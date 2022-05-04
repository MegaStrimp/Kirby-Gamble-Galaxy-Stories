///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

gravNormal = .2;
gravLimitNormal = 4;

//Sprites

mask_index = spr_16Square_Mask;

sprPot = spr_Wapod_Normal_Pot;
sprHurt = -1;
sprGhostSpawn = spr_Wapod_Normal_Spawn;
sprGhostIdle = spr_Wapod_Normal_Idle;
sprGhostHurt = spr_Wapod_Normal_Hurt;

//Other Variables

paletteIndex = spr_Wapod_Normal_Palette_PhantomPastel;
hp = 1;
dmg = 1;
points = 500;
hasXKnockback = true;
hasYKnockback = true;

//Timers

spawnTimerMax = 300;
spawnTimer = spawnTimerMax;