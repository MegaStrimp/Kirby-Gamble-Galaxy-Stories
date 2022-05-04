///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Spawn Timer
	
	if (spawnTimer > 0)
	{
		spawnTimer -= 1;
	}
	else if (spawnTimer == 0)
	{
		switch (character)
		{
			//Normal
			case 0:
			sprSpawn = spr_RecoilStar_Normal_Spawn;
			sprIdle = spr_RecoilStar_Normal_Idle;
			sprDestroy = spr_RecoilStar_Normal_Destroy;
			break;
		}
		sprite_index = sprSpawn;
		sprHurt = sprIdle;
	    spawnTimer = -1;
	}
	
	//Event Inherited
	
	event_inherited();
	
	//Get Inhaled
	
	if (canBeInhaled) scr_Object_Inhale(false);
	
	//Position
	
	hsp = scr_Friction(hsp,decel);
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
	    destroyTimer = -1;
	}
}
else
{
	image_speed = 0;
}
