///@description Execute Attack - Fire Wheel
///@param {bool} hasMagicCharcoal Has Magic Charcoal

function scr_Player_ExecuteAttack_FireWheel(argument0)
{
	#region Arguments
	var hasMagicCharcoal = argument0;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
	audio_play_sound(snd_Fire2,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.fireWheel;
	attackTimer = 60;
	invincible = true;
	hspLimit = false;
	hsp = (movespeedBurst * (1 + (hasMagicCharcoal / 4))) * dir;
	fireLandWheel = false;
	fireReleaseTimer = 45;
	hspLimitTimer = 45;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprFireAttack3;
	image_index = 0;
	#endregion
	
	#region Fire Mask
	fireMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FireMask);
	fireMaskProj.owner = id;
	fireMaskProj.abilityType = playerAbilities.fire;
	fireMaskProj.sprite_index = sprFireAttack3;
	fireMaskProj.dmg = kirby_FireWheel_Damage;
	scr_Attack_SetKnockback(fireMaskProj,kirby_FireWheel_Strength,kirby_FireWheel_HitStopAffectSource,kirby_FireWheel_HitStopAffectPlayer,kirby_FireWheel_HitStopAffectTarget,kirby_FireWheel_HitStopLength,kirby_FireWheel_HitStopShakeStrength);
	fireMaskProj.image_xscale = image_xscale;
	fireMaskProj.image_yscale = image_yscale;
	#endregion
	
	#region Magic Charcoal Attack
	if (hasMagicCharcoal)
	{
		for (var i = 0; i < 4; i++)
		{
			var extra = instance_create_depth(x,y,depth + 1,obj_Projectile_FireExtra);
			extra.owner = id;
			extra.abilityType = playerAbilities.fire;
			extra.dmg = kirby_FireMagicCharcoalExtra_Damage;
			scr_Attack_SetKnockback(extra,kirby_FireMagicCharcoalExtra_Strength,kirby_FireMagicCharcoalExtra_HitStopAffectSource,kirby_FireMagicCharcoalExtra_HitStopAffectPlayer,kirby_FireMagicCharcoalExtra_HitStopAffectTarget,kirby_FireMagicCharcoalExtra_HitStopLength,kirby_FireMagicCharcoalExtra_HitStopShakeStrength);
			extra.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
			switch (i)
			{
				case 0:
				extra.hsp = 2;
				extra.vsp = -3;
				break;
				
				case 1:
				extra.hsp = 3;
				extra.vsp = -4;
				break;
				
				case 2:
				extra.hsp = -2;
				extra.vsp = -3;
				break;
				
				case 3:
				extra.hsp = -3;
				extra.vsp = -4;
				break;
			}
		}
	}
	#endregion
}