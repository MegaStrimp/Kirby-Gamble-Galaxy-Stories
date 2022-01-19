///@description Cutter Dash

function scr_Player_SwordDash()
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
		
		if (hsp >= decelSwordDash) hsp -= decelSwordDash;
		if (hsp <= -decelSwordDash) hsp += decelSwordDash;
		if ((hsp > -decelSwordDash) and (hsp < decelSwordDash)) hsp = 0;
		
		//Revert Back
		
		if ((attackNumber != "swordDash") or (hurt)) attackTimer = 0;
		
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