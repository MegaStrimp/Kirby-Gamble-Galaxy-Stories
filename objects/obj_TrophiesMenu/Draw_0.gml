///@description Draw

//Draw Background

draw_sprite(spr_Menu_Trophies_Hud,0,0,0);
if (trophyArray[# trophySelection,5] != -1) draw_sprite(spr_Menu_Trophies_HudIcons,trophyArray[# trophySelection,5],0,0);

//Draw Trophies

for (var i = 0; i < min((trophiesMax - (page * 12)),12); i++)
{
	var trophyIcon = spr_Menu_Trophies_Icon_Empty;
	if (trophyArray[# i + (page * 12),0] != -1) trophyIcon = trophyArray[# i + (page * 12),0];
	var drawX = 40 + (70 * (i % 6));
	var drawY = 71 + (70 * floor(i / 6));
	draw_sprite(trophyIcon,!trophyArray[# i + (page * 12),3],drawX,drawY);
	if ((selection == "trophies") and (i + (page * 12) == trophySelection)) draw_sprite(spr_Menu_Trophies_Icon_Selection,0,drawX,drawY);
}

var col1 = c_white;
var col2 = c_white;
if (trophyArray[# trophySelection,0] != -1)
{
	if (global.language == languages.english)
	{
		draw_set_font(fnt_Small);
	}
	else if ((global.language == languages.chinese) or (global.language == languages.japanese))
	{
		draw_set_font(fnt_SmallKanji);
	}
	else
	{
		draw_set_font(fnt_SmallSpecial);
	}
	
	scr_Draw_Text_Color_Outline(60,205,trophyArray[# trophySelection,1],-1,240,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	if (trophyArray[# trophySelection,3])
	{
		scr_Draw_Text_Color_Outline(60,219,trophyArray[# trophySelection,2],-1,240,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	
	}
	else
	{
		scr_Draw_Text_Color_Outline(60,219,trophyArray[# trophySelection,4],-1,240,c_dkgray,c_dkgray,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	}
}

//Draw Hud

draw_sprite(spr_Menu_MainMenu_Hud_Trophies,0,0 + hudOffset,0);