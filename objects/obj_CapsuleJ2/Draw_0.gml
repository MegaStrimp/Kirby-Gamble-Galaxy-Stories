///@description Draw

stored_sprite = sprite_index;
stored_subimg = image_index;

switch (attackNumber)
{
	case enemyAttacks.capsuleJ2_hovering:
	if (jetFlameTime >= 4) jetFlameTime = 0;
	
	if (vsp < 0)
	{
		switch(jetFlameTime)
		{
			case 0:
			draw_sprite_ext(spr_Particle_CapsuleJ2Fire,0,x,y + 5,dirX,1,0,c_white,1);
			break;
			
			case 1:
			draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,0,x,y + 20,dirX,1,0,c_white,1);
			break;
			
			case 2:
			draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,0,x,y + 35,dirX,1,0,c_white,1);
			break;
			
			case 3:
			draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,1,x,y + 50,dirX,1,0,c_white,1);
			break;
			
			default:
			break;
		}
	}
	break;
	
	case enemyAttacks.capsuleJ2_dashStart:
	if (jetFlameTime >= 3) jetFlameTime = 0;
	
	switch (jetFlameTime)
	{
		case 0:
		draw_sprite_ext(spr_Particle_CapsuleJ2Fire,0,x,y,dirX,1,0,c_white,1);
		break;
		
		case 1:
		draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,0,x + (4 * dirX),y + 8,dirX,1,0,c_white,1);
		break;
		
		case 2:
		draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,1,x + (6 * dirX),y + 11,dirX,1,0,c_white,1);
		break;
		
		default:
		break;
	}
	break;
	
	case enemyAttacks.capsuleJ2_jetDash:
	if (hsp <= 1)
	{
		if (jetFlameTime >= 3) jetFlameTime = 0;
		
		switch (jetFlameTime)
		{
			case 0:
			draw_sprite_ext(spr_Particle_CapsuleJ2Fire,0,x,y,dirX,1,0,c_white,1);
			break;
			
			case 1:
			draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,0,x + (4 * dirX),y + 8,dirX,1,0,c_white,1);
			break;
			
			case 2:
			draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,1,x + (6 * dirX),y + 11,dirX,1,0,c_white,1);
			break;
			
			default:
			break;
		}
	}
	else
	{
		if (jetFlameTime >= 4) jetFlameTime = 0;
		
		smoke_height = y - 20;
		
		switch (jetFlameTime)
		{
			case 0:
			draw_sprite_ext(spr_Particle_CapsuleJ2Fire,1,x - (10 * dirX),smoke_height,dirX,1,0,c_white,1);
			break;
			
			case 1:
			draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,0,x - ((8 * 3) * dirX),smoke_height,dirX,1,0,c_white,1);
			break;
			
			case 2:
			draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,0,x - ((8 * 6) * dirX),smoke_height,dirX,1,0,c_white,1);
			break;
			
			case 3:
			draw_sprite_ext(spr_Particle_CapsuleJ2Smoke,1,x - (((8 * 9) + 4) * dirX),smoke_height,dirX,1,0,c_white,1);
			break;
			
			default:
			break;
		}
	}
	break;
}

draw_sprite_ext(stored_sprite,stored_subimg,x,y,dirX,1,0,c_white,1);