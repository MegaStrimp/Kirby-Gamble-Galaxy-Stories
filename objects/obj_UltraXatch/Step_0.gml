///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_UltraXatch_Normal_Idle;
		sprCrown = spr_UltraXatch_Normal_Crown;
		break;
	}
}

//Event Inherited

event_inherited();

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!global.pause)
{
	//Scale Ex
	
	var scaleSpd = crownScaleSpd;
	if (charge) scaleSpd = crownScaleSpdMax;
	
	crownScale += scaleSpd * crownScaleDir;
	
	if (abs(crownScale) > crownScaleMax)
	{
		crownScale = crownScaleMax * crownScaleDir;
		crownScaleDir *= -1;
	}
	
	//Animation
	
	image_speed = 1;
	sprite_index = sprIdle;
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		if (instance_exists(obj_Player))
		{
			var maxLength = 900;
			var xEnd = 0;
			var yEnd = 0;
			var dirr = point_direction(x,y,obj_Player.x,obj_Player.y);
			for (var i = 0; i < maxLength; i++)
			{
				xEnd = x + lengthdir_x(i,dirr);
				yEnd = y + lengthdir_y(i,dirr);
			}
			var laser = instance_create_depth(x,y,450,obj_LaserReady);
			laser.owner = id;
			laser.dirr = dirr;
			laser.targetX = xEnd;
			laser.targetY = yEnd;
		}
		attackTimer = -1;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}