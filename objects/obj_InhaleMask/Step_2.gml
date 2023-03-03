///@description Follow Player

if (instance_exists(owner))
{
	image_xscale = owner.image_xscale;
	x = owner.x - (5 * image_xscale);
	y = owner.y - 4;
}