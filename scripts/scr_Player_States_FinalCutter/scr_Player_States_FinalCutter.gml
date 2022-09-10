///@description Cleaving Cutter, Nonstop Cutter, and Final Cutter

function scr_Player_States_FinalCutter(){
	if(!global.pause){	
		switch(finalCutterState){
			case 0: // Cleaving Cutter
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
				if(attackTimer > 5){
					x+=1*dir;
				}
				
				if(attackTimer <= 5 && keyAttackPressed){
					dmg = 16;
					sprite_index = sprCutterAttack2;
					image_index = 0;
					attackTimer = 10;
					finalCutterState++;
				}
				break;
			case 1: // Nonstop Cutter
				if (vsp < gravLimitNormal)
				{
					vsp += grav;
				}
				else
				{
					vsp = gravLimitNormal;
				}
				
				if(attackTimer <= 5 && keyAttackPressed){
					dmg = 16;
					sprite_index = sprNinjaCharge;
					image_index = 0;
					attackTimer = 30;
					finalCutterState++;
				}
				break;
			case 2: // Final Cutter
				var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
				afterimage.owner = id;
				afterimage.sprite_index = sprCutterAttack3;
				afterimage.image_xscale = image_xscale;
				afterimage.image_alpha = .5;
				afterimage.paletteIndex = paletteIndex;
				if(attackTimer > 20){
					y -= 8;
				}else if (attackTimer > 10){
					y += 8;
				}
				break;
			default:
				break;
		}
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.finalCutter) or (hurt)) attackTimer = 0;
		
		//Collision
		
		scr_Player_Collision(playerMechs.none);
	}
}