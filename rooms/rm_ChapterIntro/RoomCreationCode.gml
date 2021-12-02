///@description Room Creation Code

//Variables

global.discordDetailText = "Startup";
global.discordLargeImage = "ggs_icon";

//Music

audio_stop_all();

switch (global.chapterIntro)
{
	case "1_1":
	global.musicPlaying = audio_play_sound(mus_ChapterIntro1_1,0,false);
	break;
}