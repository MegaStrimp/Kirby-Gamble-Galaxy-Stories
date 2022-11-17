///@description Draw

switch (page)
{
	case 0:
	//Draw Self
	
	draw_self();
	
	//Draw Shine
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(spr_LogoMask,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	draw_sprite_ext(spr_LogoShine,0,x + xx - ((sprite_get_width(sprite_index) * image_xscale) / 2),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	
	gpu_set_alphatestenable(false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	//Draw Halloween Gradient
	
	if (global.season = seasons.halloween)
	{
		gpu_set_blendenable(false)
		gpu_set_colorwriteenable(false,false,false,true);
		draw_set_alpha(0);
		draw_rectangle(0,0,room_width,room_height,false);
		
		draw_set_alpha(1);
		draw_sprite_ext(spr_Logo_Halloween_GradientMask,0,x,y,image_xscale,image_yscale,image_angle,image_blend,gradientAlpha);
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true,true,true,true);
		
		gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
		gpu_set_alphatestenable(true);
		
		draw_sprite_ext(spr_Logo_Halloween_Gradient,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		
		gpu_set_alphatestenable(false);
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
	}
	break;
	
	case 1:
	draw_set_font(fnt_AlienSolid);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	scr_Draw_Text_Color_Outline(room_width / 2,4,"Choose A Save",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,1,1,image_angle);
	draw_set_halign(fa_left);
	break;
}

//Draw Version Number

draw_set_font(fnt_Menu);
draw_set_color(c_white);
draw_set_valign(fa_bottom);
draw_text(6,270 + cameraY,"Version - " + string(global.versionNumber));
draw_set_valign(fa_top);

//Black Alpha Box

draw_set_alpha(blackAlphaVal);
draw_set_color(c_black);
draw_rectangle(0,0,480,480,false);
draw_set_color(c_white);
draw_set_alpha(1);