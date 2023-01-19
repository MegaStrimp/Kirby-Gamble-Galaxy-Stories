///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = choose(spr_Projectile_WalkyNote_Normal_Red,spr_Projectile_WalkyNote_Normal_Green,spr_Projectile_WalkyNote_Normal_Blue);
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
	shakeY = 1.5;
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