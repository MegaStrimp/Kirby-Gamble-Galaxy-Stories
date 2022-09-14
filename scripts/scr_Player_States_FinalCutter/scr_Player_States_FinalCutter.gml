///@description Cleaving Cutter, Nonstop Cutter, and Final Cutter

function scr_Player_States_FinalCutter(){
	if(!global.pause){	
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
					hsp += 0.3*dir;
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
					hsp = 0.3*dir;
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
				break;
			case 3: // Final Cutter
				if(attackTimer > (5940-5)){
					image_index = 0;
				}else if(attackTimer <= finalCutterEndlag){
					image_index = 6;
				}else if(vsp < 0){
					image_index = 1;
				}else{
					image_index = 5;
				}
			
				var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
				afterimage.owner = id;
				afterimage.sprite_index = sprCutterAttack6;
				afterimage.image_xscale = image_xscale;
				afterimage.image_alpha = .5;
				afterimage.paletteIndex = paletteIndex;
				if(attackTimer > (5940-5)){
					hsp+=1*dir;
				}else if(attackTimer > (5940-15)){
					hsp = 0;
					vsp = -12;
				}else if (attackTimer > finalCutterEndlag){
					hsp = 0;
					vsp = 16;
					if(grounded && vsp > 0){
						audio_play_sound(snd_FinalCutter,0,false);
						attackTimer = finalCutterEndlag;
						vsp = 0;
					}
				}
				break;
			//default:
			//	break;
		}
		
		//image_speed = 1;
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.finalCutter) or (hurt)) attackTimer = 0;
		
		//Collision
		
		//if(finalCutterState != 3){
			scr_Player_Collision(playerMechs.none);
		//}else{
		//	x += hsp;
			//y += vsp;
		//}
	}
}