///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprCalmIdle = spr_Scarfy_Normal_CalmIdle;
		sprCalmFly = spr_Scarfy_Normal_CalmFly;
		sprCalmHurt = spr_Scarfy_Normal_CalmHurt;
		sprMadFly = spr_Scarfy_Normal_MadFly;
		sprMadHurt = spr_Scarfy_Normal_MadHurt;
		break;
		sprHurt = sprCalmHurt;
	}
}

//Hurt Sprite

if (attack)
{
	sprHurt = sprMadHurt;
}
else
{
	sprHurt = sprCalmHurt;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (place_meeting(x,y,obj_InhaleMask))
	{
		if (!attack)
		{
			particleCount = 0;
			particleTimer = 0;
			attack = true;
			hp = 1;
			imageSpeed = .5;
		}
		shakeX = 2;
		shakeY = 2;
	}
	else
	{
		shakeX = 0;
		shakeY = 0;
	}
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Vertical Wave Movement with Horizontal Straight Movement
		
		case 0:
		//Follow Player
		
		if (instance_exists(obj_Player))
		{
			var nearestPlayer = instance_nearest(x,y,obj_Player);
			if (nearestPlayer.x < x)
			{
				dirX = -1;
			}
			else
			{
				dirX = 1;
			}
		}
		break;
	}
	
	if (attack)
	{
		if (attackState == 0)
		{
			shakeX = 2;
			shakeY = 2;
			hsp = .5 * -dirX;
			vsp = 0;
			if (imageSpeed < 2)
			{
				imageSpeed += .02;
			}
			else if (imageSpeed >= 2)
			{
				imageSpeed = 2;
				attackState = 1;
			}
		}
		else if (attackState == 1)
		{
			hsp = 0;
			scr_AI_FollowsPlayer(true,false);
		}
		else if (attackState == 2)
		{
			shakeX = 2;
			shakeY = 2;
			vsp = 0;
			if (imageSpeed < 3)
			{
				imageSpeed += .02;
			}
			else if (imageSpeed >= 3)
			{
				if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
				audio_play_sound(snd_Explosion1,0,false);
				
				var par = instance_create_depth(x,y,depth,obj_Projectile_ExplosionMask);
				par.owner = id;
				par.enemy = true;
				
				var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
				explosion.state = "explosion1";
				
				hasDeathKnockback = false;
				hasDeathParticles = false;
				death = true;
			}
		}
		
		//Particle Timer
		
		if (particleTimer > 0)
		{
			particleTimer -= 1;
		}
		else if (particleTimer == 0)
		{
			particleCount += 1;
			var par = instance_create_depth(x + (12 * choose(-1,1)),y + (12 * choose(-1,1)),depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Shine1;
			par.destroyAfterAnimation = true;
			par.pausable = false;
			if (particleCount >= 3)
			{
				particleTimer = -1;
			}
			else
			{
				particleTimer = particleTimerMax;
			}
		}
		
		//Attack Timer
		
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			invincible = true;
			invincibleFlashTimer = invincibleFlashTimerMax;
			attackState = 2;
			attackTimer = -1;
		}
	}
	else
	{
		if (hurt)
		{
			particleCount = 0;
			particleTimer = 0;
			attack = true;
			imageSpeed = .5;
		}
		scr_AI_VerticalWaveMovement(false);
	}
	
	if ((hurt) and (sprHurt != -1))
	{
		image_speed = 1 * imageSpeed;
		sprite_index = sprHurt;
	}
	else
	{
		image_speed = 1;
		
		if (attack)
		{
			sprite_index = sprMadFly;
		}
		else
		{
			if (sign(hsp) > 0)
			{
				sprite_index = sprCalmFly;
			}
			else
			{
				sprite_index = sprCalmIdle;
			}
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}