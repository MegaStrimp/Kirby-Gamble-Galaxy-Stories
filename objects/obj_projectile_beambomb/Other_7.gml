///@description Animation End

if (sprite_index == sprExplosion) instance_destroy();

if (sprite_index == sprVortexReady)
{
	sprite_index = sprVortex;
	image_index = 0;
}