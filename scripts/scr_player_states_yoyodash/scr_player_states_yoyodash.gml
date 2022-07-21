///@description Yoyo Dash

function scr_Player_States_YoyoDash()
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
		
		if (hsp >= decelYoyoDash) hsp -= decelYoyoDash;
		if (hsp <= -decelYoyoDash) hsp += decelYoyoDash;
		if ((hsp > -decelYoyoDash) and (hsp < decelYoyoDash)) hsp = 0;
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.yoyoDash) or (hurt)) attackTimer = 0;
		
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