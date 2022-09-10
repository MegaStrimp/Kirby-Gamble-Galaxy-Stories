///@description Cleaving Cutter, Nonstop Cutter, and Final Cutter

function scr_Player_States_FinalCutter(){
	if(!global.pause){
		fc_state = 0; // whether the current attack is Cleaving Cutter, Nonstop Cutter, or Final Cutter
	
		switch(fc_state){
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
				break;
			case 1: // Nonstop Cutter
				break;
			case 2: // Final Cutter
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