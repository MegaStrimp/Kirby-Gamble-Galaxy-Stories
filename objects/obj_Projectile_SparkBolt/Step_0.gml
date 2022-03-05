///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Destroy
	
	if (!instance_exists(owner))
	{
		if (instance_exists(obj)) instance_destroy(obj);
		instance_destroy();
	}
	else
	{
		if ((owner.attackNumber != playerAttacks.sparkUp) and (owner.attackNumber != playerAttacks.sparkDown))
		{
			if (instance_exists(obj)) instance_destroy(obj);
			instance_destroy();
		}
		
		//Create Object
		
		if (createObject)
		{
			var yDir = 1;
			if (owner.attackNumber == playerAttacks.sparkUp) yDir = -1;
			obj = instance_create_depth(x,owner.y - 4 + (14 * yDir),depth,obj_Projectile_SparkPillar);
			obj.owner = id;
			obj.image_yscale = yDir;
			obj.dirY = yDir;
			createObject = false;
		}
	}
	
	//Event Inherited
	
	event_inherited();
	
	//Sprite Change Timer
	
	if (spriteChangeTimer > 0)
	{
		spriteChangeTimer -= 1;
	}
	else if (spriteChangeTimer == 0)
	{
		if (sprite_index == sprIdleBlue)
		{
			sprite_index = sprIdleGreen;
		}
		else
		{
			sprite_index = sprIdleBlue;
		}
		spriteChangeTimer = spriteChangeTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}