///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BloodGordo_Normal_Idle;
		sprAngry = spr_BloodGordo_Normal_Angry;
		sprCautious = spr_BloodGordo_Normal_Cautious;
		sprSleep = spr_BloodGordo_Normal_Sleep;
		sprTriggered = spr_BloodGordo_Normal_Triggered;
		sprHurt = -1;
		sprAura = spr_BloodGordo_Normal_Aura;
		break;
	}
	
	spd = spdMin;
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//States
	
	switch (state)
	{
		//Stay In Circle
		
		case 0:
		//Movement
		
		targetX = coreX;
		targetY = coreY;
		targetSet = false;
		cautious = false;
		
		with (obj_Player)
		{
			if (!other.targetSet)
			{
				if ((distance_to_point(other.x,other.y)) <= other.radius)
				{
					if (other.retreated)
					{
						if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
						audio_play_sound(snd_Charge_Ready,0,false);
						var particle = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						particle.sprite_index = spr_Particle_BloodGordo;
						particle.destroyAfterAnimation = true;
						other.triggered = true;
					}
					other.targetX = x;
					other.targetY = y;
					other.targetSet = true;
					other.retreated = false;
				}
				else if ((distance_to_point(other.x,other.y)) <= other.radius + 24)
				{
					other.cautious = true;
					other.retreated = true;
				}
			}
		}
		
		if (targetSet)
		{
			spd = lerp(spd,spdMax,.01);
		}
		else
		{
			spd = lerp(spd,spdMin,.5);
		}
		
		var targetXLerp = lerp(x,targetX,spd);
		var targetYLerp = lerp(y,targetY,spd);
		
		var dist = point_distance(coreX,coreY,targetXLerp,targetYLerp);
		
		if (dist <= radius)
		{
			x = targetXLerp;
			y = targetYLerp;
		}
		else
		{
			dist -= radius;
	
			var _dir = point_direction(targetXLerp,targetYLerp,coreX,coreY);
			
			var _x = targetXLerp + lengthdir_x(dist,_dir);
			var _y = targetYLerp + lengthdir_y(dist,_dir);
			
			_dir = point_direction(coreX,coreY,_x,_y);
			x = coreX + lengthdir_x(radius,_dir);
			y = coreY + lengthdir_y(radius,_dir);
		}
		
		//Animation
		
		image_speed = 1;
		
		if (triggered)
		{
			sprite_index = sprTriggered;
		}
		else
		{
			if (targetSet)
			{
				sprite_index = sprAngry;
			}
			else
			{
				if (cautious)
				{
					//sprite_index = sprCautious;
					sprite_index = sprAngry;
				}
				else
				{
					if (distance_to_point(coreX,coreY) <= 4)
					{
						//sprite_index = sprSleep;
						sprite_index = sprIdle;
					}
					else
					{
						sprite_index = sprIdle;
					}
				}
			}
		}
		break;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}