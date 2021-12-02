///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Movement
	
	if (abs(fric) < abs(spd))
	{
		fric += fricSpd;
	}
	else
	{
		fric = spd;
	}
	speed = spd - fric;
	
	//Animation
	
	image_speed = 1;
}
else
{
	speed = 0;
	image_speed = 0;
}