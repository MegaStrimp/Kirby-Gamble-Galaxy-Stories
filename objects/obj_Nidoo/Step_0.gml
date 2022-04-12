///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprDoor = spr_Door_Normal;
		sprReady = spr_Nidoo_Normal_Ready;
		sprShake = spr_Nidoo_Normal_Shake;
		sprRelease = spr_Nidoo_Normal_Release;
		sprHurt = "self";
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Hurt Player
	
	if ((sprite_index == sprRelease) and (image_index >= 5)) scr_Enemy_HurtsPlayer(dmg);
	
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
		
		if (!place_meeting(x,y,obj_Wall))
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
	shakeX = 0;
	shakeY = 0;
}