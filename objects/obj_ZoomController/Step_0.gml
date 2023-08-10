///@description Main

#region Rooms
switch (room)
{
	case rm_GreenGreens1:
	if ((!global.pause) and (!global.cutscene))
	{
		offsetYTarget = 0;
		zoomTarget = 1;
	}
	
	if (delayCounter == -1)
	{
		offsetX = lerp(offsetX,offsetXTarget,.1);
		offsetY = lerp(offsetY,offsetYTarget,.1);
		zoom = lerp(zoom,zoomTarget,.1);
	}
	else
	{
		delayCounter -= 1;
	}
	break;
	
	case rm_GreenGreens4:
	if ((!global.pause) and (!global.cutscene))
	{
		offsetYTarget = 0;
		zoomTarget = 1;
	}
	
	with (obj_Miniboss_Control)
	{
		if (active)
		{
			other.zoomTarget = 1.2;
			other.offsetYTarget = 24;
		}
	}
	
	offsetX = lerp(offsetX,offsetXTarget,.1);
	offsetY = lerp(offsetY,offsetYTarget,.1);
	zoom = lerp(zoom,zoomTarget,.1);
	break;
}
#endregion