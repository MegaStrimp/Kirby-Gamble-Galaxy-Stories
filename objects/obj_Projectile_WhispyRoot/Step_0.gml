///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprRootReady = spr_WhispyWoods_Normal_RootReady;
		sprRoot1 = spr_WhispyWoods_Normal_Root1;
		sprRoot2 = spr_WhispyWoods_Normal_Root2;
		sprRoot3 = spr_WhispyWoods_Normal_Root3;
		break;
	}
	sprite_index = sprRootReady;
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
		ready = true;
		switch (rootIndex)
		{
			case 1:
			sprite_index = sprRoot1;
			break;
			
			case 2:
			sprite_index = sprRoot2;
			break;
			
			case 3:
			sprite_index = sprRoot3;
			break;
		}
		image_index = 0;
		
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