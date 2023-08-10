///@description Draw

#region Background
draw_set_color(c_black);
draw_rectangle(0,0,480,270,false);
draw_set_color(c_white);

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0,room_width,room_height,false);

draw_set_alpha(1);
draw_sprite_ext(spr_CharacterSelect_Background_Chapter1,0,0,0,image_xscale,image_yscale,image_angle,image_blend,.3);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

draw_sprite_ext(spr_CharacterSelect_Background_Chapter1_Texture,0,80,60,image_xscale,image_yscale,((global.currentTimePausable / 4) % 360),c_white,1);

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
#endregion

#region Triangles
var triWidth = sprite_get_width(spr_ChapterIntro_Triangle);

xx += .2;
if (xx >= triWidth) xx -= triWidth;
for (var i = 0; i < 3; i++)
{
	draw_sprite(spr_ChapterIntro_Triangle,0,480 - triWidth - (triWidth * i) + xx,0);
	draw_sprite_ext(spr_ChapterIntro_Triangle,0,0 + (triWidth * i) - xx,270,1,-1,image_angle,image_blend,image_alpha);
}
#endregion

#region Draw Act Title
var fontSmall = fnt_CharacterSelectSmallSpecial;
var fontMedium = fnt_CharacterSelectMediumSpecial;
var fontLarge = fnt_CharacterSelectLargeSpecial;
if (global.language == languages.english)
{
	fontSmall = fnt_CharacterSelectSmall;
	fontMedium = fnt_CharacterSelectMedium;
	fontLarge = fnt_CharacterSelectLarge;
}
else if ((global.language == languages.chinese) or (global.language == languages.japanese))
{
	fontSmall = global.fontCharacterSelectSmallKanji;
	fontMedium = global.fontCharacterSelectMediumKanji;
	fontLarge = global.fontCharacterSelectLargeKanji;
}

draw_set_halign(fa_center);
draw_set_font(fontMedium);
scr_Draw_Text_Color_Outline(240,18,string_upper(actsArray[# global.chapterIntro,1]),-1,-1,actsArray[# global.chapterIntro,3],actsArray[# global.chapterIntro,4],1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_font(fontLarge);
scr_Draw_Text_Color_Outline(240,120,actsArray[# global.chapterIntro,2],-1,-1,actsArray[# global.chapterIntro,5],actsArray[# global.chapterIntro,6],1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);
#endregion