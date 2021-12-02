///@description Main

function scr_Player_Death()
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
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	sprite_index = sprDeath;
}