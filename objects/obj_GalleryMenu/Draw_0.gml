///@description Draw

//Draw Background Color

if (page != 0) draw_sprite(bgSprite,0,0,0);

//Draw Gallery

if (page == 1)
{
	artworkX = lerp(artworkX,240 - (artworkSelection * 260),.25);
	
	for (var i = 0; i < artworkMax; i++)
	{
	    var textAlpha = 1;
	    if ((i < artworkSelection - 1) or (i > artworkSelection + 1)) textAlpha = 0;
		
		if (textAlpha != 0)
		{
			draw_sprite(artworkArray[# i,6],0,artworkX + (260 * i),114);
			draw_sprite_ext(artworkArray[# i,0],0,artworkX + (260 * i),114,artworkArray[# i,5],artworkArray[# i,5],image_angle,image_blend,image_alpha);
			
			draw_sprite(spr_Menu_Gallery_Plate,0,artworkX + (260 * i),228);
			draw_set_halign(fa_center);
			draw_set_valign(fa_bottom);
			scr_Draw_Text_Color_Outline(artworkX + (260 * i),223,artworkArray[# i,1],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
			draw_set_valign(fa_top);
			scr_Draw_Text_Color_Outline(artworkX + (260 * i),232,artworkArray[# i,2],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
		}
	}
}

//Draw Curtain

draw_sprite(spr_Menu_Gallery_Curtain,curtainIndex,0,0);

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Gallery,0,0 + hudOffset,0);