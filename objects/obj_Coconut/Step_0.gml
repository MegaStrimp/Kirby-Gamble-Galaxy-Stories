///@description Main

//Event Inherited

event_inherited();

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//Trigger
	
	if (triggered)
	{
		hasGravity = true;
	}
	else
	{
		with (obj_Player)
		{
			if ((x <= other.x + 24) and (x >= other.x - 24)) other.triggered = true;
		}
		hasGravity = false;
	}
	
	//Destroy
	
	if (place_meeting(x,y + 1,collisionY)) death = true;
	
	//Animation
	
	if (triggered)
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
	}
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}