///@description Inhale State

function scr_Player_Inhale()
{
	if (!global.pause)
	{
		//Variables
		
		image_speed = 1;
		
		//Inhale Sound
		
		if ((!audio_is_playing(snd_Inhale_Intro)) and (!audio_is_playing(snd_Inhale_Loop)))
		{
			if (!inhaleSoundCont)
			{
			    audio_play_sound(snd_Inhale_Intro,0,false);
			    inhaleSoundCont = true;
			}
			else
			{
			    audio_play_sound(snd_Inhale_Loop,0,false);
			}
		}
		
		//Movement
		
		var ultiDecel = decel + .025;
		if (hsp >= ultiDecel) hsp -= ultiDecel;
		if (hsp <= -ultiDecel) hsp += ultiDecel;
		if ((hsp > -ultiDecel) and (hsp < ultiDecel)) hsp = 0;
		
		if (vsp < gravLimitNormal)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimitNormal;
		}
		
		if (jumpLimit) vsp = max(vsp,-jumpspeed / 4);
		
		//Change to Normal
		
		if ((inhaleSoundCont) and (!keyAttackHold) and (inhaling) and (!instance_exists(obj_EatMe)))
		{
			inhaleSoundCont = false;
			if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
			if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
		    state = playerStates.normal;
		}
		
		if (inhaling)
		{
			sprite_index = sprInhale;
		}
		else
		{
			sprite_index = sprInhaleReady;
		}
		
		//Collision
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}