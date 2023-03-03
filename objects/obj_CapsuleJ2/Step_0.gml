/// @description Enemy behaviors and animations
// You can write your code in this editor
//@description Main

//Event Inherited

event_inherited();

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	var playerObj = instance_find(tracking_obj,0);
	
	action_timer = clamp(action_timer-1,0,9999);
	
	switch(current_action){
		case enemyAttacks.capsuleJ2_hovering:			
			// Horizontal Movement
			dirX = sign(playerObj.x - x);
			
			if(distance_to_point(playerObj.x,playerObj.y) > tracking_range){
				hsp = clamp(hsp+(hAccel*dirX),-hMax,hMax);
			}else{
				if(hsp > 0){
					hsp = clamp(hsp-(hAccel*dirX),0,hMax);
				}else if(hsp < 0){
					hsp = clamp(hsp-(hAccel*dirX),-hMax,0);
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
			if(action_timer <= 0){
				// either jump, start hovering, or continue walking toward the player
				var new_action_time = random_range(80,140);
				var action_roll = random_range(0,100);
				var new_action = enemyAttacks.capsuleJ2_hovering;
				if(action_roll > 85){
					new_action = enemyAttacks.capsuleJ2_walking;
				}
				last_action_roll = action_roll;
				
				current_action = new_action;
				action_timer = new_action_time;
				if(current_action == enemyAttacks.capsuleJ2_hovering){
					can_rocketdash = true;
				}
			}
			if(can_rocketdash){
				if(distance_to_point(playerObj.x,y) < tracking_range){
					if(tracking_obj.y < y/*+v_range*2*/ && tracking_obj.y > y-v_range/*/2*/){
						action_timer = 35;
						current_action = enemyAttacks.capsuleJ2_dashStart;
						can_rocketdash = false;
					}
				}
			}
			
			break;
		case enemyAttacks.capsuleJ2_dashStart:
			hsp = -1.05*dirX;
			vsp = -0.12;
			if(action_timer <= 0){
				action_timer = 35+12;
				hsp = 4.85*dirX;
				current_action = enemyAttacks.capsuleJ2_jetDash;
			}
			break;
		case enemyAttacks.capsuleJ2_jetDash:
			if(action_timer <= 18){
				if(dirX>0){
					hsp = clamp(hsp-(0.85*dirX),0,5);
				}else{
					hsp = clamp(hsp-(0.85*dirX),-5,0);
				}
			}
			vsp = 0;
			if(action_timer <= 0){
				action_timer = 80;
				vsp = 1.45;
				current_action = enemyAttacks.capsuleJ2_hovering;
				can_rocketdash = false;
			}
			if(place_meeting(x+hsp,y,collisionX)){
				hsp = -3*dirX;
				current_action = enemyAttacks.capsuleJ2_bounceBack;
			}
			break;
		case enemyAttacks.capsuleJ2_bounceBack:
			vsp=clamp(vsp+gravNormal,-ascendMax,gravLimit);
			if(place_meeting(x,y+1,collisionY)){
				vsp = -grav;
				current_action = enemyAttacks.capsuleJ2_hovering;
			}
			break;
		default:
			hsp = 1*dirX;
			
			if(action_timer <= 0){
				// either jump, start hovering, or continue walking toward the player
				var new_action_time = random_range(80,140);
				var action_roll = random_range(0,100);
				var new_action = enemyAttacks.capsuleJ2_hovering;
				if(action_roll > 70){
					new_action = enemyAttacks.capsuleJ2_walking;
					dirX = sign(playerObj.x - x);
				}
				last_action_roll = action_roll;
				
				current_action = new_action;
				action_timer = new_action_time;
				if(current_action == enemyAttacks.capsuleJ2_hovering){
					vsp = -jumpSpeed;
				}
			}
			break;
	}
	
	//x += hsp*dirX;	
	//y += vsp;
	//}

	//Animation
	
	image_speed = 1;
	jet_flametime++;
	
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
			if(hsp*dirX <= 1){
				sprite_index = sprDashStart;
			}
			break;
		case enemyAttacks.capsuleJ2_bounceBack:
			sprite_index = sprHurt;
			break;
		default:
			if(place_meeting(x,y+1,collisionY)){
				sprite_index = sprWalk;
			}else{
				sprite_index = sprHoverRise;
			}
			break;
	}
}
else
{
	image_speed = 0;
}