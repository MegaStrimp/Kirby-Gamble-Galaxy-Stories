///@description Sword Dash

function scr_Player_States_SwordDash()
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
		
		if ((attackNumber != playerAttacks.swordDash) or (hurt)) attackTimer = 0;
		
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