///@function scr_AI_VerticalWaveMovement(dirReference)
///@description Gives the object a vertical wave-based movement.
///@param {real} dirReference Set it to true/false depending on if you want sprite direction to be based around vertical speed.

function scr_AI_VerticalWaveMovement(argument0)
{
	//Movement
	
	if ((jumpspeed != 0) and (!invincible))
	{
		vspDummy += (accel * walkDirY);
		if ((abs(vspDummy) >= jumpspeed)) walkDirY *= -1;
		
		vsp = vspDummy;
	}
	
	//Sprite Direction
	
	if (argument0)
	{
		if (sign(vsp) != 0) dirY = sign(vsp);
	}
}