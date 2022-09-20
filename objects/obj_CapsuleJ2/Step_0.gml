/// @description Enemy behaviors and animations
// You can write your code in this editor
//@description Main

//Characters

if (setupTimer == 0)
{
    switch (character)
    {
        //Normal

        case 0:
        sprWalk = spr_CapsuleJ2_Normal_Walk;
        sprDashStart = spr_CapsuleJ2_Normal_DashStart;
        sprHover1 = spr_CapsuleJ2_Normal_Hover1;
        sprHover2 = spr_CapsuleJ2_Normal_Hover2;
        sprJetDash = spr_CapsuleJ2_Normal_JetDash;
        sprHurt = spr_CapsuleJ2_Normal_Hurt;
        break;
    }
}

//Event Inherited

event_inherited();

if((!global.cutscene) and (!global.pause) and (pausedInCutscenes)){
	var playerObj = instance_find(tracking_obj,0);
	
	action_timer = clamp(action_timer-1,0,9999);
	
	//switch(current_action){
	//	case enemyAttacks.capsuleJ2_hovering:
	//		if(track_x){
	//			dir_to_player = sign(playerObj.x - x);
	//			if(dir_to_player != dirX && dir_to_player != 0){
	//				dirX = dir_to_player;
	//				if(hsp < 2.25 && hsp > 0){
	//					hsp = 2.25;
	//				}else if(hsp > -2.25 && hsp < 0){
	//					hsp = -2.25;
	//				}
	//				hsp = -hsp;
	//			}
	//			if(image_xscale != dirX){
	//				image_xscale = dirX;
	//			}
			
	//			if(distance_to_point(playerObj.x,playerObj.y) < tracking_range/2){
	//				hsp=clamp(hsp-(h_accel),0,h_maxspeed);
	//			}else if(distance_to_point(playerObj.x,playerObj.y) < tracking_range){
	//				hsp=clamp(hsp-(h_accel),h_maxspeed/2,h_maxspeed);
	//			}else{
	//				hsp=clamp(hsp+(h_accel),-h_maxspeed,h_maxspeed);
	//			}
	//		}		
	//		if(track_y){
	//			player_height = sign(y - (playerObj.y+20));
				
	//			hover_dir = player_height;
			
	//			if(player_height >= 0){
	//				vsp=clamp(vsp-jumpSpeed,-ascendMax,gravLimit);
	//			}else{
	//				vsp=clamp(vsp+grav,-ascendMax,gravLimit);
	//			}
	//		}
	//		if(vsp == gravLimit){
	//			vsp = -1.25;
	//		}
	//		if(action_timer <= 0){
	//			// either jump, start hovering, or continue walking toward the player
	//			new_action_time = random_range(80,140);
	//			action_roll = random_range(0,100);
	//			new_action = enemyAttacks.capsuleJ2_hovering;
	//			if(action_roll > 85){
	//				new_action = enemyAttacks.capsuleJ2_walking;
	//			}
				
	//			current_action = new_action;
	//			action_timer = new_action_time;
	//			if(current_action == enemyAttacks.capsuleJ2_hovering){
	//				can_rocketdash = true;
	//			}
				
	//			dir_to_player = sign(playerObj.x - x);
	//			if(dir_to_player != dirX && dir_to_player != 0){
	//				dirX = dir_to_player;
	//				hsp = -hsp;
	//			}
	//			if(image_xscale != dirX){
	//				image_xscale = dirX;
	//			}
	//		}
	//		if(can_rocketdash){
	//			if(distance_to_point(playerObj.x,y) < tracking_range){
	//				if(tracking_obj.y < y/*+v_range*2*/ && tracking_obj.y > y-v_range/*/2*/){
	//					action_timer = 35;
	//					current_action = enemyAttacks.capsuleJ2_dashStart;
	//					can_rocketdash = false;
	//				}
	//			}
	//		}
	//		break;
	//	case enemyAttacks.capsuleJ2_dashStart:
	//		hsp = -1.05;
	//		vsp = -0.12;
	//		if(action_timer <= 0){
	//			action_timer = 35+12;
	//			hsp = 4.85;
	//			current_action = enemyAttacks.capsuleJ2_jetDash;
	//		}
	//		break;
	//	case enemyAttacks.capsuleJ2_jetDash:
	//		if(action_timer <= 18){
	//			hsp = clamp(hsp-0.85,0,5);
	//		}
	//		vsp = 0;
	//		if(action_timer <= 0){
	//			action_timer = 80;
	//			vsp = 1.45;
	//			current_action = enemyAttacks.capsuleJ2_hovering;
	//			can_rocketdash = false;
	//		}
	//		break;
	//	case enemyAttacks.capsuleJ2_bounceBack:
	//		vsp=clamp(vsp+grav,-ascendMax,gravLimit);
	//		break;
	//	default:
	//		hsp = 1;
	//		if(!place_meeting(x,y+3,coll_obj)){
	//			vsp = clamp(vsp+grav,-ascendMax,gravLimit);
	//		}else{
	//			if(vsp > 0){
	//				vsp = 0;
	//			}
	//		}
	//		if(action_timer <= 0 && has_landed){
	//			// either jump, start hovering, or continue walking toward the player
	//			new_action_time = random_range(80,140);
	//			action_roll = random_range(0,100);
	//			new_action = enemyAttacks.capsuleJ2_hovering;
	//			if(action_roll > 70){
	//				new_action = enemyAttacks.capsuleJ2_walking;
	//			}
				
	//			current_action = new_action;
	//			action_timer = new_action_time;
	//			//if(current_action == "hovering"){
	//			//	can_rocketdash = true;
	//			//}
				
	//			dir_to_player = sign(playerObj.x - x);
	//			if(dir_to_player != dirX && dir_to_player != 0){
	//				dirX = dir_to_player;
	//				//hsp = -hsp;
	//			}
	//			if(image_xscale != dirX){
	//				image_xscale = dirX;
	//			}
				
	//			if(current_action == enemyAttacks.capsuleJ2_hovering){
	//				vsp = -1;
	//				has_landed = false;
	//			}
	//		}
	//		break;
	//}
	switch(current_action){
		case enemyAttacks.capsuleJ2_hovering:			
			// Horizontal Movement
			dirX = sign(playerObj.x - x);
			
			if(distance_to_point(playerObj.x,playerObj.y) > tracking_range){
				hsp = clamp(hsp+(hAccel*dirX),-hMax,hMax);
			}else{
				if(hsp > 0){
					hsp = clamp(hsp-hAccel,0,hMax);
				}else if(hsp < 0){
					hsp = clamp(hsp-hAccel,-hMax,0);
				}
			}
			
			// Vertical Movement
			var player_height = 0;
			if(playerObj.grounded){
				player_height = sign(y - (playerObj.y-20));
			}else{
				player_height = sign(y - (playerObj.y));
			}
			
			if(player_height >= 0){
				vsp=clamp(vsp-jumpSpeed,-ascendMax,gravLimitNormal);
			}
			
			// Hovering up after falling for a bit
			if(vsp == gravLimit){
				vsp = -1.25;
			}
			
			break;
		//case enemyAttacks.capsuleJ2_dashStart:
		//	break;
		//case enemyAttacks.capsuleJ2_jetDash:
		//	break;
		//case enemyAttacks.capsuleJ2_bounceBack:
		//	break;
		default:
			break;
	}
	
	//x += hsp*dirX;	
	//y += vsp;
	//}

	// Animations handled here
	switch(current_action){
		case enemyAttacks.capsuleJ2_hovering:
			sprite_index = sprHoverRise;
			//if(hover_dir < 0){
			if(vsp >= 0){
				sprite_index = sprHoverFall;
			}
			break;
		case enemyAttacks.capsuleJ2_dashStart:
			sprite_index = sprDashStart;
			break;
		case enemyAttacks.capsuleJ2_jetDash:
			sprite_index = sprJetDash;
			if(hsp <= 1){
				sprite_index = sprDashStart;
			}
			break;
		case enemyAttacks.capsuleJ2_bounceBack:
			sprite_index = sprHurt;
			break;
		default:
			if(has_landed){
				sprite_index = sprWalk;
			}else{
				sprite_index = sprHoverRise;
			}
			break;
	}
}