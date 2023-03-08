///@description Cutter Dash

function scr_Player_States_MysticBeamGrab()
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
		
		if ((mysticBeamGrabTimer == -1) and (keyAttackPressed))
		{
			if (audio_is_playing(snd_BeamDash)) audio_stop_sound(snd_BeamDash);
			mysticBeamGrabSfx = audio_play_sound(snd_BeamDash,0,false);
			sprite_index = sprBeamAttack3;
			image_index = 0;
			grabObj.direction = 90 + (-dir * 90);
			grabObj.spd = 5;
			grabObj.active = true;
			grabObj.particleTimer = grabObj.particleTimerMax;
			grabObj.destroyTimer = 30;
			mysticBeamGrabTimer = 0;
			attackTimer = 30;
		}
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.mysticBeamGrab) or (!instance_exists(grabObj))) attackTimer = 0;
		
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