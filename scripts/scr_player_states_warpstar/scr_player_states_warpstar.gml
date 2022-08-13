///@description Wing Dash

function scr_Player_States_WarpStar()
{
	if (!global.pause)
	{
		//Variables
		
		invincible = true;
		
		//Animation
		
		image_speed = 1;
		
		if (player == 0)
		{
			sprite_index = sprWarpStar1;
		}
		else
		{
			sprite_index = sprWarpStar2;
		}
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}