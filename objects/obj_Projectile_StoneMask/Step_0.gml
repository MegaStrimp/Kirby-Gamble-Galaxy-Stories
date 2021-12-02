///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (instance_exists(owner))
	{
		if (owner.hurt)
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
	
	//Stop Damaging
	
	if ((!enemy) and ((sign(owner.hsp > .5)) and (sign(owner.vsp > .5))))
	{
		hurtsObject = true;
		hurtsEnemy = true;
	}
	else
	{
		hurtsObject = false;
		hurtsEnemy = false;
	}
}