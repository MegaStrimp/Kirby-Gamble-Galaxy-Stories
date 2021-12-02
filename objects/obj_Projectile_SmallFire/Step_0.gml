///@description Main

//Event Inherited

event_inherited();

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	image_speed = 1;
	
	//Gravity
	
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
	
	//Stuck Inside Wall
	
	if (place_meeting(x,y,obj_Wall)) instance_destroy();
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
	
	//Collision
	
	if (place_meeting(x,y + vsp,obj_Wall))
	{
		while (!place_meeting(x,y + (sign(vsp) / 10),obj_Wall))
		{ 
			y += (sign(vsp) / 10);
		}
		vsp = 0;
	}
	
	y += vsp;
}
else
{
	image_speed = 0;
}