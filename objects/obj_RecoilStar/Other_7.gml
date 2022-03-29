///@description Animation End

//Destroy

if (sprite_index == sprDestroy)
{
	instance_destroy();
}

//Idle

if ((sprite_index == sprIdle) and (destroyTimer == -1))
{
	sprite_index = sprDestroy;
	image_index = 0;
}

//Spawn

if (sprite_index == sprSpawn)
{
	sprite_index = sprIdle;
	image_index = 0;
}