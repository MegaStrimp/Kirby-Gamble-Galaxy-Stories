///@description Main

if (!global.pause)
{
	//Setup Timer
	
	if (setupTimer > 0)
	{
		setupTimer -= 1;
	}
	else if (setupTimer == 0)
	{
		switch (character)
		{
			//Yellow
			
			case 0:
			sprite_index = spr_PointStar_Yellow_Idle;
			pointStarPoints = 1;
			sfx = snd_PointStar_Low;
			break;
			
			//Green
			
			case 1:
			sprite_index = spr_PointStar_Green_Idle;
			pointStarPoints = 5;
			sfx = snd_PointStar_Medium;
			break;
			
			//Red
			
			case 2:
			sprite_index = spr_PointStar_Red_Idle;
			pointStarPoints = 10;
			sfx = snd_PointStar_Medium;
			break;
			
			//Blue
			
			case 3:
			sprite_index = spr_PointStar_Blue_Idle;
			pointStarPoints = 25;
			sfx = snd_PointStar_High;
			break;
		}
	}
	
	//Gravity
	
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if (audio_is_playing(sfx)) audio_stop_sound(sfx);
		audio_play_sound(sfx,0,false);
		var particle = instance_create_depth(x,y,depth,obj_Particle);
		particle.sprite_index = spr_Particle_Sparkle1;
		particle.destroyAfterAnimation = true;
		global.pointStars += pointStarPoints;
		instance_destroy();
		destroyTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
	shake = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}