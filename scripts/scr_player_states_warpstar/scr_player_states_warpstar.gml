///@description Warp Star

function scr_Player_States_WarpStar()
{
	if (!global.pause)
	{
		//Variables
		
		invincible = true;
		
		//Animation
		
		image_speed = 1;
		
		switch (player)
		{
			case 0:
			sprite_index = sprWarpStar1;
			break;
			
			case 1:
			sprite_index = sprWarpStar2;
			break;
			
			case 2:
			sprite_index = sprWarpStar3;
			break;
			
			case 3:
			sprite_index = sprWarpStar4;
			break;
		}
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}