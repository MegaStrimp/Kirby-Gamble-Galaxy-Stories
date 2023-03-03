///@description Initialize Variables

//Other Variables

stage = 0;
wave = 0;
enemyCount = 0;
musicFade = 0;

//Timers

setupTimer = 0;
waveTimer = 0;
enemySpawnTimer = -1;

//Music

audio_stop_all();

music = scr_PlayMusic(true,false,mus_Skylands,0,true);

var musicPosition = choose(0,78,140,194);
audio_sound_set_track_position(music,musicPosition);

//Create Objects

if (!instance_exists(obj_Skylands_Hud)) instance_create_depth(x,y,-998,obj_Skylands_Hud);