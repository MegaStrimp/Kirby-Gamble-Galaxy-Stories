///@description Main

//Event Inherited

event_inherited();

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	var range = 320;
	var fallSpeed = 3;
	var riseSpeed = 1;
	//Activate
	//behavior
	if(instance_exists(obj_Player)){
		if(distance_to_object(obj_Player) <= range && abs(x-obj_Player.x) <= 36){
			if(!place_meeting(x,y+fallSpeed,collisionY)){
					vsp = fallSpeed;
					//y+=vsp;
					fallTimer = fallTimerMax;
					image_speed = .25;

			}else{
				vsp = 0;
				image_speed = .15;
			}
			
		}else if(fallTimer > 0){
			fallTimer--;	
			vsp = 0;
		}else if(!place_meeting(x,y-riseSpeed,obj_Wall)){
			//y-= riseSpeed;
			vsp = -riseSpeed;	
		}
	}

	with (obj_Player)
	{
		if (distance_to_object(other) <= 320)
		{
			other.attack = true;
		}
		else
		{
		}
	}
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else
	{
		if (vsp > 0)
		{
			sprite_index = sprFall;
		}
		else
		{
			sprite_index = sprIdle;
		}
	}
}
else
{
	image_speed = 0;
}