/// @description Main

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
		sprClosed = spr_KeyGate_Normal_Closed;
		sprOpen = spr_KeyGate_Normal_Open;
		break;
	}
	setupTimer = -1;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!open)
	{
		openCondition = false;
		with (obj_Key)
		{
			if (!other.openCondition)
			{
				if (distance_to_object(other) < 3)
				{
					var particle = instance_create_depth(x,y,depth,obj_Particle);
					particle.sprite_index = spr_Particle_Shine2;
					particle.destroyAfterAnimation = true;
					other.openCondition = true;
					instance_destroy();
				}
			}
		}
		
		with (obj_Player)
		{
			if (!other.openCondition)
			{
				if ((distance_to_object(other) < 3) and (carriedItem == carriedItems.key))
				{
					var particle = instance_create_depth(carriedItemIndex.x,carriedItemIndex.y,carriedItemIndex.depth,obj_Particle);
					particle.sprite_index = spr_Particle_Shine2;
					particle.destroyAfterAnimation = true;
					instance_destroy(carriedItemIndex);
					carriedItem = carriedItems.none;
					carriedItemIndex = -1;
					carriedItemState = "none";
					canGrabTimer = 15;
					other.openCondition = true;
				}
			}
		}
		
		if (openCondition)
		{
			if (audio_is_playing(snd_KeyDoorOpen1)) audio_stop_sound(snd_KeyDoorOpen1);
			audio_play_sound(snd_KeyDoorOpen1,0,false);
			open = true;
			sprite_index = sprOpen;
			image_index = 0;
		}
	}
	else
	{
		if ((image_index > 3) and (mask_index != -2))
		{
			if (audio_is_playing(snd_KeyDoorOpen2)) audio_stop_sound(snd_KeyDoorOpen2);
			audio_play_sound(snd_KeyDoorOpen2,0,false);
			mask_index = -2;
		}
	}
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}