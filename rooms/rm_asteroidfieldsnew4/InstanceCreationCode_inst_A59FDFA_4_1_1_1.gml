///@description Creation Code

if (audio_is_playing(snd_WarpStar1)) audio_stop_sound(snd_WarpStar1);
audio_play_sound(snd_WarpStar1,0,false);
dir = 1;
attackTimer = -1;
state = playerStates.warpStar;

warpStarIndex = instance_create_depth(x,y,depth + 1,obj_WarpStar);
with (warpStarIndex)
{
	targetRoom = rm_AsteroidFieldsNew5;
	active = true;
	image_angle = 0;
	path_start(pth_WarpStar_AsteroidFields3,6,path_action_stop,true);
}