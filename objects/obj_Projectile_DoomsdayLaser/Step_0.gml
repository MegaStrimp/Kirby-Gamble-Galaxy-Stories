///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Variables
	
	if (!instance_exists(owner))
	{
		instance_destroy();
	}
	
	//Shake Camera
	
	with (obj_Camera)
	{
		shakeX = 2;
		shakeY = 2;
	}
	
	//Animation
	
	image_speed = 1;
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		for (var i = 0; i < 2; i++)
		{
			var parXDir = 2;
			if (i == 1) var parXDir = -2;
			var par = instance_create_depth(x + parXDir,y + 105,depth - 1,obj_RecoilStar);
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
			par.destroyTimer = 60;
		}
		instance_destroy();
	    destroyTimer = -1;
	}
	
	//Recoil Star Timer
	
	if (recoilStarTimer > 0)
	{
		recoilStarTimer -= 1;
	}
	else if (recoilStarTimer == 0)
	{
		for (var i = 0; i < 2; i++)
		{
			var parXDir = 2;
			if (i == 1) var parXDir = -2;
			var par = instance_create_depth(x + parXDir,y + 105,depth - 1,obj_RecoilStar);
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
			par.destroyTimer = 25;
		}
	    recoilStarTimer = recoilStarTimerMax;
	}
}
else
{
	image_speed = 0;
}