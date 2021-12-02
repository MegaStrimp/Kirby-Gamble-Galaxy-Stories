///@function scr_AI_FollowsPlayer(canChangeXDirection,canChangeYDirection)
///@description Follows the player.
///@param {real} dirReference Set it to true/false depending on if you want sprite x direction to be based around horizontal speed.
///@param {real} dirReference Set it to true/false depending on if you want sprite y direction to be based around vertical speed.

function scr_AI_FollowsPlayer(argument0, argument1)
{
	//Movement
	
	if (obj_Player.x < x - hsp) or (obj_Player.x > x + hsp)
	{
		if (obj_Player.x + hsp > x)
		{
		    hsp = movespeed;
		}
		else if (obj_Player.x + hsp < x)
		{
		    hsp = -movespeed;
		}
	}
	else
	{
		hsp = 0;
	}
	
	if (obj_Player.y < y - vsp) or (obj_Player.y > y + vsp)
	{
		if (obj_Player.y + vsp > y)
		{
		    vsp = jumpspeed;
		}
		else if (obj_Player.y + vsp < y)
		{
		    vsp = -jumpspeed;
		}
	}
	else
	{
		vsp = 0;
	}
	
	//Sprite Direction
	
	if (argument0)
	{
		if (sign(hsp) != 0) dirX = sign(hsp);
	}
	if (argument1)
	{
		if (sign(vsp) != 0) dirY = sign(vsp);
	}
}