///@description Draw

#region Variables
var triWidth = sprite_get_width(spr_Maykr_Triangle);
#endregion

#region Background
draw_sprite_ext(bg_GamblionTitle_Stars,0,0,0,.5,.5,image_angle,image_blend,starsAlpha);
#endregion

#region Text
if (startTrigger >= 1)
{
	draw_set_font(fnt_DialogueDefault);
	draw_set_halign(fa_center);
	scr_Draw_Text_Color_Outline(room_width / 2,245,"MegaStrimp & Team Gamble",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
}
#endregion

#region Triangles
xx += .2;
if (xx >= triWidth) xx -= triWidth;
for (var i = 0; i < 3; i++)
{
	draw_sprite(spr_Maykr_Triangle,0,480 - triWidth - (triWidth * i) + xx,0 - ((1 - startLerp) * 18));
	draw_sprite_ext(spr_Maykr_Triangle,0,0 + (triWidth * i) - xx,270 + ((1 - startLerp) * 18),1,-1,image_angle,image_blend,image_alpha);
}
#endregion

#region Logo
draw_sprite_ext(spr_Gamblion_Title_LogoBg,0,240,50,1,1,image_angle,image_blend,startLerp);
draw_sprite_ext(spr_Gamblion_Logo,0,240,-34 + ((startLerp) * 84),1,1,image_angle,image_blend,startLerp);
#endregion

#region Windows
switch (windowIndex)
{
	case maykrWindows.canvasSetup:
	var x1 = 10;
	var y1 = 10;
	var x2 = room_width - 10;
	var y2 = room_height - 10;
	
	var spriteWidth = sprite_get_width(spr_Maykr_Window_Border);
	var spriteHeight = sprite_get_height(spr_Maykr_Window_Border);
	
	windowWidth = lerp(windowWidth,x2,.2);
	windowHeight = lerp(windowHeight,y2,.2);
	if ((!windowActive) and (windowWidth > (x2 * .85))) windowActive = true;
	windowContentAlpha = lerp(windowContentAlpha,windowActive,.2);
	
	var windowXScale = ((windowWidth - x1) / spriteWidth);
	var windowYScale = ((windowHeight - y1) / spriteHeight);
	
	textureY += .15;
	if (textureY >= 48) textureY -= 48;
	textureX += .15;
	if (textureX >= 48) textureX -= 48;
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(spr_Maykr_Window_Border,1,x1,y1,windowXScale,windowYScale,image_angle,image_blend,image_alpha);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	for (var i = 0; i < floor((x2 - x1) / 48) + 2; i++)
	{
		for (var h = 0; h < floor((y2 - y1) / 48) + 2; h++)
		{
			draw_sprite(spr_Maykr_Window_Texture,0,x1 + textureX + (48 * (i - 1)),y1 + textureY + (48 * (h - 1)));
		}
	}
	
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	draw_sprite_ext(spr_Maykr_Window_Border,0,x1,y1,windowXScale,windowYScale,image_angle,image_blend,image_alpha);
	
	draw_set_alpha(windowContentAlpha);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_font(global.fontMaykrRed);
	draw_text(((x2 - x1) / 2),y1 + 3,"create canvas");
	draw_set_halign(fa_left);
	
	draw_sprite_ext(spr_Maykr_EnterBar,0,19,54,(102 / 27),1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_EnterBar,0,19,104,(102 / 27),1,image_angle,image_blend,windowContentAlpha);
	
	draw_sprite_ext(spr_Maykr_Plus,(windowSelection == 0),126,57,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Minus,(windowSelection == 1),149,57,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Plus,(windowSelection == 2),126,107,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Minus,(windowSelection == 3),149,107,1,1,image_angle,image_blend,windowContentAlpha);
	
	draw_sprite_ext(spr_Maykr_Preset_Micro,(windowSelection == 4),189,54,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Preset_Small,(windowSelection == 5),227,54,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Preset_Medium,(windowSelection == 6),265,54,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Preset_Large,(windowSelection == 7),303,54,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Preset_Vertical,(windowSelection == 8),341,54,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Preset_Horizontal,(windowSelection == 9),379,54,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Preset_Random,(windowSelection == 10),417,54,1,1,image_angle,image_blend,windowContentAlpha);
	
	draw_sprite_ext(spr_Maykr_Create,(windowSelection == 11),19,226,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Load,(windowSelection == 12),180,226,1,1,image_angle,image_blend,windowContentAlpha);
	draw_sprite_ext(spr_Maykr_Back,(windowSelection == 13),341,226,1,1,image_angle,image_blend,windowContentAlpha);
	
	draw_set_font(global.fontMaykrBlue);
	draw_text(23,35,"room width");
	draw_text(23,86,"room height");
	draw_text(193,35,"presets");
	
	draw_set_font(global.fontMaykrWhite);
	draw_text(25,60,string(maykrRoomWidth));
	draw_text(25,110,string(maykrRoomHeight));
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	break;
}
#endregion