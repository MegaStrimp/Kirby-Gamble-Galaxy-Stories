///@description Main

//Event Inherited

event_inherited();

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Movement
	
	if (move)
	{
		hsp = lengthdir_x(spd,angle);
		vsp = lengthdir_y(spd,angle);
	}
	else
	{
		hsp = 0;
		vsp = 0;
	}

	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else
	{
		sprite_index = sprWalk;
	}
	
	#region Move Timer
	if (moveTimer > 0)
	{
		moveTimer -= 1;
	}
	else if (moveTimer == 0)
	{
		if (move)
		{
			move = false;
			moveTimer = moveTimerMax;
		}
		else
		{
			move = true;
			angle = irandom_range(0,359);
			moveTimer = moveTimerMin;
		}
	}
	#endregion
}
else
{
	pathsp = 0;
	image_speed = 0;
}