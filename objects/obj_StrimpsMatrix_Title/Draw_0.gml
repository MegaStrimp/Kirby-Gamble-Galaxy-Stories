///@description Draw

#region Background
draw_sprite_ext(bg_StrimpsMatrix_Title_FrontPillars,0,0,0,1,1,image_angle,image_blend,image_alpha);
draw_sprite_ext(bg_StrimpsMatrix_Title_FrontCubes,0,0,0,1,1,image_angle,image_blend,image_alpha);
draw_sprite_ext(bg_StrimpsMatrix_Title_BackPillars,0,0,0,1,1,image_angle,image_blend,image_alpha);
draw_sprite_ext(bg_StrimpsMatrix_Title_BackCubes,0,0,0,1,1,image_angle,image_blend,image_alpha);
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
var triWidth = sprite_get_width(spr_Maykr_Triangle);

xx += .2;
if (xx >= triWidth) xx -= triWidth;
for (var i = 0; i < 3; i++)
{
	draw_sprite(spr_Maykr_Triangle,0,480 - triWidth - (triWidth * i) + xx,0 - ((1 - startLerp) * 18));
	draw_sprite_ext(spr_Maykr_Triangle,0,0 + (triWidth * i) - xx,270 + ((1 - startLerp) * 18),1,-1,image_angle,image_blend,image_alpha);
}
#endregion

#region Logo
draw_sprite_ext(spr_StrimpsMatrix_Rift,0,240,90,1,1,image_angle,image_blend,startLerp);
draw_sprite_ext(spr_StrimpsMatrix_Title,0,240,-34 + ((startLerp) * 90),1,1,image_angle,image_blend,startLerp);
#endregion