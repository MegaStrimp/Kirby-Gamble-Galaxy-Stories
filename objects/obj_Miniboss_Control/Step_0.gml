///@description Main

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Activate
	
	if ((!active) and ((distance_to_object(obj_Player)) <= spawnRange))
	{
		if (audio_is_playing(snd_MinibossSpawn1)) audio_stop_sound(snd_MinibossSpawn1);
		audio_play_sound(snd_MinibossSpawn1,0,false);
		active = true;
		global.stageMusicIsPlaying = false;
		scr_PlayMusic(false,false,mus_MiniBoss,0,true);
		with (obj_Camera)
		{
			objectFollowing = other.id;
		}
		particleTimer = particleTimerMax;
		spawnTimer = spawnTimerMax;
	}
	
	#region Particle Timer
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x + spawnX + lengthdir_x(36,angle),y + spawnY + lengthdir_y(36,angle),depth,obj_Particle);
		par.sprite_index = spr_Particle_ShrinkingStar1;
		par.hsp = lengthdir_x(4,angle + 180);
		par.vsp = lengthdir_y(4,angle + 180);
		par.destroyAfterAnimation = true;
		angle += 15;
		if (angle >= 360) angle -= 360;
		particleTimer = particleTimerMax;
	}
	#endregion
	
	#region Spawn Timer
	if (spawnTimer > 0)
	{
		spawnTimer -= 1;
	}
	else if (spawnTimer == 0)
	{
		if (audio_is_playing(snd_MinibossSpawn2)) audio_stop_sound(snd_MinibossSpawn2);
		audio_play_sound(snd_MinibossSpawn2,0,false);
		instance_create_depth(x + spawnX,y + spawnY,depth,spawnBoss);
		particleTimer = -1;
		spawnTimer = -1;
	}
	#endregion
	
	//Destroy
	
	hasEnemy = false;
	with (obj_Enemy) if ((isMiniBoss) or (other.spawnTimer != -1)) other.hasEnemy = true;
	
	if ((spawnTimer == -1) and (active) and (!hasEnemy))
	{
		if (audio_is_playing(mus_MiniBoss)) audio_stop_sound(mus_MiniBoss);
		global.stageMusicIsPlaying = true;
		if (!instance_exists(obj_Miniboss_Death)) instance_destroy();
	}
}