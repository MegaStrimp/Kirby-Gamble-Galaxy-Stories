///@description Creation Code

if (audio_is_playing(snd_WarpStar2)) audio_stop_sound(snd_WarpStar2);
audio_play_sound(snd_WarpStar2,0,false);
dir = 1;
attackTimer = -1;
state = playerStates.warpStar;

warpStarIndex = instance_create_depth(x,y,depth + 1,obj_WarpStar);
with (warpStarIndex)
{
	state = warpStarStates.crash;
	active = true;
	image_angle = 0;
	path_start(pth_WarpStar_AsteroidFields4,6,path_action_stop,true);
}