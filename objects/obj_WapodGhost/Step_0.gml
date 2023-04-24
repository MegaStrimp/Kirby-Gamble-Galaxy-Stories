///@description Main

//Event Inherited

event_inherited();

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Movement
	
	if (!spawnState) vsp = jumpspeed;
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else
	{
		if (spawnState)
		{
			sprite_index = sprSpawn;
		}
		else
		{
			sprite_index = sprIdle;
		}
	}
}
else
{
	image_speed = 0;
}