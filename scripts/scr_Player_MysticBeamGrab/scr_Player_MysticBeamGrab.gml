///@description Cutter Dash

function scr_Player_MysticBeamGrab()
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
		
		if ((mysticBeamGrabTimer == -1) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))))
		{
			if (audio_is_playing(snd_BeamDash)) audio_stop_sound(snd_BeamDash);
			audio_play_sound(snd_BeamDash,0,false);
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
		
		if ((attackNumber != "mysticBeamGrab") or (!instance_exists(grabObj))) attackTimer = 0;
		
		//Animation
		
		image_speed = 1;
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}