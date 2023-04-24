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
		//Walk
		
		case 0:
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
		
		if (hurt) hspDummy = 0;
		break;
		
		//Jump
		
		case 1:
		if ((!grounded) and (!hurt) and (!attack))
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
		
		if ((hurt) or (grounded))
		{
			hsp = 0;
			hspDummy = 0;
		}
		
		if ((!attack) and (jumpTimer == -1)) jumpTimer = jumpTimerMax;
		break;
	}
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else
	{
		if (attack)
		{
			if (attackState == 1)
			{
				sprite_index = sprCharge;
			}
			else if (attackState == 2)
			{
				sprite_index = sprAttack;
			}
			else if (attackState == 3)
			{
				sprite_index = sprIdle;
			}
		}
		else
		{
			if (grounded)
			{
				if (hsp == 0)
				{
					sprite_index = sprIdle;
				}
				else
				{
					sprite_index = sprWalk;
				}
			}
			else
			{
				sprite_index = sprJump;
			}
		}
	}
	
	if (!hurt)
	{
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
				jumpTimer = -1;
				sprite_index = sprCharge;
				image_index = 0;
				attackTimer = -1;
				attack = true;
				attackState = 1;
				break;
				
				case 1:
				attackProj = instance_create_depth(x,y,depth + 1,obj_Projectile_SparkNormal);
				attackProj.owner = id;
				attackProj.enemy = true;
				attackProj.abilityType = playerAbilities.spark;
				attackProj.dmg = sparky_Spark_Damage;
				scr_Attack_SetKnockback(attackProj,sparky_Spark_Strength,sparky_Spark_HitStopAffectSource,sparky_Spark_HitStopAffectPlayer,sparky_Spark_HitStopAffectTarget,sparky_Spark_HitStopLength,sparky_Spark_HitStopShakeStrength);
				attackProj.dirX = dirX;
				attackProj.hurtsObject = false;
				attackProj.hurtsEnemy = false;
				attackProj.hurtsPlayer = true;
				attackTimer = attackTimerMin;
				attackState = 2;
				break;
				
				case 2:
				if ((instance_exists(attackProj)) and (attackProj != -1)) instance_destroy(attackProj);
				attackTimer = floor(attackTimerMin / 2);
				attackState = 3;
				break;
				
				case 3:
				attackTimer = attackTimerMax;
				attack = false;
				attackState = 0;
				break;
			}
		}
		
		//Jump Timer
		
		if ((grounded) and (!place_meeting(x,y - jumpspeed,collisionY)))
		{
			if (!parasol)
			{
				if (jumpTimer > 0)
				{
					jumpTimer -= 1;
				}
				else if (jumpTimer == 0)
				{
					if (audio_is_playing(snd_EnemyJump2)) audio_stop_sound(snd_EnemyJump2);
					audio_play_sound(snd_EnemyJump2,0,false);
					var parJump = instance_create_depth(x - (7 * dirX),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dirX);
					scaleExX = -.25;
					scaleExY = .25;
					vsp = -jumpspeed;
					jumpTimer = -1;
				}
			}
		}
		else
		{
			jumpTimer = -1;
		}
	}
	else
	{
		attackTimer = attackTimerMax;
		attack = false;
		attackState = 0;
		if ((instance_exists(attackProj)) and (attackProj != -1)) instance_destroy(attackProj);
	}
	
}
else
{
	image_speed = 0;
}