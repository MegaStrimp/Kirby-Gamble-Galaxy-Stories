///@description Main

if (!global.pause)
{
	//Movement
	
	y += vsp;
	
	//Destroy
	
	if (y > room_height + 48) instance_destroy();
	
	//Animation
	
	image_speed = imageSpeed;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}