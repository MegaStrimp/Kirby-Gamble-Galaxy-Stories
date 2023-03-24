///@description Main

//Invincibility

hurtable = (attackState != 0);

//Event Inherited

event_inherited();

//Friction

if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);

if (!childPause)
{
	//Get Inhaled
	
	if (attackState == 0)
	{
		if (place_meeting(x,y,obj_InhaleMask))
		{
			shakeX = 2;
		}
		else
		{
			shakeX = 0;
		}
	}
	else
	{
		sprHurt = sprHurtInhale;
		if (!parasol) scr_Object_Inhale(enemy);
	}
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//States
	
	switch (state)
	{
		//Stand Still
		
		case 0:
		//Animation
		
		image_speed = 1;
		
		if (attackState == 0)
		{
			if (shellAnimation)
			{
				sprite_index = sprClose;
			}
			else
			{
				sprite_index = sprIdle;
			}
		}
		else
		{
			if (shellAnimation)
			{
				sprite_index = sprOpen;
			}
			else
			{
				if (attackState == 1)
				{
					sprite_index = sprReady;
				}
				else
				{
					sprite_index = sprAttack;
				}
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
			attackState += 1;
			shellAnimation = true;
			image_index = 0;
			attackTimer = 45;
			break;
			
			case 1:
			attackState += 1;
			if (audio_is_playing(snd_EnemyBeam)) audio_stop_sound(snd_EnemyBeam);
			sndBeam = audio_play_sound(snd_EnemyBeam,0,false);
			attackTimer = 75;
			for (var i = 0; i < 4; i++)
			{
				var projBeam = instance_create_depth(-100,-100,depth,obj_Projectile_Beam);
				projBeam.owner = id;
				projBeam.angle = 90 + ((40 - (i * 10)) * -dirX);
				projBeam.spd = (1.2 + (i * .2)) * -dirX;
				projBeam.orbit = 20 + (i * 15);
				projBeam.enemy = true;
				projBeam.centerY = -4;
				projBeam.hurtsObject = false;
				projBeam.hurtsEnemy = false;
				projBeam.hurtsPlayer = true;
				projBeam.destroyableByWall = false;
				projBeam.destroyableByEnemy = false;
				projBeam.destroyableByObject = false;
				projBeam.hasLimit = false;
				projBeam.character = 8;
				projBeam.sprite_index = spr_Projectile_Beam_Wizzer;
				projBeam.pulseTarget = 1;
				projBeam.imageIndex = projBeam.image_index;
				projBeam.particleTimer = -1;
				projBeam.destroyTimer = 60;
				projBeam.pulseTimerMax = 2;
				projBeam.pulseTimer = projBeam.pulseTimerMax;
			}
			break;
			
			case 2:
			if (audio_is_playing(sndBeam)) audio_stop_sound(sndBeam);
			attackState = 0;
			shellAnimation = true;
			image_index = 0;
			attackTimer = attackTimerMax;
			break;
		}
	}
}
else
{
	image_speed = 0;
}