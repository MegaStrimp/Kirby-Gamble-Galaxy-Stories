///@description Room Creation Code

//Variables

global.discordDetailText = "Green Greens";
global.discordLargeImage = "greengreens_icon";

//Stage Attributes

global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_Cutscene_Intro))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_Cutscene_Intro,0,false);
}