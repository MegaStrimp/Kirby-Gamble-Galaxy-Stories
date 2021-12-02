///@description Room Creation Code

//Variables

global.discordDetailText = "Green Greens";
global.discordLargeImage = "greengreens_icon";

//Stage Number

global.stageNumber = 1;
global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_BossTension))
{
	audio_stop_all();
	global.musicPlaying = audio_play_sound(mus_BossTension,0,true);
}