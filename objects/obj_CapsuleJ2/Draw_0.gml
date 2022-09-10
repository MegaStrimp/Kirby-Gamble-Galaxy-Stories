/// @description Draw Jet Flame and Smoke
// You can write your code in this editor

stored_sprite = sprite_index;
stored_subimg = image_index;

jet_flametime++;

switch (attackNumber)
{
	case enemyAttacks.capsuleJ2_hovering:
	if (jet_flametime >= 4) jet_flametime = 0;
	
	if (v_speed < 0)
	{
		switch(jet_flametime)
		{
			case 0:
			draw_sprite_ext(spr_en_J2_jetflame,0,x,y + 5,spr_dir,1,0,c_white,1);
			break;
			
			case 1:
			draw_sprite_ext(spr_en_J2_jetsmoke,0,x,y + 20,spr_dir,1,0,c_white,1);
			break;
			
			case 2:
			draw_sprite_ext(spr_en_J2_jetsmoke,0,x,y + 35,spr_dir,1,0,c_white,1);
			break;
			
			case 3:
			draw_sprite_ext(spr_en_J2_jetsmoke,1,x,y + 50,spr_dir,1,0,c_white,1);
			break;
			
			default:
			break;
		}
	}
	break;
	
	case enemyAttacks.capsuleJ2_dashStart:
	if (jet_flametime >= 3) jet_flametime = 0;
	
	switch (jet_flametime)
	{
		case 0:
		draw_sprite_ext(spr_en_J2_jetflame,0,x,y,spr_dir,1,0,c_white,1);
		break;
		
		case 1:
		draw_sprite_ext(spr_en_J2_jetsmoke,0,x + (4 * spr_dir),y + 8,spr_dir,1,0,c_white,1);
		break;
		
		case 2:
		draw_sprite_ext(spr_en_J2_jetsmoke,1,x + (6 * spr_dir),y + 11,spr_dir,1,0,c_white,1);
		break;
		
		default:
		break;
	}
	break;
	
	case enemyAttacks.capsuleJ2_jetDash:
	if (h_speed <= 1)
	{
		if (jet_flametime >= 3) jet_flametime = 0;
		
		switch (jet_flametime)
		{
			case 0:
			draw_sprite_ext(spr_en_J2_jetflame,0,x,y,spr_dir,1,0,c_white,1);
			break;
			
			case 1:
			draw_sprite_ext(spr_en_J2_jetsmoke,0,x + (4 * spr_dir),y + 8,spr_dir,1,0,c_white,1);
			break;
			
			case 2:
			draw_sprite_ext(spr_en_J2_jetsmoke,1,x + (6 * spr_dir),y + 11,spr_dir,1,0,c_white,1);
			break;
			
			default:
			break;
		}
	}
	else
	{
		if (jet_flametime >= 4) jet_flametime = 0;
		
		smoke_height = y - 20;
		
		switch (jet_flametime)
		{
			case 0:
			draw_sprite_ext(spr_en_J2_jetflame,1,x - (10 * spr_dir),smoke_height,spr_dir,1,0,c_white,1);
			break;
			
			case 1:
			draw_sprite_ext(spr_en_J2_jetsmoke,0,x - ((8 * 3) * spr_dir),smoke_height,spr_dir,1,0,c_white,1);
			break;
			
			case 2:
			draw_sprite_ext(spr_en_J2_jetsmoke,0,x - ((8 * 6) * spr_dir),smoke_height,spr_dir,1,0,c_white,1);
			break;
			
			case 3:
			draw_sprite_ext(spr_en_J2_jetsmoke,1,x - (((8 * 9) + 4) * spr_dir),smoke_height,spr_dir,1,0,c_white,1);
			break;
			
			default:
			break;
		}
	}
	break;
}

draw_sprite_ext(stored_sprite,stored_subimg,x,y,spr_dir,1,0,c_white,1);