///@description Begin Step

#region Setup Timer
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

#region Event Inherited
event_inherited();
#endregion