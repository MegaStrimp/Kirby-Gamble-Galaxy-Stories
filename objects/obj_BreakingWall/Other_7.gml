///@description Animation End

//Destroy

if (!isTop)
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
}
instance_destroy();