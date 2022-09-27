///@description End Step

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.x;
		y = owner.y - 4 + (14 * dirY)
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
	}
}