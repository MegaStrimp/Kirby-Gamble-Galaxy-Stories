///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Projectile_Spark_Normal_None;
		break;
		#endregion
		
		#region Low
		case 1:
		sprIdle = spr_Projectile_Spark_Normal_Low;
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
	
	#region Animation
	image_speed = 1;
	
	sprite_index = sprIdle;
	#endregion
	
	#region Destroy Timer
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
	#endregion
}
else
{
	image_speed = 0;
}