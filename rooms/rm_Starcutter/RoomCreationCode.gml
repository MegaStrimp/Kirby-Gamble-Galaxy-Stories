///@description Room Creation Code

//Variables

global.discordDetailText = "Lor Starcutter";
global.discordLargeImage = "ggs_icon";

//Stage Number

global.stageNumber = 4;
global.roomCheckpoint = room;
global.isHub = true;

//Music
audio_stop_all();
/*
if (!audio_is_playing(mus_ThatPartInStroheimTheme))
{
	audio_stop_all();
	//global.musicPlaying = audio_play_sound(mus_ThatPartInStroheimTheme,0,true);
}