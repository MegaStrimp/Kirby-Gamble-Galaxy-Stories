///@description Execute Attack - Ice Grab
///@param {real} grabEnemy Grab Enemy

function scr_Player_ExecuteAttack_IceGrab(argument0)
{
	#region Arguments
	var grabEnemy = argument0;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
	audio_play_sound(snd_Guard,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.iceGrab;
	state = playerStates.iceGrab;
	invincible = true;
	hsp = 0;
	iceGrab = false;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprIceGrabReady;
	image_index = 0;
	#endregion
	
	#region Kill Off The Grabbed Enemy
	grabEnemy.hasDeathParticles = false;
	grabEnemy.death = true;
	#endregion
}