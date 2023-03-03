///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_MirrorReflection_Normal_Idle;
		break;
	}
	
	while (place_meeting(x,y + 1,obj_Wall)) y -= 1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion