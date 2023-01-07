///@description Animation End

//Release

if (sprite_index == sprRelease)
{
	for (var i = 0; i < 6; i++)
	{
		var par = instance_create_depth(x - 12 + (i * 4),y - 8,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_BlackSmoke;
		par.direction = 150 - (i * 24);
		switch (i)
		{
			case 0:
			par.spdBuiltIn = 1.5;
			break;
			
			case 1:
			par.spdBuiltIn = 1;
			break;
			
			case 2:
			par.spdBuiltIn = .5;
			break;
			
			case 3:
			par.spdBuiltIn = .5;
			break;
			
			case 4:
			par.spdBuiltIn = 1;
			break;
			
			case 5:
			par.spdBuiltIn = 1.5;
			break;
		}
		par.scale = par.spdBuiltIn * 1.5;
		par.alphaSpd = -.05;
	}
	hasDeathKnockback = false;
	hasDeathParticles = false;
	death = true;
}

//Shake

if (sprite_index == sprShake)
{
	shakeCount += 1;
	if (shakeCount >= shakeCountMax)
	{
		shakeCount = 0;
		sprite_index = sprRelease;
		image_index = 0;
	}
}

//Ready

if (sprite_index == sprReady)
{
	sprite_index = sprShake;
	image_index = 0;
}