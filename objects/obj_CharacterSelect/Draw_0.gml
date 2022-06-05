///@description Draw

//Draw Text
draw_set_color(c_white);
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
scr_Draw_Text_Color_Outline(240,4,"Character Select",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);

//Variables P1

var pr,i;

pr = ds_priority_create();

for (var i = 0; i < arrayLength; i++)
{
    ds_priority_add(pr,i,lengthdir_y(1,(rotP1 - 90) + i * (360 / arrayLength)));
}

//Text P1

var spr = scr_Hud_AbilityText(playerAbilities.none,characterIndex[selectionP1]);
draw_sprite(spr,0,100 - (sprite_get_width(spr) / 2),220);

//Draw Hud P1

for (var i = 0; i < arrayLength; i++)
{
    var h = ds_priority_delete_min(pr);
	var sel = 0;
	draw_sprite_ext(characterIcon[h],
	sel,100 + lengthdir_x(hudWidthP1 / 2,(rotP1 - 90) + h * (360 / arrayLength)),
	150 + hudYOffsetP1 + lengthdir_y(hudHeightP1 / 2,(rotP1 - 90) + h * (360 / arrayLength)),
	1.25 + lengthdir_y(hudHeightP1 / 2,(rotP1 - 90) + h * (360 / arrayLength)) / (hudHeightP1 * 2),
	1.25 + lengthdir_y(hudHeightP1 / 2,(rotP1 - 90) + h * (360 / arrayLength)) / (hudHeightP1 * 2),0,c_white,.5);
	
	if (selectionP1 == h) draw_sprite_ext(characterIcon[h],
	sel,100 + lengthdir_x(hudWidthMax / 2,(rotP1 - 90) + h * (360 / arrayLength)),
	150 + lengthdir_y(hudHeightMax / 2,(rotP1 - 90) + h * (360 / arrayLength)),
	1.25 + lengthdir_y(hudHeightMax / 2,(rotP1 - 90) + h * (360 / arrayLength)) / (hudHeightMax * 2),
	1.25 + lengthdir_y(hudHeightMax / 2,(rotP1 - 90) + h * (360 / arrayLength)) / (hudHeightMax * 2),0,c_white,1);
}

ds_priority_destroy(pr);

if (global.hasCoop)
{
	//Text P2
	
	var spr = scr_Hud_AbilityText(playerAbilities.none,characterIndex[selectionP2]);
	draw_sprite(spr,0,380 - (sprite_get_width(spr) / 2),220);
	
	//Variables P2
	
	var pr,i;
	
	pr = ds_priority_create();
	
	for (var i = 0; i < arrayLength; i++)
	{
	    ds_priority_add(pr,i,lengthdir_y(1,(rotP2 - 90) + i * (360 / arrayLength)));
	}
	
	//Draw Hud P2
	
	for (var i = 0; i < arrayLength; i++)
	{
	    var h = ds_priority_delete_min(pr);
		var sel = 0;
		draw_sprite_ext(characterIcon[h],
		sel,380 + lengthdir_x(hudWidthP2 / 2,(rotP2 - 90) + h * (360 / arrayLength)),
		150 + hudYOffsetP2 + lengthdir_y(hudHeightP2 / 2,(rotP2 - 90) + h * (360 / arrayLength)),
		1.25 + lengthdir_y(hudHeightP2 / 2,(rotP2 - 90) + h * (360 / arrayLength)) / (hudHeightP2 * 2),
		1.25 + lengthdir_y(hudHeightP2 / 2,(rotP2 - 90) + h * (360 / arrayLength)) / (hudHeightP2 * 2),0,c_white,.5);
		
		if (selectionP2 == h) draw_sprite_ext(characterIcon[h],
		sel,380 + lengthdir_x(hudWidthMax / 2,(rotP2 - 90) + h * (360 / arrayLength)),
		150 + lengthdir_y(hudHeightMax / 2,(rotP2 - 90) + h * (360 / arrayLength)),
		1.25 + lengthdir_y(hudHeightMax / 2,(rotP2 - 90) + h * (360 / arrayLength)) / (hudHeightMax * 2),
		1.25 + lengthdir_y(hudHeightMax / 2,(rotP2 - 90) + h * (360 / arrayLength)) / (hudHeightMax * 2),0,c_white,1);
	}
	
	ds_priority_destroy(pr);
}