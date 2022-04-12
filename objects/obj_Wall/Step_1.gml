///@description Begin Step

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if (hasTop)
	{
		topWall = instance_create_depth(x,y,depth,object_index);
		if (topWallSprite != -1)
		{
			topWall.visible = true;
			topWall.sprite_index = topWallSprite;
		}
		topWall.hsp = hsp;
		topWall.vsp = vsp;
		topWall.mask_index = topWallMask;
		//topWall.sprite_index = topWallMask;
		topWall.damageType = damageType;
		topWall.hasTop = false;
		topWall.isTop = true;
		topWall.enemyCollisionMask = enemyCollisionMask;
		topWall.topWallOwner = id;
		topWall.setupTimer = 0;
	}
	if (hasEnemyWall)
	{
		var enemyWall = instance_create_depth(x,y,depth,obj_EnemyWall);
		enemyWall.owner = id;
	}
	if (isTop)
	{
		if (place_meeting(x,y + 1,obj_Player))
		{
			with (obj_Player)
			{
				while (place_meeting(x,y,other))
				{
					y -= 1;
				}
			}
		}
		
		if (place_meeting(x,y + 1,obj_Enemy))
		{
			with (obj_Enemy)
			{
				while (place_meeting(x,y,other))
				{
					y -= 1;
				}
			}
		}
	}
	setupTimer = -1;
}