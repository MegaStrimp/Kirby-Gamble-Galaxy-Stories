///@description Player - Attack Passive - Sleep Normal

function scr_Player_AttackPassive_SleepNormal()
{
	#region Play Sound Effect
	if ((sprite_index = sprSleep) and (floor(image_index) == 1))
	{
		if (audio_is_playing(snd_Sleep)) audio_stop_sound(snd_Sleep);
		audio_play_sound(snd_Sleep,0,false);
	}
	#endregion
	
	#region Hat Throw Particle
	if ((sprite_index = sprSleepEnd) and (sleepHatParticle) and (floor(image_index) == 1))
	{
		var par = instance_create_depth(x,y,depth + 1,obj_Particle);
		par.sprite_index = spr_Particle_SleepHat;
		par.vsp = -3;
		par.grav = .2;
		par.gravLimit = 3;
		par.hasGravity = true;
		par.destroyAfterAnimation = true;
		par.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
		par.paletteIndex = 1;
		sleepHatParticle = false;
	}
	
	#region Cancel Attack
	if (hurt) attackTimer = 0;
	#endregion
	#endregion
}