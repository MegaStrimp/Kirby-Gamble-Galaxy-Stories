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
		sprIdle = spr_BombSolidBlock_Normal_Idle;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Explode Timer
	
	if (explodeTimer > 0)
	{
		explodeTimer -= 1;
	}
	else if (explodeTimer == 0)
	{
		with (obj_Wall)
		{
			if ((!isTop) and (canExplode))
			{
				if (place_meeting(x,y,other))
				{
					explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x + 24,y,other))
				{
					explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x - 24,y,other))
				{
					explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x,y + 24,other))
				{
					explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x,y - 24,other))
				{
					explodeTimer = explodeTimerMax;
				}
			}
		}
		
		with (obj_BombSolidBlock_Invis)
		{
			if (place_meeting(x,y,other))
			{
				explodeTimer = explodeTimerMax;
			}
			if (place_meeting(x + 24,y,other))
			{
				explodeTimer = explodeTimerMax;
			}
			if (place_meeting(x - 24,y,other))
			{
				explodeTimer = explodeTimerMax;
			}
			if (place_meeting(x,y + 24,other))
			{
				explodeTimer = explodeTimerMax;
			}
			if (place_meeting(x,y - 24,other))
			{
				explodeTimer = explodeTimerMax;
			}
		}
		
		with (obj_BombSolidBlock_Create)
		{
			if (place_meeting(x,y,other))
			{
				explodeTimer = explodeTimerMax;
			}
			if (place_meeting(x + 24,y,other))
			{
				explodeTimer = explodeTimerMax;
			}
			if (place_meeting(x - 24,y,other))
			{
				explodeTimer = explodeTimerMax;
			}
			if (place_meeting(x,y + 24,other))
			{
				explodeTimer = explodeTimerMax;
			}
			if (place_meeting(x,y - 24,other))
			{
				explodeTimer = explodeTimerMax;
			}
		}
		
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
		var item = instance_create_layer(x,y,"Collision",obj_Wall);
		item.visible = true;
		item.sprite_index = spr_BombSolidBlock_Normal_Idle;
		item.topWallSprite = spr_BombSolidBlock_Normal_Top;
		instance_destroy();
		explodeTimer = -1;
	}
	//Animation
	
	sprite_index = sprIdle;
	image_alpha = .5;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}