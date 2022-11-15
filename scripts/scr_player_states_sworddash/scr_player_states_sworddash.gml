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
		if attackTimer>60
		hsp=5*sign(hsp)
		else
		hsp=(attackTimer*2.5)/30 *sign(hsp)
		//Revert Back
		if ((attackNumber != playerAttacks.swordDash) or (hurt)) attackTimer = 0;
		attackTimer--;
		if attackTimer<=0|| abs(hsp)<0.3 {
				attack=false 
				attackable=true; 
				state=playerStates.normal 
				attackTimer=0
				attackNumber=playerAttacks.none
				
			
			}
		//Animation
		
		image_speed = 1;
		if grounded canJump = true; //to be fair, i'm fairly certain this doesnt work
		
		
		scr_Player_Collision(playerMechs.none);
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}