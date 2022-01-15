///@description Main

//Inputs

scr_Player_Inputs(0);

//Pause

if ((!instance_exists(obj_Fade)) and (!cellphoneActive))
{
	if ((pauseDelay == 0) and (!instance_exists(obj_Pause_Fade)))
	{
		if (!global.pause)
		{
		    if (keyStartPressed)
		    {
				if ((gamePaused) and (visible))
				{
					if (audio_is_playing(snd_Unpause)) audio_stop_sound(snd_Unpause);
					audio_play_sound(snd_Unpause,0,false);
				}
				else
				{
					if (audio_is_playing(snd_Pause)) audio_stop_sound(snd_Pause);
					audio_play_sound(snd_Pause,0,false);
				}
		        if (!visible)
		        {
					page = 0;
					if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
		            var pauseFade = instance_create_depth(x,y,depth - 1,obj_Pause_Fade);
		            pauseFade.fade = 1;
		        }
		    }
		}
	}
    
    if ((visible) and (!gamePaused) and (deactivated))
    {
        instance_activate_all();
        deactivated = false;
        visible = false;
    }
}

pauseDelay = 0;