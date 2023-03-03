///@description Main

//Event Inherited

event_inherited();

if (!childPause)
{
	//Variables
	
	var nearestPlayer = -1;
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
		if ((groundCooldown == 0) and ((place_meeting(x,y,obj_Player)) or (place_meeting(x,y,collisionX)) or (place_meeting(x,y,collisionY))))
		{
			if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
			audio_play_sound(snd_Explosion1,0,false);
			if (audio_is_playing(snd_Carrot)) audio_stop_sound(snd_Carrot);
			audio_play_sound(snd_Carrot,0,false);
			
			var par = instance_create_depth(x,y,depth,obj_Projectile_ExplosionMask);
			par.owner = id;
			par.enemy = true;
			
			var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
			explosion.state = "explosion1";
			
			hasDeathKnockback = false;
			hasDeathParticles = false;
			death = true;
		}
		
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