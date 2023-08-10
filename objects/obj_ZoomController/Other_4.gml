///@description Room Start

#region Reset Values
offsetXTarget = 0;
offsetX = 0;
offsetYTarget = 0;
offsetY = 0;
zoom = 1;
zoomTarget = 1;
delayCounter = -1;
#endregion

switch (room)
{
	case rm_GreenGreens1:
	offsetYTarget = -48;
	zoom = 1.5;
	zoomTarget = 1;
	delayCounter = 45;
	break;
}