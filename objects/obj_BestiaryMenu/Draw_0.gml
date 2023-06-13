///@description Draw

#region Draw Portrait Background
var x1 = 151;
var x2 = 329;
var y1 = 34;
var y2 = 147;

textureY += .15;
if (textureY >= 100) textureY -= 100;
textureX += .15;
if (textureX >= 100) textureX -= 100;

gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0,room_width,room_height,false);

draw_set_alpha(1);
draw_rectangle(x1,y1,x2,y2,false);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

for (var i = 0; i < floor((x2 - x1) / 100) + 2; i++)
{
	for (var h = 0; h < floor((y2 - y1) / 100) + 2; h++)
	{
		draw_sprite(bestiaryArray[# bestiarySelection,7],0,x1 + textureX + (100 * (i - 1)),x2 + textureY + (100 * (h - 3)));
	}
}

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
#endregion

#region Draw Huds
draw_sprite(spr_Menu_Collection_Bestiary_Hud_Normal,0,0,0);
#endregion

#region Draw Left Bar
if (global.language == languages.english)
{
	draw_set_font(global.fontBestiary);
	scribble_font_set_default("spr_Menu_Collection_Bestiary_Font");
}
else if ((global.language == languages.chinese) or (global.language == languages.japanese))
{
	draw_set_font(fnt_SmallKanji);
	scribble_font_set_default("fnt_SmallKanji");
}
else
{
	draw_set_font(fnt_SmallSpecial);
	scribble_font_set_default("fnt_SmallSpecial");
}

for (var i = 0; i < min((bestiaryMax - (page * 12)),12); i++)
{
	var iFinal = i + (page * 12);
	var col1 = c_black;
	var col2 = c_black;
	if (bestiarySelection == iFinal)
	{
		if (selection == "bestiary")
		{
			col1 = c_aqua;
			col2 = c_aqua;
		}
		else
		{
			col1 = c_blue;
			col2 = c_blue;
		}
	}
	var entryTitle = bestiaryArray[# iFinal,1];
	if (string_length(entryTitle) > 11) entryTitle = string_copy(entryTitle,0,9) + "...";
	draw_text_color(25,65 + (16 * i),"#" + string(bestiaryArray[# iFinal,0]) + "-" + entryTitle,col1,col1,col2,col2,1);
}
#endregion

#region Draw Middle & Right Bars
#region Draw Sprite
var sprite = bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected][animSelected];
var palette = bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected][colorSelected];
var spriteScale = bestiaryArray[# bestiarySelection,10];

if ((global.shaders) and (palette != -1)) pal_swap_set(palette,1,false);
draw_sprite_ext(sprite,animIndex,240,130 - ((sprite_get_height(sprite) - sprite_get_yoffset(sprite)) * spriteScale),spriteScale,spriteScale,image_angle,image_blend,image_alpha);
if ((global.shaders) and (palette != -1)) pal_swap_reset();
#endregion

#region Power Bar
if (bestiaryArray[# bestiarySelection,6] != -1)
{
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_PowerBar,bestiaryArray[# bestiarySelection,6],154,36);
}
#endregion

#region Title & Description
var col1 = c_white;
var col2 = c_white;
draw_set_valign(fa_middle);
draw_text_color(344,64,bestiaryArray[# bestiarySelection,1],c_black,c_black,c_black,c_black,1);
draw_text_color(344,63,bestiaryArray[# bestiarySelection,1],col1,col1,col2,col2,1);
draw_set_valign(fa_top);
//scribble(string(bestiaryArray[# bestiarySelection,2])).wrap(273,71).page(descriptionPage).draw(152,167);
draw_text_ext_color(152,168,bestiaryArray[# bestiarySelection,2],11,316,c_black,c_black,c_black,c_black,1);
draw_text_ext_color(152,167,bestiaryArray[# bestiarySelection,2],11,316,col1,col1,col2,col2,1);
#endregion

#region Icons
draw_sprite(bestiaryArray[# bestiarySelection,8],0,447,32);
draw_sprite(bestiaryArray[# bestiarySelection,5],0,153,122);
#endregion

#region Set Bar Font
draw_set_font(global.fontBestiary);
#endregion

#region Skin Bar
if (bestiaryArray[# bestiarySelection,11] > 0)
{
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_SkinBar,0,346,84);
	
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_UpButton,(selection == "skinBarUp"),464,86);
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_DownButton,(selection == "skinBarDown"),464,94);
	
	var skinNumber = "00" + string(skinSelected);
	if (skinSelected > 99)
	{
		skinNumber = string(skinSelected);
	}
	else if (skinSelected > 9)
	{
		skinNumber = "0" + string(skinSelected);
	}
	
	draw_text(426,89,skinNumber);
}
#endregion

#region Color Bar
if (array_length(bestiaryCosmeticsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1)
{
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_ColorBar,0,346,107);
	
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_UpButton,(selection == "colorBarUp"),464,109);
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_DownButton,(selection == "colorBarDown"),464,117);
	
	var colorNumber = "00" + string(colorSelected);
	if (colorSelected > 99)
	{
		colorNumber = string(colorSelected);
	}
	else if (colorSelected > 9)
	{
		colorNumber = "0" + string(colorSelected);
	}
	
	draw_text(426,112,colorNumber);
}
#endregion

#region Anim Bar
if (array_length(bestiaryAnimationsArray[bestiaryArray[# bestiarySelection,9]][skinSelected]) > 1)
{
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_AnimBar,0,346,130);
	
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_UpButton,(selection == "animBarUp"),464,132);
	draw_sprite(spr_Menu_Collection_Bestiary_Hud_DownButton,(selection == "animBarDown"),464,140);
	
	var animNumber = "00" + string(animSelected);
	if (animSelected > 99)
	{
		animNumber = string(animSelected);
	}
	else if (animSelected > 9)
	{
		animNumber = "0" + string(animSelected);
	}
	
	draw_text(426,135,animNumber);
}
#endregion
#endregion

#region Draw Hud
draw_sprite(spr_Menu_MainMenu_Hud_Bestiary,0,0 + hudOffset,0);
#endregion