///@description Spawn Mirror Shield
///@param {real} playerAbility Ability to check.

function scr_Player_SpawnMirrorShield(argument0)
{
	#region Arguments
	var playerAbility = argument0;
	#endregion
	
	#region Create Mirror Shield
	if ((mirrorShieldHp > 0) and (playerAbility == playerAbilities.mirror))
	{
		if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
		audio_play_sound(snd_Guard,0,false);
		var mirrorShield = instance_create_depth(x,y,depth - 1,obj_Projectile_MirrorShield);
		mirrorShield.owner = id;
	}
	#endregion
}