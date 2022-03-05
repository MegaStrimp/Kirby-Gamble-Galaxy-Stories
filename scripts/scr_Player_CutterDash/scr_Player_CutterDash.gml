///@description Cutter Dash

function scr_Player_CutterDash()
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
		
		if ((attackNumber != playerAttacks.cutterDash) or (hurt)) attackTimer = 0;
		
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