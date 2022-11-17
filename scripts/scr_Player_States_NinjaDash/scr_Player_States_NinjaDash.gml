///@description Ninja Dash

function scr_Player_States_NinjaDash()
{
	if (!global.pause)
	{
		//Gravity
		
		if (vsp < gravLimitNormal)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimitNormal;
		}
		
		//Slide
		
		if (hsp >= decelSlide) hsp -= decelSlide;
		if (hsp <= -decelSlide) hsp += decelSlide;
		if ((hsp > -decelSlide) and (hsp < decelSlide)) hsp = 0;
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.ninjaDash) or (hurt)) attackTimer = 0;
		
		//Animation
		
		image_speed = 1;
		
		scr_Player_Collision(playerMechs.none);
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}