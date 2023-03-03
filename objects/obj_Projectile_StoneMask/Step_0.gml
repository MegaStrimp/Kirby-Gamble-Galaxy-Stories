///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
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
	
	if (!enemy)
	{
		if ((sign(owner.hsp < .5)) and (sign(owner.vsp < .5)))
		{
			hurtsObject = false;
			hurtsEnemy = false;
		}
		else
		{
			hurtsObject = true;
			hurtsEnemy = true;
		}
	}
}