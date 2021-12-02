///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	if ((!instance_exists(owner)) or ((owner.attackNumber != "fireBack") and (owner.attackNumber != "fireAerial") and (owner.attackNumber != "fireWheel")))
	{
		instance_destroy();
	}
	
	//Event Inherited
	
	event_inherited();
}