///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Variables
	
	if (!instance_exists(owner))
	{
		instance_destroy();
	}
	else
	{
		if (owner.attackNumber != playerAttacks.finalCutter || owner.finalCutterState == 3)
		{
			instance_destroy();
		}
	}
}