/// @description Main

if (!global.pause)
{
	//Particle Index
	
	parIndex += parIndexSpd;
	
	if (parIndex >= (sprite_get_number(sprStar))) parIndex -= (sprite_get_number(sprStar));
	
	//Locked Door Animation
	
	if ((locked) or (unlocked))
	{
		if (lockedIndex < sprite_get_number(sprLocked) - 1)
		{
			lockedIndex += lockedSpd;
		}
		else
		{
			lockedIndex = sprite_get_number(sprLocked) - 1;
			if (unlocked) unlocked = false;
		}
	}
	
	//Particle Timer
	
	if ((doorVisible) and (!place_meeting(x,y,obj_ParentWall)))
	{
		if (particleTimer > 0)
		{
			particleTimer -= 1;
		}
		else if (particleTimer == 0)
		{
			if (!endDoor)
			{
				var par = instance_create_depth(x + (8 * particleDir),y - sprite_get_height(sprite_index),depth - 1,obj_DoorStar);
				par.movespeed = par.movespeedMax * particleDir;
				par.dir = particleDir;
				particleDir *= -1;
				particleTimer = particleTimerMax;
			}
		}
	}
}