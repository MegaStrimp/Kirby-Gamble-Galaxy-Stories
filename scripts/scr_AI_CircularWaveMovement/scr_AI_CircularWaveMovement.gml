///@function scr_AI_HorizontalWaveMovement(dirReferenceX,dirReferenceY)
///@description Gives the object a circular wave-based movement.
///@param {real} dirReferenceX Set it to true/false depending on if you want sprite direction to be based around horizontal speed.
///@param {real} dirReferenceY Set it to true/false depending on if you want sprite direction to be based around vertical speed.

function scr_AI_CircularWaveMovement(argument0, argument1)
{
	hsp += (accel * walkDirX);
	if ((abs(hsp) >= movespeed)) walkDirX *= -1;
	
	/*vsp += (accel * walkDirY);
	if ((abs(vsp) >= movespeed)) walkDirY *= -1;*/
	
	vsp = 1 - hsp;
	
	if (argument0) dirX = sign(hsp);
	if (argument1) dirY = sign(vsp);
}