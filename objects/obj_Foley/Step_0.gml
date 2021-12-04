///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdleNormal = spr_Foley_Normal_Idle;
		sprIdleExplodeReady = spr_Foley_Normal_Idle_ExplodeReady;
		sprIdleExplode = spr_Foley_Normal_Idle_Explode;
		sprWalkNormal = spr_Foley_Normal_Walk;
		sprWalkExplodeReady = spr_Foley_Normal_Walk_ExplodeReady;
		sprWalkExplode = spr_Foley_Normal_Walk_Explode;
		sprHurtIdle = spr_Foley_Normal_Hurt_Idle;
		sprHurtAttack = spr_Foley_Normal_Hurt_Attack;
		sprHurt = sprHurtIdle;
		sprLeaf = spr_Foley_Normal_Leaf;
		break;
	}
}

//Variables

if (sign(hsp) == 0)
{
	sprIdle = sprIdleNormal;
	sprExplodeReady = sprIdleExplodeReady;
	sprExplode = sprIdleExplode;
}
else
{
	sprIdle = sprWalkNormal;
	sprExplodeReady = sprWalkExplodeReady;
	sprExplode = sprWalkExplode;
}

if (attack)
{
	sprHurt = sprHurtAttack;
}
else
{
	sprHurt = sprHurtIdle;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Stand Still
		
		case 0:
		//Movement
		
		if (!attack)
		{
			scr_AI_VerticalWaveMovement(false);
			
			//Trigger
			
			with (obj_Player)
			{
				if ((x <= other.x + 24) and (x >= other.x - 24)) other.attackTimer = 0;
			}
		}
		else
		{
			//Explode
			
			if (place_meeting(x,y + 1,collisionY))
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
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				if (attackState == 1)
				{
					sprite_index = sprExplodeReady;
				}
				else
				{
					sprite_index = sprExplode;
				}
			}
			else
			{
				sprite_index = sprIdle;
			}
		}
		break;
		
		//Horizontal Straight Movement
		
		case 1:
		//Movement
		
		if (!attack)
		{
			scr_AI_VerticalWaveMovement(false);
			scr_AI_HorizontalStraightMovement(true,false);
			
			//Trigger
			
			with (obj_Player)
			{
				if ((x <= other.x + 24) and (x >= other.x - 24)) other.attackTimer = 0;
			}
		}
		else
		{
			//Explode
			
			if (place_meeting(x,y + 1,collisionY))
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
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				if (attackState == 1)
				{
					sprite_index = sprExplodeReady;
				}
				else
				{
					sprite_index = sprExplode;
				}
			}
			else
			{
				sprite_index = sprIdle;
			}
		}
		break;
	}
	
	//Squish
	
	scaleOffset += (.01 * scaleDir);
	if ((abs(scaleOffset) >= .1)) scaleDir *= -1;
	
	scaleExX = scaleOffset;
	scaleExY = -scaleOffset;
	
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
			var leaf = instance_create_depth(x,y,depth + 1,obj_FoleyLeaf);
			leaf.sprite_index = sprLeaf;
			attack = true;
			attackState = 1;
			attackTimer = attackTimerMax;
			break;
			
			case 1:
			jumpspeed = 4;
			gravNormal = .2;
			gravLimitNormal = 5;
			hasGravity = true;
			attackState = 2;
			attackTimer = -1;
			break;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}