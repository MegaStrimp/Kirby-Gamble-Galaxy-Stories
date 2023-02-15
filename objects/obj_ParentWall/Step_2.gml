///@description End Step

if (!global.pause)
{
	#region Follow Owner
	if (instance_exists(owner))
	{
		x = owner.x + ownerXOffset;
		y = owner.y + ownerYOffset;
		
		var xScaleFinal = owner.image_xscale;
		var yScaleFinal = owner.image_yscale;
		if (ownerScale != -1)
		{
			xScaleFinal = ownerScale * sign(owner.image_xscale);
			yScaleFinal = ownerScale * sign(owner.image_yscale);
		}
		
		image_xscale = xScaleFinal;
		image_yscale = yScaleFinal;
	}
	#endregion
}