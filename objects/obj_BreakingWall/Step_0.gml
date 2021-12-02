///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BreakingWall_Normal_Idle;
		topWallSprite = spr_BreakingWall_Normal_Top;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Detect Player

	if (state == 0)
	{
		image_speed = 0;
		if (place_meeting(x,y - 1, obj_Player))
		{
			state = 1;
		}
	}

	//Destroy

	if (state == 1)
	{
		image_speed = 1;
		if (timer > 0)
		{
			timer -= 1;
		}
		else
		{
			if (audio_is_playing(snd_BreakingWall)) audio_stop_sound(snd_BreakingWall);
			audio_play_sound(snd_BreakingWall,0,false);
			for (var i = 0; i < 2; i++)
			{
				var particle = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth,obj_Particle);
				particle.sprite_index = spr_Particle_Aura2;
				if (i == 0) particle.sprite_index = spr_Particle_Explosion1;
				particle.imageSpeed = 1;
				particle.destroyAfterAnimation = true;
			}
			for (var i = 0; i < 3; i++)
			{
				var particle = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth,obj_Particle);
				particle.sprite_index = spr_Particle_ShrinkingStar1;
				particle.imageSpeed = 1;
				particle.destroyAfterAnimation = true;
				particle.spdBuiltIn = 6;
				particle.fricSpd = .6;
				switch (i)
				{
					case 0:
					particle.direction = 90;
					break;
					
					case 1:
					particle.direction = 215;
					break;
					
					case 2:
					particle.direction = 325;
					break;
				}
			}
			if (isTop)
			{
				if (instance_exists(topWallOwner))
				{
					instance_destroy(topWallOwner);
				}
			}
			instance_destroy();
		}
	}
}
else
{
	image_speed = 0;
}