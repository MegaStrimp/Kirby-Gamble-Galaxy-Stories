///@description Main

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

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	current_tracking_obj = instance_find(tracking_obj,0);
	
	actionTimer = clamp(actionTimer-1,0,9999);
	switch(attackNumber)
	{
		case enemyAttacks.capsuleJ2_hovering:
		if (trackX)
		{
			dir_to_player = sign(current_tracking_obj.x - x);
			if (dir_to_player != dirX && dir_to_player != 0)
			{
				dirX = dir_to_player;
				if (hsp < 2.25 && hsp > 0)
				{
					hsp = 2.25;
				}
				else if (hsp > -2.25 && hsp < 0)
				{
					hsp = -2.25;
				}
				hsp = -hsp;
			}
			
			if (image_xscale != dirX) image_xscale = dirX;
			
			if (distance_to_point(current_tracking_obj.x,current_tracking_obj.y) < trackingRange / 2)
			{
				hsp=clamp(hsp-(accel),0,movespeed);
			}
			else if (distance_to_point(current_tracking_obj.x,current_tracking_obj.y) < trackingRange)
			{
				hsp=clamp(hsp-(accel),movespeed / 2,movespeed);
			}
			else
			{
				hsp=clamp(hsp+(accel),-movespeed,movespeed);
			}
		}
		
		if (trackY)
		{
			player_height = sign(y - (current_tracking_obj.y + 20));
			
			hoverDir = player_height;
			
			if (player_height >= 0)
			{
				vsp = clamp(vsp-accel,-jumpspeed,gravLimit);
			}
			else
			{
				vsp=clamp(vsp+grav,-jumpspeed,gravLimit);
			}
		}
		
		if (vsp == gravLimit) vsp = -1.25;
		
		if (actionTimer <= 0)
		{
			new_action_time = random_range(80,140);
			action_roll = random_range(0,100);
			new_action = enemyAttacks.capsuleJ2_hovering;
			
			if (action_roll > 85)
			{
				new_action = enemyAttacks.capsuleJ2_walking;
			}
			
			attackNumber = new_action;
			actionTimer = new_action_time;
			
			if (attackNumber == enemyAttacks.capsuleJ2_hovering) canRocketDash = true;
			
			dir_to_player = sign(current_tracking_obj.x - x);
			
			if (dir_to_player != dirX && dir_to_player != 0)
			{
				dirX = dir_to_player;
				hsp = -hsp;
			}
			
			if (image_xscale != dirX) image_xscale = dirX;
		}
		
		if (canRocketDash)
		{
			if (distance_to_point(current_tracking_obj.x,y) < trackingRange)
			{
				if (tracking_obj.y < y && tracking_obj.y > y - verticalRange)
				{
					actionTimer = 35;
					attackNumber = enemyAttacks.capsuleJ2_dashStart;
					canRocketDash = false;
				}
			}
		}
		break;
		
		case enemyAttacks.capsuleJ2_dashStart:
		hsp = -1.05;
		vsp = -0.12;
		
		if (actionTimer <= 0)
		{
			actionTimer = 35 + 12;
			hsp = 4.85;
			attackNumber = enemyAttacks.capsuleJ2_jetDash;
		}
		break;
		
		case enemyAttacks.capsuleJ2_jetDash:
		if (actionTimer <= 18)
		{
			hsp = clamp(hsp-0.85,0,5);
		}
		
		vsp = 0;
		
		if (actionTimer <= 0)
		{
			actionTimer = 80;
			vsp = 1.45;
			attackNumber = enemyAttacks.capsuleJ2_hovering;
			canRocketDash = false;
		}
		break;
		
		case enemyAttacks.capsuleJ2_bounceBack:
		vsp=clamp(vsp+grav,-jumpspeed,gravLimit);
		break;
		
		default:
		hsp = 1;
		if (!place_meeting(x,y + 8,coll_obj))
		{
			vsp = clamp(vsp + grav,-jumpspeed,gravLimit);
		}
		else
		{
			if (vsp > 0) vsp = 0;
		}
		
		if (actionTimer <= 0 && hasLanded)
		{
			new_action_time = random_range(80,140);
			action_roll = random_range(0,100);
			new_action = enemyAttacks.capsuleJ2_hovering;
			
			if (action_roll > 70) new_action = enemyAttacks.capsuleJ2_walking;
			
			attackNumber = new_action;
			actionTimer = new_action_time;
			
			dir_to_player = sign(current_tracking_obj.x - x);
			
			if (dir_to_player != dirX && dir_to_player != 0) dirX = dir_to_player;
			
			if (image_xscale != dirX) image_xscale = dirX;
			
			if (attackNumber == enemyAttacks.capsuleJ2_hovering)
			{
				vsp = -1;
				hasLanded = false;
			}
		}
		break;
	}
	
	x += hsp * dirX;	
	y += vsp;
	
	//Animation
	
	jetFlameTime++;
	image_speed = 1;

	switch (attackNumber)
	{
		case enemyAttacks.capsuleJ2_hovering:
		sprite_index = sprHover2;
		//if(hoverDir < 0){
		if (vsp >= 0)
		{
			sprite_index = sprHover1;
		}
		break;
		
		case enemyAttacks.capsuleJ2_dashStart:
		sprite_index = sprDashStart;
		break;
		
		case enemyAttacks.capsuleJ2_jetDash:
		sprite_index = sprJetDash;
		if (hsp <= 1)
		{
			sprite_index = sprDashStart;
		}
		break;
		
		case enemyAttacks.capsuleJ2_bounceBack:
		sprite_index = sprHurt;
		break;
		
		default:
		if (hasLanded)
		{
			sprite_index = sprWalk;
		}
		else
		{
			sprite_index = sprHover2;
		}
		break;
	}
}