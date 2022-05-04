///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprSpawn = spr_Wapod_Normal_Spawn;
		sprIdle = spr_Wapod_Normal_Idle;
		sprHurt = spr_Wapod_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
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
	shakeX = 0;
	shakeY = 0;
}