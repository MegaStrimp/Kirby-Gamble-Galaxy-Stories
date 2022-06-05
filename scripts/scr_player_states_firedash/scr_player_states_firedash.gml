///@description Fire Dash

function scr_Player_States_FireDash()
{
	if (!global.pause)
	{
		//Gravity
		
		if (sign(vsp) < gravLimitFireDash)
		{
			vsp += gravFireDash * fireDashDir;
		}
		else
		{
			vsp = gravLimitFireDash * fireDashDir;
		}
		
		//Movement
		
		hsp = fireDashHsp;
		
		if (fireDashHsp >= decelSlide) fireDashHsp -= decelSlide;
		if (fireDashHsp <= -decelSlide) fireDashHsp += decelSlide;
		if ((fireDashHsp > -decelSlide) and (fireDashHsp < decelSlide)) fireDashHsp = 0;
		
		//Cancel
		
		if ((fireMagicCharcoalUpgrade) and (keyAttackPressed)) attackTimer = 0;
		
		//Animation
		
		image_speed = 1;
		
		if (fireReleaseTimer != -1)
		{
			sprite_index = sprFireAttack2;
		}
		
		//Collision
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
	}
}
