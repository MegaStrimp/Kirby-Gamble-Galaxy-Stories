///@description Main

//Event Inherited

event_inherited();

#region Friction
if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);
#endregion

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
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
	
	if (grounded) death = true;
	
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