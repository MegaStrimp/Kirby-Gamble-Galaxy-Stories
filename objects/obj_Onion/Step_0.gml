///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Onion_Normal_Idle;
		sprHurt = -1;
		break;
	}
	
	var nearestPlayer = -1;
	nearestPlayer = instance_nearest(x,y,obj_Player);
	if (state == 0)
	{
		if (nearestPlayer != -1)
		{
			direction = point_direction(x,y,nearestPlayer.x,nearestPlayer.y);
			image_angle = direction + 90;
		}
	}
	else if (state == 1)
	{
		groundFailsafe = false;
		depth = layer_get_depth("Collision");
	}
	
	spd = random_range(spd / 2,spd * 1.5);
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Variables
	
	nearestPlayer = -1;
	nearestPlayer = instance_nearest(x,y,obj_Player);
	
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Ground Variables
	
	groundSpd = lerp(groundSpd,0,.05);
	if (groundCooldown > 0) groundCooldown -= 1;
	
	//States
	
	switch (state)
	{
		#region Normal
		case 0:
		if ((groundCooldown == 0) and ((place_meeting(x,y,collisionX)) or (place_meeting(x,y,collisionY)))) death = true;
		
		if (nearestPlayer != -1)
		{
			direction = point_direction(x,y,nearestPlayer.x,nearestPlayer.y);
			imageAngle = direction + 90;
		}
		
		hsp = lengthdir_x(spd + groundSpd,direction);
		vsp = lengthdir_y(spd + groundSpd,direction);
		
		image_speed = 1;
		sprite_index = sprIdle;
		break;
		#endregion
		
		#region Ground
		case 1:
		var canPopOut = false;
		if (nearestPlayer != -1)
		{
			switch (direction)
			{
				case 0:
				if (nearestPlayer.y > y) canPopOut = true;
				break;
				
				case 90:
				if (nearestPlayer.x > x) canPopOut = true;
				break;
				
				case 180:
				if (nearestPlayer.y < y) canPopOut = true;
				break;
				
				case 270:
				if (nearestPlayer.x < x) canPopOut = true;
				break;
			}
		}
		if ((canPopOut) and ((distance_to_object(nearestPlayer) <= 96)))
		{
			state = 0;
			depth = layer_get_depth("Enemies");
			groundCooldown = 10;
			groundSpd = groundSpdMax;
		}
		
		image_speed = 0;
		sprite_index = sprIdle;
		break;
		#endregion
	}
}
else
{
	image_speed = 0;
}