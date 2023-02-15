///@description 

switch (room)
{
	case rm_GreenGreens1:
	offsetYTarget = 0;
	zoomTarget = 1.5;
	
	if (obj_Camera.cameraX > 1368)
	{
		offsetYTarget = 0;
		zoomTarget = 1.5;
	}
	else if (obj_Camera.cameraX > 1008)
	{
		offsetYTarget = -48;
		zoomTarget = 1.1;
	}
	
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