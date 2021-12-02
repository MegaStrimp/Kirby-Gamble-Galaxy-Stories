///@description Animation End

//Release

if (sprite_index == sprRelease)
{
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