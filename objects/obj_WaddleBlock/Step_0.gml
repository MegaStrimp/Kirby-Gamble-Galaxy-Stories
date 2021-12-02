///@description Main

//Characters and Beam

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_WaddleBlock_Normal_Idle;
		topWallSprite = spr_WaddleBlock_Normal_Top;
		break;
		
		//Fire
		
		case 1:
		sprIdle = spr_WaddleBlock_Fire_Idle;
		topWallSprite = spr_WaddleBlock_Fire_Top;
		break;
	}
	
	if (!isTop)
	{
		for (var i = 0; i < maxBeams; i++)
		{
			var projBeam = instance_create_depth(x + ((sprite_get_width(sprite_index) / 2) * image_xscale),y + ((sprite_get_height(sprite_index) / 2) * image_yscale),depth,obj_Projectile_Beam);
			projBeam.owner = id;
			switch (state)
			{
				//Clockwise
				
				case 0:
				projBeam.spd = -spd;
				projBeam.angle = 50;
				break;
				
				//Counter-Clockwise
				
				case 1:
				projBeam.spd = spd;
				projBeam.angle = 130;
				break;
			}
			if (i % 2 == 0)
			{
				projBeam.image_index = 1;
				projBeam.visible = false;
			}
			projBeam.orbit = 25 + (i * 15);
			projBeam.centerX = ((sprite_get_width(sprite_index) / 2) * image_xscale);
			projBeam.centerY = ((sprite_get_height(sprite_index) / 2) * image_yscale);
			projBeam.owner = id;
			projBeam.enemy = true;
			projBeam.hurtsObject = false;
			projBeam.hurtsEnemy = false;
			projBeam.hurtsPlayer = true;
			projBeam.destroyableByWall = false;
			projBeam.destroyableByEnemy = false;
			projBeam.destroyableByObject = false;
			projBeam.hasLimit = false;
			projBeam.particleTimer = -1;
			switch (character)
			{
				//Normal
				
				case 0:
				projBeam.character = 1;
				projBeam.sprIdle = spr_Projectile_Beam_Enemy;
				break;
				
				//Fire
				
				case 1:
				projBeam.character = 4;
				projBeam.sprIdle = spr_Projectile_Beam_Fire;
				break;
			}
		}
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Animation
	
	image_speed = 1;
	if (isTop) image_index = topWallOwner.image_index;
}
else
{
	image_speed = 0;
}