///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Destroy
	
	if (!instance_exists(owner))
	{
		instance_destroy();
	}
	else
	{
		if ((!enemy) and (owner.attackNumber != playerAttacks.sparkNormal)) instance_destroy();
	}
	
	//Sound
	
	if (!audio_is_playing(snd)) snd = audio_play_sound(snd_Spark6,0,false);
	
	//Sprite Change Timer
	
	if (spriteChangeTimer > 0)
	{
		spriteChangeTimer -= 1;
	}
	else if (spriteChangeTimer == 0)
	{
		if (sprIdle == sprIdleBlue)
		{
			sprIdle = sprIdleGreen;
			sprRing = sprRingGreen;
			sprStar = sprStarGreen;
		}
		else
		{
			sprIdle = sprIdleBlue;
			sprRing = sprRingBlue;
			sprStar = sprStarBlue;
		}
		spriteChangeTimer = spriteChangeTimerMax;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var iMax = irandom_range(1,3);
		for (var i = 0; i < iMax; i++)
		{
			var par = instance_create_depth(x + irandom_range(-30,30),y + irandom_range(-30,30),depth - 1,obj_Particle);
			par.sprite_index = choose(spr_Particle_Spark6,spr_Particle_Spark7,spr_Particle_Spark8);
			par.image_index = irandom_range(0,par.image_number - 1);
			par.imageSpeed = 0;
			par.destroyTimer = 1;
		}
		particleTimer = particleTimerMax + irandom_range(-4,4);
	}
	
	//Animation
	
	starAngle = random_range(0,359);
	image_speed = 1;
	image_alpha = random_range(.6,.85);
}
else
{
	image_speed = 0;
}