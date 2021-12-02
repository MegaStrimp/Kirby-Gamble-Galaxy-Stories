///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	spd = random_range(-spdMax,spdMax);
	setupTimer = -1;
}

if (!global.pause)
{
	//Movement
	
	speed = spd;
	
	//Horizontal Collision
	
    if (place_meeting(x + 24,y,obj_Wall))
    {
        hsp = -spdW;
        dir = 1;
    }
    else if (place_meeting(x - 24,y,obj_Wall))
    {
        hsp = spdW;
        dir = -1;
    }
    else
    {
        vsp = 0;
        if (direction > 90 and direction < 270)
        {
            dir = -1;
        }
        else
        {
            dir = 1;
        }
    }
	x += hsp;
	
	//Vertical Collision
	
    if (place_meeting(x,y + 24,obj_Wall))
    {
        vsp = -spdW;
    }
    else if (place_meeting(x,y - 24,obj_Wall))
    {
        vsp = spdW;
    }
    else
    {
        vsp = 0;
    }
    
    y += vsp;
	
	//Direction Timer
	
	if (directionTimer > 0)
	{
		directionTimer -= 1;
	}
	else if (directionTimer == 0)
	{
		direction = irandom_range(1,360);
		friction = random_range(-.1,.1);
		spd = random_range(-spdMax,spdMax);
		directionTimer = directionTimerMax + irandom_range(-10,20);
	}
	
	//Animation
	
	image_speed = 1 + (spd - .5);
	
	image_xscale = scale * dir;
	image_yscale = scale;
}
else
{
	image_speed = 0;
	speed = 0;
}