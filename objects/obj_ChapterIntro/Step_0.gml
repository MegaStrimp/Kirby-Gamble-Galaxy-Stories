///@description Main

#region Inputs
scr_Player_Inputs(0);
#endregion

#region Play Sound
if (!soundPlayed)
{
	var sound = actsArray[# global.chapterIntro,7];
	if (audio_is_playing(sound)) audio_stop_sound(sound);
	audio_play_sound(sound,0,false);
	soundPlayed = true;
}
#endregion

#region Skip
if ((roomChangeTimer != -1) and (keyStartPressed)) roomChangeTimer = 0;
#endregion

#region Room Change Timer
if (roomChangeTimer > 0)
{
	roomChangeTimer -= 1;
}
else if (roomChangeTimer == 0)
{
	var targetRoom = global.roomNext;
	
	var fade = instance_create_depth(x,y,-999,obj_Fade);
	fade.targetRoom = targetRoom;
	fade.alpha = 1;
	fade.state = 1;
	fade.color = c_white;
	roomChangeTimer = -1;
}
#endregion