///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_HiveDrone_Normal_Idle;
		sprAttack = spr_HiveDrone_Normal_Attack;
		sprDrop = spr_HiveDrone_Normal_Drop;
		sprHurt = spr_HiveDrone_Normal_Hurt;
		sprWings = spr_HiveDrone_Normal_Wings;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion