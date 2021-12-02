///@description Room End

//Reset Global Variables

global.isHub = false;
global.halberdEscape = false;

//Stop Sounds

if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);

//Stop Cutscene

if ((global.cutscene) and (!instance_exists(obj_CutsceneControl))) global.cutscene = false;