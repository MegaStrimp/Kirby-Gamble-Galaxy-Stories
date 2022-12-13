///@description Main

if (!global.pause)
{
	#region Sky Fade
	skyFadeAlpha = lerp(skyFadeAlpha,0,.02);
	#endregion
	
	#region State Timer
	if (stateTimer > 0)
	{
		stateTimer -= 1;
	}
	else if (stateTimer == 0)
	{
		switch (state)
		{
			case 0:
			if (audio_is_playing(snd_MysticBeamLaser)) audio_stop_sound(snd_MysticBeamLaser);
			audio_play_sound(snd_MysticBeamLaser,0,false);
			var wizzkidLaser = instance_create_depth(382,786,depth,obj_Projectile_WizzkidLaser);
			wizzkidLaser.image_angle = 90;
			wizzkidLaser.vertical = true;
			wizzkidLaser.hasRecoilStar = false;
			stateTimer = 30;
			break;
			
			case 1:
			if (audio_is_playing(snd_BeamBombExplode)) audio_stop_sound(snd_BeamBombExplode);
			audio_play_sound(snd_BeamBombExplode,0,false);
			with (obj_Camera)
			{
				shakeX = 3;
				shakeY = 3;
			}
			skyFadeAlpha = 1;
			stateTimer = 210;
			break;
			
			case 2:
			if (audio_is_playing(snd_MysticBeamLaser)) audio_stop_sound(snd_MysticBeamLaser);
			audio_play_sound(snd_MysticBeamLaser,0,false);
			var wizzkidLaser = instance_create_depth(922,786,depth,obj_Projectile_WizzkidLaser);
			wizzkidLaser.image_angle = 90;
			wizzkidLaser.vertical = true;
			wizzkidLaser.hasRecoilStar = false;
			stateTimer = 30;
			break;
			
			case 3:
			if (audio_is_playing(snd_BeamBombExplode)) audio_stop_sound(snd_BeamBombExplode);
			audio_play_sound(snd_BeamBombExplode,0,false);
			with (obj_Camera)
			{
				shakeX = 3;
				shakeY = 3;
			}
			skyFadeAlpha = 1;
			stateTimer = 15;
			break;
			
			case 4:
			with (obj_AsteroidFieldsBackgroundController)
			{
				meteorTimer = 0;
				boltTimer = 0;
				flashTimer = 0;
			}
			stateTimer = -1;
			break;
		}
		state += 1;
	}
	#endregion
}