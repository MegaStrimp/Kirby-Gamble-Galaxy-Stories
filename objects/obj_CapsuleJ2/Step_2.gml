///// @description Wall Bounce Logic

switch(attackNumber)
{
	case enemyAttacks.capsuleJ2_bounceBack:
	if (place_meeting(x,y,coll_obj))
	{
		while (place_meeting(x,y+1,coll_obj)) y -= 1;
		
		attackNumber = "walking";
		action_timer = 30;
		v_speed = 0;
	}
	
	if (place_meeting(x - (sprite_width / 2),y, coll_obj))
	{
		while (place_meeting(x - (sprite_width / 2) - (1 * spr_dir),y,coll_obj)) x += spr_dir;
	}
	break;
	
	case enemyAttacks.capsuleJ2_jetDash:
	if (h_speed > 1)
	{
		if (place_meeting(x + (4 * spr_dir),y, coll_obj))
		{
			while (place_meeting(x + (4 * spr_dir) + (1 * spr_dir),y,coll_obj)) x -= spr_dir;
			
			attackNumber = enemyAttacks.capsuleJ2_bounceBack;
			h_speed = -3;
		}
	}
	break;
	
	case enemyAttacks.capsuleJ2_hovering:
	case enemyAttacks.capsuleJ2_dashStart:
		if(v_speed < 0){
			while(place_meeting(x,y-5-1,coll_obj)){
				y++;
				if(h_speed > 0){
					if(place_meeting(x+(4*spr_dir)+(2*spr_dir),y,coll_obj)){
						x-=spr_dir;
					}
				}else if(h_speed < 0){
					if(place_meeting(x-(4*spr_dir)-(1*spr_dir),y,coll_obj)){
						x+=spr_dir;
					}
				}
				v_speed = fall_max;
			}
			if(h_speed > 0){
				while(place_meeting(x+(4*spr_dir)+(2*spr_dir),y,coll_obj)){
					x-=spr_dir;
				}
			}else if(h_speed < 0){
				while(place_meeting(x-(4*spr_dir)-(1*spr_dir),y,coll_obj)){
					x+=spr_dir;
				}
			}
		}else if(v_speed >= 0){
			while(place_meeting(x,y+5+1,coll_obj)){
				y--;
				if(h_speed > 0){
					if(place_meeting(x+(4*spr_dir)+(2*spr_dir),y,coll_obj)){
						x-=spr_dir;
					}
				}else if(h_speed < 0){
					if(place_meeting(x-(4*spr_dir)-(1*spr_dir),y,coll_obj)){
						x+=spr_dir;
					}
				}
				//v_speed = fall_max;
				v_speed = 0;
				attackNumber = "walking";
				action_timer = 30;
				has_landed = true;
			}
			if(h_speed > 0){
				while(place_meeting(x+(4*spr_dir)+(2*spr_dir),y,coll_obj)){
					x-=spr_dir;
				}
			}else if(h_speed < 0){
				while(place_meeting(x-(4*spr_dir)-(1*spr_dir),y,coll_obj)){
					x+=spr_dir;
				}
			}
		}
		break;
	default:
		if(v_speed < 0){
			while(place_meeting(x,y-5-1,coll_obj)){
				y++;
				if(h_speed > 0){
					if(place_meeting(x+(4*spr_dir)+(2*spr_dir),y,coll_obj)){
						x-=spr_dir;
					}
				}else if(h_speed < 0){
					if(place_meeting(x-(4*spr_dir)-(1*spr_dir),y,coll_obj)){
						x+=spr_dir;
					}
				}
				v_speed = fall_max;
			}
			if(h_speed > 0){
				while(place_meeting(x+(4*spr_dir)+(2*spr_dir),y,coll_obj)){
					x-=spr_dir;
				}
			}else if(h_speed < 0){
				while(place_meeting(x-(4*spr_dir)-(1*spr_dir),y,coll_obj)){
					x+=spr_dir;
				}
			}
		}else if(v_speed >= 0){
			while(place_meeting(x,y+5+1,coll_obj)){
				y--;
				if(h_speed > 0){
					if(place_meeting(x+(4*spr_dir)+(2*spr_dir),y,coll_obj)){
						x-=spr_dir;
					}
				}else if(h_speed < 0){
					if(place_meeting(x-(4*spr_dir)-(1*spr_dir),y,coll_obj)){
						x+=spr_dir;
					}
				}
				//v_speed = fall_max;
				has_landed = true;
			}
			if(h_speed > 0){
				while(place_meeting(x+(4*spr_dir)+(2*spr_dir),y,coll_obj)){
					x-=spr_dir;
				}
			}else if(h_speed < 0){
				while(place_meeting(x-(4*spr_dir)-(1*spr_dir),y,coll_obj)){
					x+=spr_dir;
				}
			}
		}
		break;
}