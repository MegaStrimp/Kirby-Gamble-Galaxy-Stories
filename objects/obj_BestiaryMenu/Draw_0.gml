///@description Draw

//Draw Hud

draw_sprite(spr_Menu_MainMenu_Hud_Bestiary,0,240,0);

var sprIcon = spr_Hud_Icon_Helper;
if (selectedEntries[enemySelection][5] != playerAbilities.none) sprIcon = scr_Hud_AbilityIcon(selectedEntries[enemySelection][5],playerCharacters.kirby);
if (sprIcon != -1) draw_sprite_ext(sprIcon,0,451,71,.55,.55,image_angle,image_blend,image_alpha);
draw_sprite(spr_Menu_Collection_Bestiary_Hud_Normal,0,0,0);

//Draw Portrait

var sprite = spr_Menu_Collection_Bestiary_Locked;
if (selectedEntries[enemySelection][6]) sprite = selectedEntries[enemySelection][3];
draw_sprite_ext(sprite,0,240,100,selectedEntries[enemySelection][4],selectedEntries[enemySelection][4],image_angle,image_blend,image_alpha);

//Draw Selection Bar

draw_set_color(c_white);
if (global.language == 0)
{
	draw_set_font(fnt_DialogueDefault);
}
else if (global.language == 6)
{
	draw_set_font(fnt_DialogueDefaultKanji);
}
else
{
	draw_set_font(fnt_DialogueDefaultSpecial);
}

if (enemySelection > loopStart + 8) loopStart = enemySelection - 8;
if (enemySelection < loopStart) loopStart = enemySelection;
var num = 0;
for (var i = loopStart; i < loopStart + 9; i++)
{
	if (i <= arrayLength)
	{
		var text = "???";
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		var selectedOffset = 0;
		if (selectedEntries[i][6])
		{
			text = selectedEntries[i][1];
			//col1 = familiarColor[i];
			col1 = c_white;
			col2 = c_white;
		}
		if (i == enemySelection)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 31;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityDropStar_Normal,starIndex,31 + selectedEntries[i][8],32 + 7 + (20 * num),1,1,image_angle,image_blend,image_alpha);
		scr_Draw_Text_Color_Outline(17 + selectedOffset + selectedEntries[i][8],32 + (20 * num),text,-1,-1,col1,col2,image_alpha,c_black,c_black,image_alpha,2,5,image_xscale,image_yscale,image_angle);
	}
	num += 1;
}

//Draw Title

draw_set_valign(fa_middle);
var text = "???";
if (selectedEntries[enemySelection][6]) text = selectedEntries[enemySelection][1];
scr_Draw_Text_Color_Outline(340,54,text,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_valign(fa_top);

//Draw Description

if (global.language == 0)
{
	draw_set_font(fnt_Small);
}
else if (global.language == 6)
{
	draw_set_font(fnt_SmallKanji);
}
else
{
	draw_set_font(fnt_SmallSpecial);
}

if (selectedEntries[enemySelection][6]) scr_Draw_Text_Color_Outline(160,168,selectedEntries[enemySelection][2],19,300,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);