///@description Parasol Dash

function scr_Player_States_ParasolDash()
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
		
		if (hsp >= decelParasolDash) hsp -= decelParasolDash;
		if (hsp <= -decelParasolDash) hsp += decelParasolDash;
		if ((hsp > -decelParasolDash) and (hsp < decelParasolDash)) hsp = 0;
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.parasolDash) or (hurt)) attackTimer = 0;
		
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