///@description Main

//Event Inherited

event_inherited();

//Hurt Player & Hit Ground

if ((sprite_index == sprRelease) and (image_index >= 9)) scr_Enemy_HurtsPlayer(dmg);

if (sprite_index == sprRelease)
{
	if (image_index >= 9) scr_Enemy_HurtsPlayer(dmg);
	
	if ((image_index >= 10) and (!crashSoundPlayed))
	{
		crashSoundPlayed = true;
		if (audio_is_playing(snd_NidooHit)) audio_stop_sound(snd_NidooHit);
		audio_play_sound(snd_NidooHit,0,false);
	}
}

if (!childPause)
{
	//Activate
	
	if (!active)
	{
		with (obj_Player)
		{
			if ((position_meeting(x,y,other)) and (keyUpPressed))
			{
				if (audio_is_playing(snd_NidooSpawn)) audio_stop_sound(snd_NidooSpawn);
				audio_play_sound(snd_NidooSpawn,0,false);
				other.active = true;
				other.sprite_index = other.sprReady;
				other.image_index = 0;
			}
		}
	}
	
	if (!active)
	{
		//Particle Index
		
		parIndex += parIndexSpd;
		
		if (parIndex >= (sprite_get_number(sprStar))) parIndex -= (sprite_get_number(sprStar));
		
		//Particle Timer
		
		if (!place_meeting(x,y,obj_ParentWall))
		{
			if (particleTimer > 0)
			{
				particleTimer -= 1;
			}
			else if (particleTimer == 0)
			{
				var par = instance_create_depth(x + (8 * particleDir),y - sprite_get_height(sprite_index),depth - 1,obj_DoorStar);
				par.movespeed = par.movespeedMax * particleDir;
				par.dir = particleDir;
				particleDir *= -1;
				particleTimer = particleTimerMax;
			}
		}
	}
	
	//Animation
	
	image_speed = 1;
	if (!active) sprite_index = sprDoor;
}
else
{
	image_speed = 0;
}