///@function scr_AI_BunnyHop()
///@description Gives the object an horizontal straight movement.

function scr_AI_BunnyHop()
{
	//Bunny Hop
	
	if (place_meeting(x,y + 1,collisionY))
	{
		vsp = -jumpspeed;
	}
}