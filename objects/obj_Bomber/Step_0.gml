///@description Step

//Event Inherited

event_inherited();
var projectilePointer;

if (!global.pause)
{
	scr_Object_Inhale();
	
	scr_Enemy_HurtsPlayer();
	
	hsp = scr_Friction(hsp,decel);
	
	if (hurt)
	{
		 hspDummy = 0;
		 sprite_index = sprHurt;
	}
	if (!hurt)
	{
		switch (actionState)
		{
			case 0:
			//walking
			if (!stop)
			{
				scr_AI_HorizontalStraightMovement(true,true);
				if (!place_meeting(x + (5 * walkDirX), y + 7, collisionY))
				{
					hsp = 0;
					actionState = 1;
					break;
				}
				sprite_index = sprWalk;
			}
			else
			{
				sprite_index = sprIdle;
			}
			break;
			
			case 1:
			//teetering
			gravNormal = 0;
			sprite_index = sprTeeter;
			break;
			
			case 2:
			//falling
			if (place_meeting(x, y + vsp + 1, collisionY))
			{
				image_yscale = 1;
				sprite_index = sprExp;
				startExplode = true;
			} else
			{
				image_yscale = -1;
			}
			
			break;
		}	
	}
	
	//timers for walking
	if (!hurt)
	{
		if (stop)
		{
			if (stopTimer > 0)
			{
				stopTimer -= 1;
			}
			else
			{
				stop = false;
				stopTimer = 45;
			}
		}
		else
		{
			if (walkTimer > 0)
			{
				walkTimer -= 1;
			}
			else if (walkTimer == 0)
			{
				walkTimer = 45;
				hsp = 0;
				stop = true;
			}
		}
		
		if (actionState == 1)
		{
			if (teeterTimer > 0)
			{
				teeterTimer -= 1;
			}
			else
			{
				x += (8 * walkDirX);
				sprite_index = sprWalk;
				gravNormal = .2;
				actionState = 2;
			}
		}
		
		if (startExplode)
		{
			if (explosionTimer > 0)
			{
				explosionTimer -= 1;
			}
			else
			{
				global.pause = true;
				startExplode = false;
				explosion = true;
			}
		}
		
	}
}

if (explosion)
{
	if (circleTimer > 0)
	{
		circleTimer -= 1;
	}
	else
	{
		projectilePointer = instance_create_depth(x, y, depth,obj_Projectile);
		if (instance_exists(projectilePointer))
		{
			projectilePointer.owner = id;
			projectilePointer.enemy = true;
			projectilePointer.destroyableByWall = false;
			projectilePointer.destroyableByPlayer = false;
			projectilePointer.destroyableByEnemy = false;
			projectilePointer.destroyableByObject = false;
			projectilePointer.hurtsEnemy = true;
			projectilePointer.hurtsPlayer = true;
			projectilePointer.visible = false;
			projectilePointer.mask_index = spr_48Square_Mask;
			projectilePointer.image_xscale = 3;
			projectilePointer.image_yscale = 3;
			projectilePointer.destroyableByEnemy = false;
			projectilePointer.destroyableByObject = false;
			projectilePointer.movespeed = 0;
			projectilePointer.hsp = 0;
			projectilePointer.damageType = "fire";
			projectilePointer.setupExplode = true;
			projectilePointer.setupTimer = 1;
		}
		var explosionEffect = instance_create_depth(x,y,depth, obj_DeathParticles);
		explosionEffect.state = "explosion1";
		if (instance_exists(obj_Camera))
		{
			obj_Camera.shakeX = 2;
			obj_Camera.shakeY = 2;
		}
		if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
		audio_play_sound(snd_Explosion1, 0, false);
		instance_destroy();
		global.pause = false;
		explosion = false;
	}
}

