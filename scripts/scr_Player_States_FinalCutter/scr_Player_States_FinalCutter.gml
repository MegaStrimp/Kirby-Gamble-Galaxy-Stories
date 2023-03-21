///@description Cleaving Cutter, Nonstop Cutter, and Final Cutter

function scr_Player_States_FinalCutter(){
	if (!global.pause)
	{	
		switch(finalCutterState){
			case 1: // Cleaving Cutter
				//Gravity
		
				if (vsp < gravLimitNormal)
				{
					vsp += grav;
				}
				else
				{
					vsp = gravLimitNormal;
				}
				
				// move the player forward a tiny bit and spawn a hitbox
				//hsp = 2*dir;
				if(attackTimer > 2){
					if (!place_meeting(x + dir,y,obj_Wall)) hsp += 0.3*dir;
				}
				
				//if(attackTimer <= 5 && keyAttackPressed){
				//	//if (instance_exists(cleavingCutterMaskProj)) instance_destroy(cleavingCutterMaskProj);
				//	//var nonstopCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
				//	//nonstopCutterMaskProj.owner = id;
				//	//nonstopCutterMaskProj.abilityType = playerAbilities.cutter;
				//	//nonstopCutterMaskProj.dmg = 16;
				//	sprite_index = sprCutterAttack2;
				//	image_index = 0;
				//	attackTimer = 0;
				//	finalCutterState++;
				//}
				
				if(attackTimer <= 2){
					image_index = 1;
				}
				break;
			case 2: // Nonstop Cutter
				if (vsp < gravLimitNormal)
				{
					vsp += grav;
				}
				else
				{
					vsp = gravLimitNormal;
				}
				
				if(attackTimer > 2){
					if (!place_meeting(x + dir,y,obj_Wall)) hsp = 0.3*dir;
				}
				
				//if(attackTimer <= 5 && keyAttackPressed){
				//	//if (instance_exists(nonstopCutterMaskProj)) instance_destroy(nonstopCutterMaskProj);
				//	//var finalCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
				//	//finalCutterMaskProj.owner = id;
				//	//finalCutterMaskProj.abilityType = playerAbilities.cutter;
				//	//finalCutterMaskProj.dmg = 22;
				//	sprite_index = sprNinjaCharge;
				//	image_index = 0;
				//	attackTimer = 0;
				//	finalCutterState++;
				//}
				
				if(attackTimer <= 2){
					image_index = 1;
				}
				break;
			case 3: // Final Cutter
				if(attackTimer > (5940-5)){
					image_index = 0;
				}else if(attackTimer <= finalCutterEndlag){
					image_index = 6;
				}else if(vsp < 0 && vsp > -5){
					image_index = 2;
					image_speed = 2;
				}else if(vsp < 0){
					image_index = 1;
				}
				
				if(image_index == 5){
					image_speed = 0;
				}
			
				var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
				afterimage.owner = id;
				afterimage.sprite_index = sprCutterAttack6;
				afterimage.image_xscale = image_xscale;
				afterimage.image_alpha = .5;
				afterimage.paletteIndex = paletteIndex;
				if(attackTimer > (5940-5)){
					if (!place_meeting(x + dir,y,obj_Wall)) hsp+=1*dir;
					if(attackTimer > (5940-10)){
						vsp = -10;
					}
				}else if(vsp < 0){
					hsp = 0;
					vsp = clamp(vsp+0.6,-15,0);
				
					if(vsp >= 0){
						vsp = 16;
						
						//just until we can disable Kirby's collision with the level temporarily do we need this bit of code:
						//while(place_meeting(x,y-1,obj_Wall)){
							//y++;
						//}
					}
				}else if (attackTimer > finalCutterEndlag){
					hsp = 0;
					vsp = 16;
					if(grounded) and ((y >= finalCutterStartingY - 12) and (vsp > 0) and ((!place_meeting(x,y,obj_Wall)) or (!finalCutterCheckInsideCollision))){
						audio_play_sound(snd_FinalCutter,0,false);
						attackTimer = finalCutterEndlag;
						vsp = 0;
						
						var finalCutterSlash = instance_create_depth(x,y - 5,depth,obj_Projectile_FinalCutterSlash);
						finalCutterSlash.owner = id;
						finalCutterSlash.abilityType = playerAbilities.cutter;
						finalCutterSlash.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
						finalCutterSlash.dmg = kirby_CutterFinalCutterProjectile_Damage;
						scr_Attack_SetKnockback(finalCutterSlash,kirby_CutterFinalCutterProjectile_Strength,kirby_CutterFinalCutterProjectile_HitStopAffectSource,kirby_CutterFinalCutterProjectile_HitStopAffectPlayer,kirby_CutterFinalCutterProjectile_HitStopAffectTarget,kirby_CutterFinalCutterProjectile_HitStopLength,kirby_CutterFinalCutterProjectile_HitStopShakeStrength);
						finalCutterSlash.sprite_index = finalCutterSlash.sprIdle;
						finalCutterSlash.hsp = dir * finalCutterSlash.decelMax;
						finalCutterSlash.dirX = dir;
						finalCutterSlash.image_xscale = finalCutterSlash.dirX;
						finalCutterSlash.enemy = false;
						finalCutterSlash.player = player;
						finalCutterSlash.destroyableByWall = false;
						finalCutterSlash.destroyableByEnemy = false;
						finalCutterSlash.destroyableByObject = false;
					}
				}
				break;
			//default:
			//	break;
		}
		
		image_speed = 1;
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.finalCutter) or (hurt)) attackTimer = 0;
		
		//Collision
		
		if ((finalCutterState != 3) or ((finalCutterState == 3) and (y >= finalCutterStartingY - 12) and (vsp > 0) and ((!place_meeting(x,y,obj_Wall)) or (!finalCutterCheckInsideCollision))))
		{
			scr_Player_Collision(playerMechs.none);
		}
		else
		{
			x += hsp;
			y += vsp;
		}
	}
	else
	{
		image_speed = 0;
	}
}