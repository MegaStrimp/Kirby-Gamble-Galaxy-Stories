///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Key_Normal;
		break;
	}
}

if (!global.pause)
{
	//Shake
	
	if (place_meeting(x,y,obj_InhaleMask))
	{
		shake = 1;
	}
	else
	{
		shake = 0;
	}
	
	if (active)
	{
		//Gravity
		
		if (hasGravity)
		{
			if (vsp < gravLimit)
			{
				vsp += grav;
			}
			else
			{
				vsp = gravLimit;
			}
		}
		
		//Slopes
		
		if (hasXCollision)
		{
			if ((!place_meeting(x + hsp,y,collisionX)) and (place_meeting(x,y + 1,collisionX)))
			{
			    yplus = 0;
			    while ((!place_meeting(x + hsp,y + yplus,collisionX) and yplus <= abs(hsp)))
				{
					yplus += 1;
				}
			    y += yplus;
			}
		}
		
		//Horizontal Collision
		
		if (hasXCollision)
		{
			if place_meeting(x + hsp,y,collisionX)
			{
			    yplus = 0;
			    while ((place_meeting(x + hsp,y - yplus,collisionX)) and (yplus <= abs(1 * hsp)))
				{
					yplus += 1;
				}
			    if place_meeting(x + hsp,y - yplus,collisionX)
			    {
			        while (!place_meeting(x + (sign(hsp) / 10),y,collisionX))
					{
						x += (sign(hsp) / 10);
					}
			        hsp = 0;
			    }
			    else
			    {
			        y -= yplus
			    }
			}
		}
		
		x += hsp;
		
		//Vertical Collision
		
		if (hasYCollision)
		{
			if (place_meeting(x,y + vsp,collisionY))
			{
			    while (!place_meeting(x,y + (sign(vsp) / 10),collisionY))
			    { 
			        y += (sign(vsp) / 10);
			    }
				
			    if (hsp != 0)
				{
					hsp /= 1.5;
					if (hsp <= .1) hsp = 0;
				}
				if (vsp != 0)
				{
					vsp *= -1;
					vsp /= 1.5;
					if (vsp <= .1) vsp = 0;
				}
			}
		}
		
		y += vsp;
	}
	
	//Animation
	
	sprite_index = sprIdle;
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}