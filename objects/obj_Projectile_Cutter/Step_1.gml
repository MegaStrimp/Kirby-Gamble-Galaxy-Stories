///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Cutter_Player;
		break;
		
		//Enemy
		
		case 1:
		sprIdle = spr_Projectile_Cutter_Enemy;
		break;
	}
	if (charge) trail = scr_create_trail_full(spr_Trail_Yellow, 0, 20, 0, 0.5, 1, 2, 4, 0.5, 0, 1, c_white,20,depth + 1);
}
#endregion

#region Event Inherited
event_inherited();
#endregion