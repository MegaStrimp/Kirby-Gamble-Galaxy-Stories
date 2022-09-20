/// @description Draw Jet Flame and Smoke
// You can write your code in this editor

stored_sprite = sprite_index;
stored_subimg = image_index;

jet_flametime++;

switch(current_action){
	case enemyAttacks.capsuleJ2_hovering:
		if(jet_flametime >= 4){
			jet_flametime = 0;
		}
		if(vsp < 0){
			switch(jet_flametime){
				case 0:
					draw_sprite_ext(parJetSmoke,0,x,y,dirX,1,0,c_white,1);
					break;
				case 1:
					draw_sprite_ext(parJetSmoke,0,x,y+15,dirX,1,0,c_white,1);
					break;
				case 2:
					draw_sprite_ext(parJetSmoke,0,x,y+30,dirX,1,0,c_white,1);
					break;
				case 3:
					draw_sprite_ext(parJetSmoke,1,x,y+45,dirX,1,0,c_white,1);
					break;
				default:
					break;
			}
		}
		break;
	case enemyAttacks.capsuleJ2_dashStart:
		if(jet_flametime >= 3){
			jet_flametime = 0;
		}
		switch(jet_flametime){
			case 0:
				draw_sprite_ext(parJetFire,0,x,y,dirX,1,0,c_white,1);
				break;
			case 1:
				draw_sprite_ext(parJetSmoke,0,x+(4*dirX),y+3,dirX,1,0,c_white,1);
				break;
			case 2:
				draw_sprite_ext(parJetSmoke,1,x+(6*dirX),y+6,dirX,1,0,c_white,1);
				break;
			default:
				break;
		}
		break;
	case enemyAttacks.capsuleJ2_jetDash:
		if(hsp <= 1){
			if(jet_flametime >= 3){
				jet_flametime = 0;
			}
			switch(jet_flametime){
				case 0:
					draw_sprite_ext(parJetFire,0,x,y,dirX,1,0,c_white,1);
					break;
				case 1:
					draw_sprite_ext(parJetSmoke,0,x+(4*dirX),y+3,dirX,1,0,c_white,1);
					break;
				case 2:
					draw_sprite_ext(parJetSmoke,1,x+(6*dirX),y+6,dirX,1,0,c_white,1);
					break;
				default:
					break;
			}
		}else{
			if(jet_flametime >= 4){
				jet_flametime = 0;
			}
			smoke_height = y-20;
			switch(jet_flametime){
				case 0:
					draw_sprite_ext(parJetFire,1,x-(10*dirX),smoke_height,dirX,1,0,c_white,1);
					break;
				case 1:
					draw_sprite_ext(parJetSmoke,0,x-((8*3)*dirX),smoke_height,dirX,1,0,c_white,1);
					break;
				case 2:
					draw_sprite_ext(parJetSmoke,0,x-((8*6)*dirX),smoke_height,dirX,1,0,c_white,1);
					break;
				case 3:
					draw_sprite_ext(parJetSmoke,1,x-(((8*9)+4)*dirX),smoke_height,dirX,1,0,c_white,1);
					break;
				default:
					break;
			}
		}
		break;
}

draw_sprite_ext(stored_sprite,stored_subimg,x,y,dirX,1,0,c_white,1);
