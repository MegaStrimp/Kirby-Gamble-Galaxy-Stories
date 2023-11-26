///@description Main

//Event Inherited

event_inherited();

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	#region Move Timer
	if (movetimer != -1)
	{
		var speedMultFinal = 1;
		movetimer = max(movetimer - speedMultFinal,0);
		if (movetimer == 0)
		{
			targetX += lengthdir_x(moveWidth,angleDir);
			targetY += lengthdir_y(moveWidth,angleDir);
			movetimer = movetimerMax;
		}
	}
	#endregion
	
	if (point_distance(x,y,targetX,targetY) > spd)
	{
		move_towards_point(targetX,targetY,spd);
	}
	else
	{
		x = targetX;
		y = targetY;
	}
	
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}