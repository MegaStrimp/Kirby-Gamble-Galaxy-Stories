///@description Room Creation Code

//Variables

global.discordDetailText = "Green Greens";
global.discordLargeImage = "greengreens_icon";

//Stage Number

global.stageNumber = 4;
global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_Cutscene_Intro))
{
	audio_stop_all();
	global.musicPlaying = audio_play_sound(mus_Cutscene_Intro,0,false);
}