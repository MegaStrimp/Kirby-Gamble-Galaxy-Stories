///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_NinjaSlash_Normal_Idle;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Hit Enemy
	
	if ((!didHitEnemy) and (place_meeting(x,y,obj_Enemy)))
	{
		didHitEnemy = true;
		shockTimer = shockTimerMax;
	}
	
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (instance_exists(owner))
	{
		if ((owner.hurt) or ((!enemy) and (owner.attackNumber != playerAttacks.ninjaSlash)))
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
	
	//Shock Timer
	
	if (shockTimer > 0)
	{
		shockTimer -= 1;
	}
	else if (shockTimer == 0)
	{
		var shockCancel = false;
		if (!shockCancel)
		{
			shockTimer = shockTimerMax;
		}
		if ((shockCount >= shockCountMax) or (shockCancel)) shockTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}