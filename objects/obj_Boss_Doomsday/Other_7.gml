///@description Animation End

if (sprite_index == sprSpawn1)
{
	sprite_index = sprSpawn2;
	image_index = 0;
}
else if (sprite_index == sprSpawn2)
{
	if ((spawnState == 0) and (spawnStateTimer == -1)) spawnStateTimer = 45;
	sprite_index = sprSpawn3;
	image_index = 0;
}
else if (sprite_index == sprSpawn3)
{
	image_index = 0;
}