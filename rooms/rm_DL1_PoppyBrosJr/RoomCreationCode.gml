///@description Room Creation Code

#region Variables
global.discordDetailText = "vs. DL1 Poppy Bros Sr.";
global.discordLargeImage = "greengreens_icon";
#endregion

#region Stage Attributes
global.roomCheckpoint = room;
#endregion

#region Music
if (!audio_is_playing(mus_DL1_Boss_Loop))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_DL1_Boss_Loop,0,true);
}
#endregion