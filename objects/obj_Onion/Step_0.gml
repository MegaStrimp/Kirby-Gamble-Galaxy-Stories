///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Onion_Normal_Idle;
		sprHurt = "self";
		break;
		
		var nearestPlayer = -1;
		nearestPlayer = instance_nearest(x,y,obj_Player);
		if (nearestPlayer != -1)
		{
			direction = point_direction(x,y,nearestPlayer.x,nearestPlayer.y);
			image_angle = direction + 90;
		}
		
		spd = random_range(spd / 2,spd * 1.5);
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Variables
	
	nearestPlayer = -1;
	nearestPlayer = instance_nearest(x,y,obj_Player);
	
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//States
	
	switch (state)
	{
		//Normal
		
		case 0:
		if ((place_meeting(x,y,collisionX)) or (place_meeting(x,y,collisionY))) death = true;
		
		if (nearestPlayer != -1)
		{
			direction = point_direction(x,y,nearestPlayer.x,nearestPlayer.y);
			imageAngle = direction + 90;
		}
		
		hsp = lengthdir_x(spd,direction);
		vsp = lengthdir_y(spd,direction);
		
		image_speed = 1;
		sprite_index = sprIdle;
		break;
	}
}
else
{
	image_speed = 0;
}