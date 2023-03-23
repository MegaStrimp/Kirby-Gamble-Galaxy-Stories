///@description Cutter Dash

function scr_Player_States_IceGrab()
{
	if (!global.pause)
	{
		//Gravity
		
		if (vsp < gravLimitNormal)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimitNormal;
		}
		
		//Decel
		
		hsp = scr_Friction(hsp,decel);
		
		//Attack
		
		if ((!iceGrab) and (keyAttackPressed))
		{
			sprite_index = sprIceGrabRelease;
			image_index = 0;
			invincible = false;
			iceGrab = true;
			if (audio_is_playing(snd_IceKick)) audio_stop_sound(snd_IceKick);
			audio_play_sound(snd_IceKick,0,false);
			var iceCube = instance_create_depth(x + (8 * dir),y,depth,obj_Projectile_IceCube);
			iceCube.owner = id;
			iceCube.abilityType = playerAbilities.ice;
			iceCube.dmg = kirby_IceGrab_Damage;
			scr_Attack_SetKnockback(iceCube,kirby_IceGrab_Strength,kirby_IceGrab_HitStopAffectSource,kirby_IceGrab_HitStopAffectPlayer,kirby_IceGrab_HitStopAffectTarget,kirby_IceGrab_HitStopLength,kirby_IceGrab_HitStopShakeStrength);
			iceCube.dirX = dir;
			iceCube.state = 1;
			iceCube.hsp = iceCube.movespeed * dir;
			iceCube.flashTimer = -1;
			iceCube.flashStopTimer = -1;
			attackTimer = 15;
		}
		
		//Revert Back
		
		if (attackNumber != playerAttacks.iceGrab) attackTimer = 0;
		
		//Animation
		
		image_speed = 1;
		
		scr_Player_Collision(playerMechs.none);
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}