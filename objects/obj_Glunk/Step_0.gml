///@description Main

//Event Inherited

event_inherited();

#region Friction
if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);
#endregion

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//States
	
	switch (state)
	{
		//Stand Still
		
		case 0:
		//Animation
		
		if (((animDir == 1) and (image_index >= image_number - 1)) or ((animDir == -1) and (image_index <= 1)))
		{
			image_speed = 0;
		}
		else
		{
			if (attack)
			{
				image_speed = 1 * animDir;
			}
			else
			{
				if (animDir == 1)
				{
					image_speed = .5;
				}
				else
				{
					image_speed = -1;
				}
			}
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			sprite_index = sprIdle;
		}
		break;
		
		//Shoot
		
		case 1:
		//Animation
		
		if (((animDir == 1) and (image_index >= image_number - 1)) or ((animDir == -1) and (image_index <= 1)))
		{
			image_speed = 0;
		}
		else
		{
			image_speed = 2 * animDir;
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			sprite_index = sprIdle;
		}
		break;
	}
	
	if ((animDir == 1) and (image_index >= image_number - 1)) image_index = image_number - 1;
	if ((animDir == -1) and (image_index <= 0)) image_index = 0;
	
	if (!hurt)
	{
		//Anim Dir Timer
		
		if (animDirTimer > 0)
		{
			animDirTimer -= 1;
		}
		else if (animDirTimer == 0)
		{
			animDir *= -1;
			if (attack)
			{
				if (animDir == -1)
				{
					if (audio_is_playing(snd_GlunkWater)) audio_stop_sound(snd_GlunkWater);
					audio_play_sound(snd_GlunkWater,0,false);
					attackCount += 1;
					var water = instance_create_depth(x,y - (4 * dirY),depth,obj_Projectile_GlunkWater);
					water.owner = id;
					water.enemy = true;
					water.abilityType = playerAbilities.water;
					water.dmg = glunk_Water_Damage;
					scr_Attack_SetKnockback(water,glunk_Water_Strength,glunk_Water_HitStopAffectSource,glunk_Water_HitStopAffectPlayer,glunk_Water_HitStopAffectTarget,glunk_Water_HitStopLength,glunk_Water_HitStopShakeStrength);
					water.destroyableByEnemy = false;
					water.hurtsObject = false;
					water.hurtsEnemy = false;
					water.hurtsPlayer = true;
					water.jumpspeed = 6 * dirY;
					water.paletteIndex = paletteIndex;
					if (attackCount >= attackCountMax)
					{
						attackCount = 0;
						attack = false;
						attackTimer = attackTimerMax;
					}
				}
				animDirTimer = animDirTimerMin;
			}
			else
			{
				animDirTimer = animDirTimerMax;
			}
		}
		
		//Attack Timer
		
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			attack = true;
			attackTimer = -1;
		}
	}
}
else
{
	image_speed = 0;
}