///@description Execute Attack - Final Cutter

function scr_Player_ExecuteAttack_FinalCutter()
{
	#region Sound Effect
	if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
	audio_play_sound(snd_Slash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackNumber = playerAttacks.finalCutter;
	invincible = true;
	state = playerStates.finalCutter;
	cutterCatch = false;
	finalCutterState += 1;
	finalCutterReadInput = false;
	finalCutterStartingY = y;
	finalCutterCheckInsideCollision = !(place_meeting(x,y,obj_Wall));
	
	switch (finalCutterState)
	{
		case 1:
		sprite_index = sprCutterAttack4;
		image_index = 0;
		attackTimer = 6;
		finalCutterBuffer = 30;
		break;
		
		case 2:
		sprite_index = sprCutterAttack5;
		image_index = 0;
		attackTimer = 6;
		finalCutterBuffer = 25;
		break;
		
		case 3:
		sprite_index = sprCutterAttack6;
		image_index = 0;
		attackTimer = 5940;
		finalCutterBuffer = 0;
		invincible = true;
		if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
		break;
	}
	#endregion
	
	#region Final Cutter Mask
	switch (finalCutterState)
	{
		case 1: 
		var cleavingCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CleavingCutterMask);
		cleavingCutterMaskProj.owner = id;
		cleavingCutterMaskProj.abilityType = playerAbilities.cutter;
		cleavingCutterMaskProj.dmg = kirby_CutterFinalCutter1_Damage;
		scr_Attack_SetKnockback(cleavingCutterMaskProj,kirby_CutterFinalCutter1_Strength,kirby_CutterFinalCutter1_HitStopAffectSource,kirby_CutterFinalCutter1_HitStopAffectPlayer,kirby_CutterFinalCutter1_HitStopAffectTarget,kirby_CutterFinalCutter1_HitStopLength,kirby_CutterFinalCutter1_HitStopShakeStrength);
		break;
		
		case 2: 
		var nonstopCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_NonstopCutterMask);
		nonstopCutterMaskProj.owner = id;
		nonstopCutterMaskProj.abilityType = playerAbilities.cutter;
		nonstopCutterMaskProj.dmg = kirby_CutterFinalCutter2_Damage;
		scr_Attack_SetKnockback(nonstopCutterMaskProj,kirby_CutterFinalCutter2_Strength,kirby_CutterFinalCutter2_HitStopAffectSource,kirby_CutterFinalCutter2_HitStopAffectPlayer,kirby_CutterFinalCutter2_HitStopAffectTarget,kirby_CutterFinalCutter2_HitStopLength,kirby_CutterFinalCutter2_HitStopShakeStrength);
		break;
		
		case 3: 
		if (attackTimer > (5940 - 15))
		{
			// rising slash
			var finalCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FinalCutterRisingSlashMask);
			finalCutterMaskProj.owner = id;
			finalCutterMaskProj.abilityType = playerAbilities.cutter;
			finalCutterMaskProj.dmg = kirby_CutterFinalCutter3_Damage; // make sure to create two additional hitboxes, one for the falling slash and one for the shockwave, both dealing 32 damage.	
			scr_Attack_SetKnockback(finalCutterMaskProj,kirby_CutterFinalCutter3_Strength,kirby_CutterFinalCutter3_HitStopAffectSource,kirby_CutterFinalCutter3_HitStopAffectPlayer,kirby_CutterFinalCutter3_HitStopAffectTarget,kirby_CutterFinalCutter3_HitStopLength,kirby_CutterFinalCutter3_HitStopShakeStrength);	
		}
		else if (attackTimer > 5)
		{
			// falling slash
			var finalCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FinalCutterRisingSlashMask);
			finalCutterMaskProj.owner = id;
			finalCutterMaskProj.abilityType = playerAbilities.cutter;
			finalCutterMaskProj.dmg = kirby_CutterFinalCutter4_Damage; // make sure to create two additional hitboxes, one for the falling slash and one for the shockwave, both dealing 32 damage.	
			scr_Attack_SetKnockback(finalCutterMaskProj,kirby_CutterFinalCutter4_Strength,kirby_CutterFinalCutter4_HitStopAffectSource,kirby_CutterFinalCutter4_HitStopAffectPlayer,kirby_CutterFinalCutter4_HitStopAffectTarget,kirby_CutterFinalCutter4_HitStopLength,kirby_CutterFinalCutter4_HitStopShakeStrength);	
		}
		break;
	}
	#endregion
}