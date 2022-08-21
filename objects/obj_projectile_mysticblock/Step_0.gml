///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Projectile_MysticBeam_Enemy;
		break;
		#endregion
	}
}
#endregion

if (((pausable) and (!global.pause)) or (!pausable))
{
	#region Event Inherited
	event_inherited();
	#endregion
	
	#region Position
	x += hsp;
	y += vsp;
	#endregion
	
	#region Invis Timer
	if (invisTimer > 0)
	{
		invisTimer -= 1;
	}
	else if (invisTimer == 0)
	{
		if (visible)
		{
			visible = false;
		}
		else
		{
			visible = true;
		}
		invisTimer = invisTimerMax;
	}
	#endregion
	
	#region Animation
	image_speed = 1;
	
	sprite_index = sprIdle;
	#endregion
}
else
{
	image_speed = 0;
}