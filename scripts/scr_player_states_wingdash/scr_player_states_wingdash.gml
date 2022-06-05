///@description Wing Dash

function scr_Player_States_WingDash()
{
	if (!global.pause)
	{
		//Variables
		
		invincible = true;
		
		//Movement
		
		hsp = movespeedSlide * dir;
		vsp = 0;
		
		//Animation
		
		image_speed = 1;
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}