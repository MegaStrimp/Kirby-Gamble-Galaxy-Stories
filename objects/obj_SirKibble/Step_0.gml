///@description Main

if ((hurt) and (attack))
{
	attackStopTimer = 0;
}

//Event Inherited

event_inherited();

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Attack and Stay Still
		
		case 0:
		if (thrown)
		{
			if (instance_exists(projectile))
			{
				if ((sign(projectile.hsp) == -sign(projectile.dirX)) and ((place_meeting(x,y,projectile))))
				{
					instance_destroy(projectile);
					if (audio_is_playing(snd_CutterCatch)) audio_stop_sound(snd_CutterCatch);
					audio_play_sound(snd_CutterCatch,0,false);
					cutterCatch = true;
					cutterCatchTimer = cutterCatchTimerMax;
					attackTimer = attackTimerMax;
					image_speed = 1;
					attack = false;
					thrown = false;
				}
				if ((attackStopTimer == -1) and (!place_meeting(x,y + 1,collisionY))) attackStopTimer = attackStopTimerMax;
			}
			else
			{
				attackTimer = attackTimerMax;
				image_speed = 1;
				attack = false;
				thrown = false;
			}
		}
		
		if ((attack) and (!thrown) and (sprite_index == sprAttack) and (floor(image_index) == image_number - 1))
		{
			thrown = true;
			if (audio_is_playing(snd_CutterEnemy)) audio_stop_sound(snd_CutterEnemy);
			audio_play_sound(snd_CutterEnemy,0,false);
			projectile = instance_create_depth(x,y - 10,depth,obj_Projectile_Cutter);
			projectile.sprite_index = spr_Projectile_Cutter_Enemy;
			projectile.paletteIndex = paletteIndex;
			projectile.character = 1;
			projectile.owner = id;
			projectile.abilityType = playerAbilities.cutter;
			projectile.dmg = sirKibble_Cutter_Damage;
			scr_Attack_SetKnockback(projectile,sirKibble_Cutter_Strength,sirKibble_Cutter_HitStopAffectSource,sirKibble_Cutter_HitStopAffectPlayer,sirKibble_Cutter_HitStopAffectTarget,sirKibble_Cutter_HitStopLength,sirKibble_Cutter_HitStopShakeStrength);
			projectile.hsp = dirX * projectile.decelMax;
			projectile.dirX = dirX;
			projectile.image_xscale = projectile.dirX;
			projectile.enemy = true;
			projectile.destroyableByEnemy = false;
			projectile.hurtsObject = false;
			projectile.hurtsEnemy = false;
			projectile.hurtsPlayer = true;
		}
		if (attackState == 1) image_index = 0;
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			if (place_meeting(x,y + 1,collisionY))
			{
				sprite_index = sprHurt;
			}
			else
			{
				sprite_index = sprHurtAir;
			}
		}
		else
		{
			image_speed = 1;
			if (attack)
			{
				sprite_index = sprAttack;
			}
			else
			{
				if (cutterCatch)
				{
					sprite_index = sprCatch;
				}
				else
				{
					sprite_index = sprReady;
				}
			}
		}
		break;
		
		//Walk
		
		case 1:
		if ((!hurt) and (!attack))
		{
			if (parasol)
			{
				scr_AI_HorizontalStraightMovement(false,true);
			}
			else
			{
				scr_AI_HorizontalStraightMovement(true,true);
			}
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			image_speed = 1;
			if (hsp == 0)
			{
				sprite_index = sprIdle;
			}
			else
			{
				sprite_index = sprWalk;
			}
		}
		break;
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		switch (attackState)
		{
			case 0:
			if (sign(floor(vsp)) < 1)
			{
				attack = true;
				attackState += 1;
				image_index = 0;
				if (instance_exists(obj_Player))
				{
					if (instance_nearest(x,y,obj_Player).y < y - 36)
					{
						vsp = -jumpspeed;
					}
					dirX = 1;
					if (obj_Player.x < x) dirX = -1;
				}
				attackTimer = attackTimerMin;
			}
			break;
			
			case 1:
			attackState = 0;
			attackTimer = -1;
			break;
		}
	}
	
	//Attack Stop Timer
	
	if (attackStopTimer > 0)
	{
		attackStopTimer -= 1;
	}
	else if (attackStopTimer == 0)
	{
		attackTimer = attackTimerMax;
		image_speed = 1;
		attack = false;
		thrown = false;
	    attackStopTimer = -1;
	}
	
	//Cutter Catch Timer
	
	if (cutterCatchTimer > 0)
	{
		cutterCatchTimer -= 1;
	}
	else if (cutterCatchTimer == 0)
	{
		cutterCatch = false;
	    cutterCatchTimer = -1;
	}
}
else
{
	image_speed = 0;
}