///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Doomsday_Normal_Bomb;
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
	
	#region Get Inhaled
	scr_Object_Inhale(false);
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