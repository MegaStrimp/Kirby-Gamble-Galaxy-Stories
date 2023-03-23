///@description Draw

#region Draw Lights
gpu_set_blendmode(bm_add);
draw_sprite(spr_Menu_Upgrades_Background_Light2,0,0,0);
gpu_set_blendmode(bm_normal);
draw_sprite(spr_Menu_Upgrades_Background_Light1,0,0,0);
#endregion

#region Draw Hud
draw_sprite(spr_Menu_MainMenu_Hud_Upgrades,0,0 + hudOffset,0);
#endregion

#region Draw Upgrades
for (var i = 0; i < upgradesMax; i++)
{
	var upgradeYOffset = -42;
	var upgradeScale = .6;
	var upgradeAlpha = 0;
	if (i == upgradeSelection)
	{
		upgradeYOffset = 0;
		upgradeScale = 2;
		upgradeAlpha = 1;
	}
	if ((i == upgradeSelection - 1) or (i == upgradeSelection + 1))
	{
		upgradeYOffset = -16;
		upgradeScale = 1.4;
		upgradeAlpha = .66;
	}
	if ((i == upgradeSelection - 2) or (i == upgradeSelection + 2))
	{
		upgradeYOffset = -32;
		upgradeScale = .8;
		upgradeAlpha = .45;
	}
	
	if (!global.pause)
	{
		upgradesArray[# i,6] = lerp(upgradesArray[# i,6],240 + ((i - upgradeSelection) * 82),.25);
		upgradesArray[# i,7] = lerp(upgradesArray[# i,7],upgradeYOffset,.25);
		upgradesArray[# i,8] = lerp(upgradesArray[# i,8],upgradeScale,.25);
		upgradesArray[# i,9] = lerp(upgradesArray[# i,9],upgradeAlpha,.25);
	}
	
	if (upgradesArray[# i,9] != 0)
	{
		draw_sprite_ext(spr_AbilityTrophy_KSSU_Idle,!upgradesArray[# upgradeSelection,4],upgradesArray[# i,6],144 + upgradesArray[# i,7],upgradesArray[# i,8],upgradesArray[# i,8],image_angle,image_blend,upgradesArray[# i,9] + (.15 * !upgradesArray[# i,4]));
		draw_sprite_ext(upgradesArray[# i,1],!upgradesArray[# upgradeSelection,4],upgradesArray[# i,6],144 + upgradesArray[# i,7] + (1 * upgradesArray[# i,8]),upgradesArray[# i,8],upgradesArray[# i,8],image_angle,image_blend,upgradesArray[# i,9] + (.15 * !upgradesArray[# i,4]));
		if (upgradesArray[# i,10]) draw_sprite_ext(spr_Menu_Upgrades_Check,0,upgradesArray[# i,6] + 18,144 + upgradesArray[# i,7] + 2,upgradesArray[# i,8] * 2,upgradesArray[# i,8] * 2,image_angle,image_blend,upgradesArray[# i,9] + (.15 * !upgradesArray[# i,4]));
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
	var fntDialogueDefault = fnt_DialogueDefault;
}
else if ((global.language == languages.chinese) or (global.language == languages.japanese))
{
	var fntDialogueDefault = global.fontDialogueDefaultKanji;
}
else
{
	var fntDialogueDefault = fnt_DialogueDefaultSpecial;
}
draw_set_font(fntDialogueDefault);
draw_set_halign(fa_center);
var description = upgradesArray[# upgradeSelection,3];
var titleColor1 = upgradesArray[# upgradeSelection,11];
var titleColor2 = c_white;
var descriptionColor1 = c_white;
var descriptionColor3 = c_white;

if (!upgradesArray[# upgradeSelection,4])
{
	description = upgradesArray[# upgradeSelection,5];
	titleColor1 = c_dkgray;
	titleColor2 = c_white;
	descriptionColor1 = c_gray;
	descriptionColor3 = c_white;
	attributeText = "";
}
scr_Draw_Text_Color_Outline(240,188,upgradesArray[# upgradeSelection,2],-1,-1,titleColor1,titleColor2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
scr_Draw_Text_Color_Outline(240,219,description,-1,-1,descriptionColor1,descriptionColor3,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);

draw_sprite(upgradesArray[# upgradeSelection,12],0,441,205);
#endregion