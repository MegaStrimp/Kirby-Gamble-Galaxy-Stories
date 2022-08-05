///@description Main

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Animation
	
	image_speed = 1;
	if (isTop) image_index = topWallOwner.image_index;
}
else
{
	image_speed = 0;
}