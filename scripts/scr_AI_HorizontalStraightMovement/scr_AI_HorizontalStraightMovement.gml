///@function scr_AI_HorizontalStraightMovement(dirReference,canChangeDirection)
///@description Gives the object an horizontal straight movement.
///@param {real} dirReference Set it to true/false depending on if you want sprite direction to be based around horizontal speed.
///@param {real} canChangeDirection Set it to true/false depending on if you want object to change direction when colliding with a wall.

function scr_AI_HorizontalStraightMovement(argument0, argument1)
{
	//Variables
	
	//hasYKnockback = false;
	
	//Movement
	
	if (!invincible) hspDummy = (movespeed * walkDirX);
	
	hsp = hspDummy;
	
	//Change Direction
	
	if (argument1)
	{
		if (place_meeting(x + sign(hsp),y,collisionX))
		{
			var forwardWall = instance_place(x + sign(hsp),y,collisionX);
			if (forwardWall.slope == false)
			{
				walkDirX *= -1;
			}
		}
	}
	
	//Sprite Direction
	
	if (argument0)
	{
		if (sign(hsp) != 0) dirX = sign(hsp);
	}
}