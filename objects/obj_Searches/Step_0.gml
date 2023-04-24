///@description Main

//Event Inherited

event_inherited();

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
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
		par.abilityType = playerAbilities.bomb;
		par.dmg = searches_Explosion_Damage;
		scr_Attack_SetKnockback(par,searches_Explosion_Strength,searches_Explosion_HitStopAffectSource,searches_Explosion_HitStopAffectPlayer,searches_Explosion_HitStopAffectTarget,searches_Explosion_HitStopLength,searches_Explosion_HitStopShakeStrength);
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
}