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
			draw_sprite(artworkArray[# i,6],((selection == "artwork") and (i == artworkSelection)),artworkX + (260 * i),114);
			draw_sprite(spr_Menu_Gallery_Plate,0,artworkX + (260 * i),228);
			
			draw_set_font(fnt_DialogueDefault);
			draw_set_halign(fa_center);
			draw_set_valign(fa_bottom);
			if (artworkArray[# i,3]) 
			{
				draw_sprite_ext(artworkArray[# i,0],0,artworkX + (260 * i),114,artworkArray[# i,5],artworkArray[# i,5],image_angle,image_blend,image_alpha);
				
				scr_Draw_Text_Color_Outline(artworkX + (260 * i),223,artworkArray[# i,1],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
				draw_set_valign(fa_top);
				scr_Draw_Text_Color_Outline(artworkX + (260 * i),232,artworkArray[# i,2],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
			}
			else
			{
				scr_Draw_Text_Color_Outline(artworkX + (260 * i),120,artworkArray[# i,4],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
			}
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		}
	}
}

//Draw Curtain

draw_sprite(spr_Menu_Gallery_Curtain,curtainIndex,0,0);

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Gallery,0,0 + hudOffset,0);

//Draw Zoomed Artwork

artworkZoomAlpha = lerp(artworkZoomAlpha,artworkZoom,.25);
if (artworkZoomAlpha > 0)
{
	draw_set_alpha(artworkZoomAlpha);
	draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),false);
	draw_sprite_ext(artworkArray[# artworkSelection,0],0,240,135,artworkArray[# artworkSelection,5] * 1.9,artworkArray[# artworkSelection,5] * 1.9,image_angle,image_blend,image_alpha);
	draw_set_alpha(1);
}