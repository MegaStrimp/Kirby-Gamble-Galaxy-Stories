///@description Main

if (!global.pause)
{
	//Movement
	
	hsp = movespeed;
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
	hsp = 0;
	vsp = 0;
}