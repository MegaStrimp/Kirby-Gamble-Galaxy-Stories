///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

decel = .15;

//Sprites

sprSpawn = spr_RecoilStar_Normal_Spawn;
sprIdle = spr_RecoilStar_Normal_Idle;
sprDestroy = spr_RecoilStar_Normal_Destroy;

//Other Variables

character = 0;
dmg = 12;
destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
hurtsObject = true;
hurtsEnemy = true;
hurtsPlayer = false;
canBeReflected = false;
destroyOutsideView = false;
owner = id;
enemy = false;
canBeInhaled = true;
GAMEMAKERBUG = true;

//Timers

spawnTimer = 0;
destroyTimer = 60;

//Sound

//audio_play_sound(snd_Explosion1,0,false);