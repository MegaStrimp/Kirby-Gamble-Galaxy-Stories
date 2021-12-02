///@function scr_AI_VerticalStraightMovement(dirReference,canChangeDirection)
///@description Gives the object an vertical straight movement.
///@param {real} dirReference Set it to true/false depending on if you want sprite direction to be based around horizontal speed.
///@param {real} canChangeDirection Set it to true/false depending on if you want object to change direction when colliding with a wall.

function scr_AI_VerticalStraightMovement(argument0, argument1)
{
	//Variables
	
	//hasYKnockback = false;
	
	//Movement
	
	vsp = (jumpspeed * walkDirY);
	
	//Change Direction
	
	if (argument1)
	{
		if (place_meeting(x,y + vspFinal,collisionY))
		{
			var forwardWall = instance_place(x,y + vspFinal,collisionY);
			if (forwardWall.slope == false)
			{
				walkDirY *= -1;
			}
		}
	}
	
	//Sprite Direction
	
	if (argument0)
	{
		if (sign(vsp) != 0) dirY = sign(vsp);
	}
}