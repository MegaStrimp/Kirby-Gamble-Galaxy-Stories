///@description Draw

#region Draw Huds
draw_sprite(spr_SoundTest_Background,0,0,0);
draw_sprite(spr_SoundTest_Glass,0,137,78);
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

var categoryText = "";
switch (soundCategory)
{
	case 0:
	categoryText = category0String;
	break;
	
	case 1:
	categoryText = category1String;
	break;
	
	case 2:
	categoryText = category2String;
	break;
	
	case 3:
	categoryText = category3String;
	break;
	
	case 4:
	categoryText = category4String;
	break;
	
	case 5:
	categoryText = category5String;
	break;
}

draw_set_halign(fa_center);
var color = c_white;
if (selection == "categories")
{
	color = c_aqua;
}
scr_Draw_Text_Color_Outline(244,191,categoryText,-1,-1,color,color,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);

var color = c_white;
if (selection == "tracks")
{
	color = c_aqua;
}
scr_Draw_Text_Color_Outline(244,238,trackString + " " + string(soundTestArray[# trackSelection,0]),-1,-1,color,color,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);
#endregion

#region Draw Hud
draw_sprite(spr_Menu_MainMenu_Hud_SoundTest,0,0 + hudOffset,0);
#endregion