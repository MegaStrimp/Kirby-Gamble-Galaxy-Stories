/// @description Main

if (!global.pause)
{
	current_tracking_obj = instance_find(tracking_obj,0);
	
	action_timer = clamp(action_timer-1,0,9999);
	switch(attackNumber)
	{
		case enemyAttacks.capsuleJ2_hovering:
		if (track_x)
		{
			dir_to_player = sign(current_tracking_obj.x - x);
			if (dir_to_player != spr_dir && dir_to_player != 0)
			{
				spr_dir = dir_to_player;
				if (h_speed < 2.25 && h_speed > 0)
				{
					h_speed = 2.25;
				}
				else if (h_speed > -2.25 && h_speed < 0)
				{
					h_speed = -2.25;
				}
				h_speed = -h_speed;
			}
			
			if (image_xscale != spr_dir) image_xscale = spr_dir;
			
			if (distance_to_point(current_tracking_obj.x,current_tracking_obj.y) < tracking_range / 2)
			{
				h_speed=clamp(h_speed-(h_accel),0,h_maxspeed);
			}
			else if (distance_to_point(current_tracking_obj.x,current_tracking_obj.y) < tracking_range)
			{
				h_speed=clamp(h_speed-(h_accel),h_maxspeed / 2,h_maxspeed);
			}
			else
			{
				h_speed=clamp(h_speed+(h_accel),-h_maxspeed,h_maxspeed);
			}
		}
		
		if (track_y)
		{
			player_height = sign(y - (current_tracking_obj.y + 20));
			
			hover_dir = player_height;
			
			if (player_height >= 0)
			{
				v_speed = clamp(v_speed-ascend_accel,-ascend_max,fall_max);
			}
			else
			{
				v_speed=clamp(v_speed+grav,-ascend_max,fall_max);
			}
		}
		
		if (v_speed == fall_max) v_speed = -1.25;
		
		if (action_timer <= 0)
		{
			new_action_time = random_range(80,140);
			action_roll = random_range(0,100);
			new_action = enemyAttacks.capsuleJ2_hovering;
			
			if (action_roll > 85)
			{
				new_action = "walking";
			}
			
			attackNumber = new_action;
			action_timer = new_action_time;
			
			if (attackNumber == enemyAttacks.capsuleJ2_hovering) can_rocketdash = true;
			
			dir_to_player = sign(current_tracking_obj.x - x);
			
			if (dir_to_player != spr_dir && dir_to_player != 0)
			{
				spr_dir = dir_to_player;
				h_speed = -h_speed;
			}
			
			if (image_xscale != spr_dir) image_xscale = spr_dir;
		}
		
		if (can_rocketdash)
		{
			if (distance_to_point(current_tracking_obj.x,y) < tracking_range)
			{
				if (tracking_obj.y < y && tracking_obj.y > y - v_range)
				{
					action_timer = 35;
					attackNumber = enemyAttacks.capsuleJ2_dashStart;
					can_rocketdash = false;
				}
			}
		}
		break;
		
		case enemyAttacks.capsuleJ2_dashStart:
		h_speed = -1.05;
		v_speed = -0.12;
		
		if (action_timer <= 0)
		{
			action_timer = 35 + 12;
			h_speed = 4.85;
			attackNumber = enemyAttacks.capsuleJ2_jetDash;
		}
		break;
		
		case enemyAttacks.capsuleJ2_jetDash:
		if (action_timer <= 18)
		{
			h_speed = clamp(h_speed-0.85,0,5);
		}
		
		v_speed = 0;
		
		if (action_timer <= 0)
		{
			action_timer = 80;
			v_speed = 1.45;
			attackNumber = enemyAttacks.capsuleJ2_hovering;
			can_rocketdash = false;
		}
		break;
		
		case enemyAttacks.capsuleJ2_bounceBack:
		v_speed=clamp(v_speed+grav,-ascend_max,fall_max);
		break;
		
		default:
		h_speed = 1;
		if (!place_meeting(x,y + 8,coll_obj))
		{
			v_speed = clamp(v_speed + grav,-ascend_max,fall_max);
		}
		else
		{
			if (v_speed > 0) v_speed = 0;
		}
		
		if (action_timer <= 0 && has_landed)
		{
			new_action_time = random_range(80,140);
			action_roll = random_range(0,100);
			new_action = enemyAttacks.capsuleJ2_hovering;
			
			if (action_roll > 70) new_action = "walking";
			
			attackNumber = new_action;
			action_timer = new_action_time;
			
			dir_to_player = sign(current_tracking_obj.x - x);
			
			if (dir_to_player != spr_dir && dir_to_player != 0) spr_dir = dir_to_player;
			
			if (image_xscale != spr_dir) image_xscale = spr_dir;
			
			if (attackNumber == enemyAttacks.capsuleJ2_hovering)
			{
				v_speed = -1;
				has_landed = false;
			}
		}
		break;
	}
	
	x += h_speed * spr_dir;	
	y += v_speed;
}

//Animation

switch (attackNumber)
{
	case enemyAttacks.capsuleJ2_hovering:
	sprite_index = spr_en_J2_hover2;
	//if(hover_dir < 0){
	if (v_speed >= 0)
	{
		sprite_index = spr_en_J2_hover1;
	}
	break;
	
	case enemyAttacks.capsuleJ2_dashStart:
	sprite_index = spr_en_J2_dashstart;
	break;
	
	case enemyAttacks.capsuleJ2_jetDash:
	sprite_index = spr_en_J2_jetdash;
	if(h_speed <= 1){
		sprite_index = spr_en_J2_dashstart;
	}
	break;
	
	case enemyAttacks.capsuleJ2_bounceBack:
	sprite_index = spr_en_J2_hurt;
	break;
	
	default:
	if(has_landed)
	{
		sprite_index = spr_en_J2_walk;
	}
	else
	{
		sprite_index = spr_en_J2_hover2;
	}
	break;
}