///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Searches_Normal_Idle;
		sprCharge = spr_Searches_Normal_Charge;
		sprHurt = spr_Searches_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Trigger Charge
	
	if ((!charge) and ((instance_exists(obj_Player)) and (distance_to_object(obj_Player) < 90)))
	{
		if (audio_is_playing(snd_SearchesActive)) audio_stop_sound(snd_SearchesActive);
		audio_play_sound(snd_SearchesActive,0,false);
		charge = true;
		explodeTimer = explodeTimerMax;
	}
	
	//Scale Ex
	
	var scaleSpd = scaleExTempSpd;
	if (charge) scaleSpd = scaleExTempSpdMax;
	
	scaleExTemp += scaleSpd * scaleExTempDir;
	
	if (abs(scaleExTemp) > scaleExTempMax)
	{
		scaleExTemp = scaleExTempMax * scaleExTempDir;
		scaleExTempDir *= -1;
	}
	
	scaleExX = scaleExTemp;
	scaleExY = scaleExTemp;
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else
	{
		if (charge)
		{
			sprite_index = sprCharge;
		}
		else
		{
			sprite_index = sprIdle;
		}
	}
	
	//Explode Timer
	
	if (explodeTimer > 0)
	{
		explodeTimer -= 1;
	}
	else if (explodeTimer == 0)
	{
		hasDeathParticles = false;
		hasDeathKnockback = false;
		
		if (audio_is_playing(snd_SearchesExplode)) audio_stop_sound(snd_SearchesExplode);
		audio_play_sound(snd_SearchesExplode,0,false);
		
		var par = instance_create_depth(x,y,depth,obj_Projectile_ExplosionMask);
		par.owner = id;
		par.enemy = true;
		
		var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
		explosion.state = "explosion1";
		death = true;
		explodeTimer = -1;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}