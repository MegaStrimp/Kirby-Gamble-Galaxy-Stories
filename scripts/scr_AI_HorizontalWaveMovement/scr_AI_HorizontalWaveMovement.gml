///@function scr_AI_HorizontalWaveMovement(dirReference)
///@description Gives the object an horizontal wave-based movement.
///@param {real} dirReference Set it to true/false depending on if you want sprite direction to be based around horizontal speed.

function scr_AI_HorizontalWaveMovement(argument0)
{
	//Variables
	
	//hasXKnockback = false;
	
	//Movement
	
	if ((movespeed != 0) and (!invincible))
	{
		hspDummy += (accel * walkDirX);
		if ((abs(hspDummy) >= movespeed)) walkDirX *= -1;
		
		hsp = hspDummy;
		
		if (place_meeting(x + hspFinal,y,collisionX))
		{
			var forwardWall = instance_place(x + hspFinal,y,collisionX);
			if (forwardWall.slope == false)
			{
				walkDirX *= -1;
				hspDummy = 0;
			}
		}
		
		//Sprite Direction
		
		if (argument0)
		{
			if (sign(hsp) != 0) dirX = sign(hsp);
		}
	}
}