///@description Jet Dash

function scr_Player_States_JetDash()
{
	if (!global.pause)
	{
		//if (fireDashHsp >= decelSlide) fireDashHsp -= decelSlide;
		//if (fireDashHsp <= -decelSlide) fireDashHsp += decelSlide;
		//if ((fireDashHsp > -decelSlide) and (fireDashHsp < decelSlide)) fireDashHsp = 0;
		if(attackTimer <= 3 || attackTimer <= 7 && jetDashAir <= 0){
			hsp = 0;
			if(jetDashAir >= 0){
				if (vsp < gravLimitNormal)
				{
					vsp += grav;
				}
				else
				{
					vsp = gravLimitNormal;
				}
			}else{
				vsp = 0;
			}
		}else{
			//Gravity
		
			if (sign(vsp) < gravLimitFireDash)
			{
				vsp += gravJetDash * fireDashDir;
			}
			else
			{
				if(fireDashDir > 0){
					vsp = (gravLimitJetDash*0.25) * fireDashDir;
				}else{
					vsp = gravLimitJetDash * fireDashDir;
				}
			}
		
			//Movement
		
			hsp = fireDashHsp;
		}
		
		//Cancel
		
		//if ((fireMagicCharcoalUpgrade) and (keyAttackPressed)) attackTimer = 0;
		
		//Animation
		
		image_speed = 1;
		
		if (fireReleaseTimer != -1)
		{
			sprite_index = sprFireAttack2;
		}
		
		//Collision
		
		scr_Player_Collision(playerMechs.none);
	}
	else
	{
		image_speed = 0;
	}
}
