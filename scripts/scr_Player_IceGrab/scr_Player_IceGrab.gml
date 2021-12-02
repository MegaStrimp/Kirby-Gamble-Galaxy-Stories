///@description Cutter Dash

function scr_Player_IceGrab()
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
		
		if ((!iceGrab) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))))
		{
			sprite_index = sprIceGrabRelease;
			image_index = 0;
			invincible = false;
			iceGrab = true;
			if (audio_is_playing(snd_IceKick)) audio_stop_sound(snd_IceKick);
			audio_play_sound(snd_IceKick,0,false);
			var iceCube = instance_create_depth(x + (8 * dir),y,depth,obj_Projectile_IceCube);
			iceCube.dmg = 70;
			iceCube.dirX = dir;
			iceCube.state = 1;
			iceCube.hsp = iceCube.movespeed * dir;
			iceCube.flashTimer = -1;
			iceCube.flashStopTimer = -1;
			attackTimer = 15;
		}
		
		//Revert Back
		
		if ((attackNumber != "iceGrab") or (!instance_exists(grabObj))) attackTimer = 0;
		
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