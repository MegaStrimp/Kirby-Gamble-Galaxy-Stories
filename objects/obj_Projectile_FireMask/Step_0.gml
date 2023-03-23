///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Variables
	
	if ((!instance_exists(owner)) or ((owner.attackNumber != playerAttacks.fireBack) and (owner.attackNumber != playerAttacks.fireAerial) and (owner.attackNumber != playerAttacks.fireWheel)))
	{
		instance_destroy();
	}
}