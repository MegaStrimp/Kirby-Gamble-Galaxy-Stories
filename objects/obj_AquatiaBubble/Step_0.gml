///@description Main

if (!global.pause)
{
	//Movement
	
	scaleOffset += (.002 * scaleDir);
	if ((abs(scaleOffset) >= .1)) scaleDir *= -1;
	
	x += hsp;
	
	//Destroy
	
	if (x > room_width + 48) instance_destroy();
	
	//Animation
	
	image_speed = imageSpeed;
	image_xscale = scale + scaleOffset;
	image_yscale = scale - scaleOffset;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}