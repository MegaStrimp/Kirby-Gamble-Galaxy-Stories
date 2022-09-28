///@description Wall Bounce Logic
/*
switch(attackNumber)
{
	case enemyAttacks.capsuleJ2_bounceBack:
	if (place_meeting(x,y,coll_obj))
	{
		while (place_meeting(x,y+1,coll_obj)) y -= 1;
		
		attackNumber = enemyAttacks.capsuleJ2_walking;
		actionTimer = 30;
		vsp = 0;
	}
	
	if (place_meeting(x - (sprite_width / 2),y, coll_obj))
	{
		while (place_meeting(x - (sprite_width / 2) - (1 * dirX),y,coll_obj)) x += dirX;
	}
	break;
	
	case enemyAttacks.capsuleJ2_jetDash:
	if (hsp > 1)
	{
		if (place_meeting(x + (4 * dirX),y, coll_obj))
		{
			while (place_meeting(x + (4 * dirX) + (1 * dirX),y,coll_obj)) x -= dirX;
			
			attackNumber = enemyAttacks.capsuleJ2_bounceBack;
			hsp = -3;
		}
	}
	break;
	
	case enemyAttacks.capsuleJ2_hovering:
	case enemyAttacks.capsuleJ2_dashStart:
		if(vsp < 0){
			while(place_meeting(x,y-5-1,coll_obj)){
				y++;
				if(hsp > 0){
					if(place_meeting(x+(4*dirX)+(2*dirX),y,coll_obj)){
						x-=dirX;
					}
				}else if(hsp < 0){
					if(place_meeting(x-(4*dirX)-(1*dirX),y,coll_obj)){
						x+=dirX;
					}
				}
				vsp = gravLimit;
			}
			if(hsp > 0){
				while(place_meeting(x+(4*dirX)+(2*dirX),y,coll_obj)){
					x-=dirX;
				}
			}else if(hsp < 0){
				while(place_meeting(x-(4*dirX)-(1*dirX),y,coll_obj)){
					x+=dirX;
				}
			}
		}else if(vsp >= 0){
			while(place_meeting(x,y+5+1,coll_obj)){
				y--;
				if(hsp > 0){
					if(place_meeting(x+(4*dirX)+(2*dirX),y,coll_obj)){
						x-=dirX;
					}
				}else if(hsp < 0){
					if(place_meeting(x-(4*dirX)-(1*dirX),y,coll_obj)){
						x+=dirX;
					}
				}
				//vsp = gravLimit;
				vsp = 0;
				attackNumber = enemyAttacks.capsuleJ2_walking;
				actionTimer = 30;
				hasLanded = true;
			}
			if(hsp > 0){
				while(place_meeting(x+(4*dirX)+(2*dirX),y,coll_obj)){
					x-=dirX;
				}
			}else if(hsp < 0){
				while(place_meeting(x-(4*dirX)-(1*dirX),y,coll_obj)){
					x+=dirX;
				}
			}
		}
		break;
	default:
		if(vsp < 0){
			while(place_meeting(x,y-5-1,coll_obj)){
				y++;
				if(hsp > 0){
					if(place_meeting(x+(4*dirX)+(2*dirX),y,coll_obj)){
						x-=dirX;
					}
				}else if(hsp < 0){
					if(place_meeting(x-(4*dirX)-(1*dirX),y,coll_obj)){
						x+=dirX;
					}
				}
				vsp = gravLimit;
			}
			if(hsp > 0){
				while(place_meeting(x+(4*dirX)+(2*dirX),y,coll_obj)){
					x-=dirX;
				}
			}else if(hsp < 0){
				while(place_meeting(x-(4*dirX)-(1*dirX),y,coll_obj)){
					x+=dirX;
				}
			}
		}else if(vsp >= 0){
			while(place_meeting(x,y+5+1,coll_obj)){
				y--;
				if(hsp > 0){
					if(place_meeting(x+(4*dirX)+(2*dirX),y,coll_obj)){
						x-=dirX;
					}
				}else if(hsp < 0){
					if(place_meeting(x-(4*dirX)-(1*dirX),y,coll_obj)){
						x+=dirX;
					}
				}
				//vsp = gravLimit;
				hasLanded = true;
			}
			if(hsp > 0){
				while(place_meeting(x+(4*dirX)+(2*dirX),y,coll_obj)){
					x-=dirX;
				}
			}else if(hsp < 0){
				while(place_meeting(x-(4*dirX)-(1*dirX),y,coll_obj)){
					x+=dirX;
				}
			}
		}
		break;
}