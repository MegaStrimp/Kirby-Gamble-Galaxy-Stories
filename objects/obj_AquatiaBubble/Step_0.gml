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
	image_xscale = 1 + scaleOffset;
	image_yscale = 1 - scaleOffset;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}