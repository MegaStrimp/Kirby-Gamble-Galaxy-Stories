///@description Draw

#region Draw Hud
hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Cheats,0,0 + hudOffset,0);
#endregion

#region Draw Discs
for (var i = 0; i < cheatsMax; i++)
{
	var discYOffset = 38;
	var discScale = .6;
	var discAlpha = 0;
	var discIndexFinal = 0;
	if (i == discSelection)
	{
		discYOffset = 0;
		discScale = 1;
		discAlpha = 1;
	}
	if ((i == discSelection - 1) or (i == discSelection + 1))
	{
		discYOffset = 8;
		discScale = .8;
		discAlpha = .66;
	}
	if ((i == discSelection - 2) or (i == discSelection + 2))
	{
		discYOffset = 20;
		discScale = .7;
		discAlpha = .33;
	}
	
	if (!global.pause)
	{
		cheatsArray[# i,6] = lerp(cheatsArray[# i,6],240 + ((i - discSelection) * 100),.25);
		cheatsArray[# i,7] = lerp(cheatsArray[# i,7],discYOffset,.25);
		cheatsArray[# i,8] = lerp(cheatsArray[# i,8],discScale,.25);
		cheatsArray[# i,9] = lerp(cheatsArray[# i,9],discAlpha,.25);
	}
	
	if (cheatsArray[# i,10]) discIndexFinal = discIndex;
	if (cheatsArray[# i,9] != 0)
	{
		draw_sprite_ext(cheatsArray[# i,1],discIndexFinal,cheatsArray[# i,6],128 + cheatsArray[# i,7],cheatsArray[# i,8],cheatsArray[# i,8],image_angle,image_blend,cheatsArray[# i,9]);
		if (i == discSelection) draw_sprite_ext(spr_Menu_Collection_Cheats_DiscSelected,0,cheatsArray[# i,6],128 + cheatsArray[# i,7],cheatsArray[# i,8],cheatsArray[# i,8],image_angle,image_blend,cheatsArray[# i,9]);
		if (cheatsArray[# i,11] == 1) draw_sprite_ext(spr_Menu_Collection_Cheats_GameChanger,cheatsArray[# i,11] - 1,cheatsArray[# i,6] + 11,128 + cheatsArray[# i,7] - 63,cheatsArray[# i,8],cheatsArray[# i,8],image_angle,image_blend,cheatsArray[# i,9]);
		if (cheatsArray[# i,10]) draw_sprite_ext(spr_Menu_Upgrades_Check,0,cheatsArray[# i,6] + 19,128 + cheatsArray[# i,7] + 20,cheatsArray[# i,8] * 4,cheatsArray[# i,8] * 4,image_angle,image_blend,cheatsArray[# i,9]);
	}
}
#endregion

#region Draw Text Background
draw_set_color(c_black);
draw_set_alpha(.75);
draw_roundrect(20,183,460,267,false);
draw_set_alpha(1);
#endregion

#region Draw Text
if (global.language == languages.english)
{
	draw_set_font(fnt_DialogueDefault);
}
else if ((global.language == languages.chinese) or (global.language == languages.japanese))
{
	draw_set_font(global.fontDialogueDefaultKanji);
}
else
{
	draw_set_font(fnt_DialogueDefaultSpecial);
}
draw_set_halign(fa_center);
var description = cheatsArray[# discSelection,3];
if (!cheatsArray[# discSelection,4]) description = cheatsArray[# discSelection,5];
scr_Draw_Text_Color_Outline(240,188,cheatsArray[# discSelection,2],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
scr_Draw_Text_Color_Outline(240,219,description,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_right);
var attributeColor = c_white;
var attributeText = str("Cheats.Attributes.Cosmetic");
if (cheatsArray[# discSelection,11] == 1)
{
	attributeColor = c_yellow;
	attributeText = str("Cheats.Attributes.Game Changer");
}
else if (cheatsArray[# discSelection,11] == 2)
{
	attributeColor = c_red;
	attributeText = "!!";
}
scr_Draw_Text_Color_Outline(454,188,attributeText,-1,-1,attributeColor,attributeColor,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);
#endregion