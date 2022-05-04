///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_WhispyWoods_Normal_RootAttack;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Position
	
	x += hsp;
	y += vsp;
	
	#region Ready Timer
	if (readyTimer > 0)
	{
		readyTimer -= 1;
	}
	else if (readyTimer == 0)
	{
		sprite_index = sprIdle;
		image_index = rootIndex;
		for (var i = 0; i < 2; i++)
		{
			var parXDir = 2;
			if (i == 1) var parXDir = -2;
			var par = instance_create_depth(x + parXDir,y - 8,depth - 1,obj_RecoilStar);
			if (i == 0)
			{
				par.hsp = 3;
			}
			else if (i == 1)
			{
				par.hsp = -3;
			}
			par.dir = sign(par.hsp);
			par.hurtsObject = false;
			par.hurtsEnemy = false;
			par.canBeInhaled = true;
			par.destroyTimer = recoilTimer;
		}
		readyTimer = -1;
	}
	#endregion
	
	#region Destroy Timer
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
	#endregion
}
else
{
	image_speed = 0;
}