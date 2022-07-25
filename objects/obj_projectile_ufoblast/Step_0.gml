///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Small
		case 0:
		sprIdle = spr_Projectile_UfoBlast_Small;
		break;
		#endregion
		
		#region Medium
		case 1:
		sprIdle = spr_Projectile_UfoBlast_Medium;
		break;
		#endregion
		
		#region Big
		case 2:
		sprIdle = spr_Projectile_UfoBlast_Big;
		break;
		#endregion
		
		#region Max
		case 3:
		sprIdle = spr_Projectile_UfoBlast_Max;
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
}
else
{
	image_speed = 0;
}