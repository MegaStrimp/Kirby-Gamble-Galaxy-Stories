///@description Main

if (!global.pause)
{
	//Activate
	
	if ((!active) and ((distance_to_object(obj_Player)) <= 200))
	{
		active = true;
		global.stageMusicIsPlaying = false;
		audio_play_sound(mus_MiniBoss,0,true);
		with (obj_Camera)
		{
			objectFollowing = other.id;
		}
		instance_create_depth(x + spawnX,y + spawnY,depth,spawnBoss);
	}
	
	//Destroy
	
	hasEnemy = false;
	with (obj_Enemy) if (isMiniBoss) other.hasEnemy = true;
	
	if ((active) and (!hasEnemy))
	{
		if (audio_is_playing(mus_MiniBoss)) audio_stop_sound(mus_MiniBoss);
		global.stageMusicIsPlaying = true;
		if (!instance_exists(obj_Miniboss_Death)) instance_destroy();
	}
}