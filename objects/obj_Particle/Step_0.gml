///@description Main

if ((!pausable) and (!global.pause)) pausable = true;

//Follow Object

if (((pausable) and (!global.pause)) or (!pausable))
{
	if ((followObject) and (followedObject != id))
	{
		if (instance_exists(followedObject))
		{
			if (spd < spdMax)
			{
				spd += .2;
			}
			else
			{
				spd = spdMax;
			}
			
			if (followedObject.x < x - spd) or (followedObject.x > x + spd)
		    {
			    if (followedObject.x + spd >= x)
			    {
			        hsp = spd;
			    }
			    else if (followedObject.x + spd < x)
			    {
			        hsp = -spd;
			    }
		    }
		    else
		    {
		        hsp = 0;
		    }
			
			if (followedObject.y + followedObjectY < y - spd) or (followedObject.y + followedObjectY > y + spd)
		    {
		        if (followedObject.y + followedObjectY + spd > y)
		        {
		            vsp = spd;
		        }
		        else if (followedObject.y + followedObjectY + spd < y)
		        {
		            vsp = -spd;
		        }
		    }
		    else
		    {
		        vsp = 0;
		    }
			
			x += (hsp + followedObject.hsp);
			y += (vsp + followedObject.vsp);
	
			if (inhaleParticle)
			{
				if ((place_meeting(x + (followedObjectX * dir),y - followedObjectY,followedObject)) or (followedObject.state != playerStates.inhale))
				{
				    instance_destroy();
				}
			}
			else
			{
				if (destroyAfterCollidingFollow)
				{
					if (place_meeting(x,y,followedObject))
					{
					    instance_destroy();
					}
				}
			}
		}
		else
		{
			instance_destroy();
		}
	}
	
	//Turn Around Object
	
	if (turnAroundObject)
	{
		angle += turnSpd;
		if (angle >= 360) angle -= 360;
		if (angle < 0) angle += 360;
		if (instance_exists(followedObject))
		{
			x = lengthdir_x(orbit, angle) + followedObject.x;
			y = lengthdir_y(orbit, angle) + followedObject.y;
		}
		else
		{
			x = lengthdir_x(orbit, angle) + xstart;
			y = lengthdir_y(orbit, angle) + ystart;
		}
	}
	
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
	
	//Movement
	
	if (abs(fric) < abs(spdBuiltIn))
	{
		fric += fricSpd;
	}
	else
	{
		fric = spdBuiltIn;
	}
	speed = spdBuiltIn - fric;
	
	if (hasPiTurn)
	{
		xx += lengthdir_x(piTurnSpd,direction);
		x = xx + time * 1 * cos(angle);
		y = ystart + power(time, 1/2) * 10 * sin(angle);
		angle += pi/8;
		++time;
	}
	//Invis Timer
	
	if (invisTimer > 0)
	{
		invisTimer -= 1;
	}
	else if (invisTimer == 0)
	{
		if (visible)
		{
			visible = false;
		}
		else
		{
			visible = true;
		}
		invisTimer = invisTimerMax;
	}
	
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
	
	//Trail Timer
	
	if (trailTimer > 0)
	{
		trailTimer -= 1;
	}
	else if (trailTimer == 0)
	{
		var par = instance_create_depth(x,y,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_Sparkle4;
		par.destroyAfterAnimation = true;
		trailTimer = trailTimerMax;
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = imageSpeed;
}
else
{
	speed = 0;
	image_speed = 0;
}

//Scale

image_xscale = scale * dir;
image_yscale = scale * dirY;