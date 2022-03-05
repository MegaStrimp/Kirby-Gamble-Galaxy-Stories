///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	if ((!instance_exists(owner)) or ((owner.attackNumber != playerAttacks.fireBack) and (owner.attackNumber != playerAttacks.fireAerial) and (owner.attackNumber != playerAttacks.fireWheel)))
	{
		instance_destroy();
	}
	
	//Event Inherited
	
	event_inherited();
}