///@description Main

if ((!pausable) and (!global.pause)) pausable = true;

//Scale

image_xscale = scale * dir;
image_yscale = scale * dirY;

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
	
	//Angle
	
	image_angle += angleSpd;
	
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
	
	//Collision
	
	if (collisionX != -1)
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
				if (stopRotationAfterCollision) angleSpd = 0;
		        hsp = 0;
		    }
		    else
		    {
		        y -= yplus
		    }
		}
	}
	x += hsp;
	
	if (collisionY != -1)
	{
		if (place_meeting(x,y + vsp,collisionY))
		{
			while (!place_meeting(x,y + (sign(vsp) / 10),collisionY))
			{ 
			    y += (sign(vsp) / 10);
			}
			if (stopRotationAfterCollision) angleSpd = 0;
			vsp = 0;
		}
	}
	y += vsp;
	
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
	
	//Afterimage
	
	if (hasAfterimage)
	{
		var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
		afterimage.owner = id;
		afterimage.sprite_index = sprite_index;
		afterimage.image_index = image_index;
		afterimage.image_xscale = image_xscale;
		afterimage.image_yscale = image_yscale;
		afterimage.image_alpha = .5;
		afterimage.paletteIndex = paletteSpriteIndex;
	}
	
	//Animation
	
	image_speed = imageSpeed;
}
else
{
	speed = 0;
	image_speed = 0;
}