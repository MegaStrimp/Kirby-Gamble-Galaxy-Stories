///@description 

switch (room)
{
	case rm_GreenGreens1:
	offsetYTarget = 0;
	zoomTarget = 1;
	
	if (delayCounter == -1)
	{
		offsetX = lerp(offsetX,offsetXTarget,.1);
		offsetY = lerp(zoom,offsetYTarget,.1);
		zoom = lerp(zoom,zoomTarget,.1);
	}
	else
	{
		delayCounter -= 1;
	}
	break;
}