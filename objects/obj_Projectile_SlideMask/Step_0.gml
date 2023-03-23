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
	else if (owner.state != playerStates.slide)
	{
		instance_destroy();
	}
}