///@description End Step

if (!isPaused)
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.eyeX;
		y = owner.eyeY;
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
	}
}