///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Get Inhaled
	
	if (canBeInhaled) scr_Object_Inhale(false);
	
	//Position
	
	hsp = scr_Friction(hsp,decel);
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if (GAMEMAKERBUG) instance_destroy();
	    destroyTimer = -1;
	}
}
else
{
	image_speed = 0;
}