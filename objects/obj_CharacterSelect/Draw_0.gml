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

draw_sprite_ext(spr_CharacterSelect_Background_Chapter1_Texture,0,80,60,image_xscale,image_yscale,((current_time / 4) % 360),c_white,1);

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

#region Draw Stage Title
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
scr_Draw_Text_Color_Outline(240,30,string_upper(stagesArray[# global.currentStage,1]),-1,-1,stagesArray[# global.currentStage,3],stagesArray[# global.currentStage,4],1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_font(fontLarge);
scr_Draw_Text_Color_Outline(240,55,stagesArray[# global.currentStage,2],-1,-1,stagesArray[# global.currentStage,5],stagesArray[# global.currentStage,6],1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);
#endregion

#region Lives
draw_set_font(fontSmall);
draw_sprite(spr_CharacterSelect_Lives,0,218,96);
scr_Draw_Text_Color_Outline(238,101,"x " + string(global.playerLives),-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
#endregion

#region Point Stars
draw_sprite(spr_CharacterSelect_PointStar,0,218,118);
scr_Draw_Text_Color_Outline(238,120,"x " + string(global.pointStars),-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
#endregion

#region Timer
var timerColor = c_white;
if (!clockTicks) timerColor = c_dkgray;
draw_set_font(fontLarge);
draw_set_halign(fa_center);
scr_Draw_Text_Color_Outline(240,225,string(floor(roomChangeTimer / 60) + 1),-1,-1,timerColor,timerColor,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);
#endregion

#region Players
for (var i = 0; i < 4; i++)
{
	#region Variables
	var sep = (118 * i);
	
	var hasCoopPointer = global.hasP1;
	var palettePointer = global.sprayPaintP1;
	var paletteSelectionPointer = paletteSelectionP1;
	var characterPointer = global.characterP1;
	var characterSelectionPointer = characterSelectionP1;
	var readyPointer = readyP1;
	var subSelectionPointer = subSelectionP1;
	switch (i)
	{
		case 1:
		hasCoopPointer = global.hasP2;
		palettePointer = global.sprayPaintP2;
		paletteSelectionPointer = paletteSelectionP2;
		characterPointer = global.characterP2;
		characterSelectionPointer = characterSelectionP2;
		readyPointer = readyP2;
		subSelectionPointer = subSelectionP2;
		break;
		
		case 2:
		hasCoopPointer = global.hasP3;
		palettePointer = global.sprayPaintP3;
		paletteSelectionPointer = paletteSelectionP3;
		characterPointer = global.characterP3;
		characterSelectionPointer = characterSelectionP3;
		readyPointer = readyP3;
		subSelectionPointer = subSelectionP3;
		break;
		
		case 3:
		hasCoopPointer = global.hasP4;
		palettePointer = global.sprayPaintP4;
		paletteSelectionPointer = paletteSelectionP4;
		characterPointer = global.characterP4;
		characterSelectionPointer = characterSelectionP4;
		readyPointer = readyP4;
		subSelectionPointer = subSelectionP4;
		break;
	}
	#endregion
	
	if (hasCoopPointer)
	{
		draw_sprite(spr_Hud_PlayerNum,i,10 + sep,146);
		
		if ((characterPointer == playerCharacters.kirby) and (palettePointer == spr_Kirby_Normal_Palette_FriendlyPink)) palettePointer = spr_Hud_Palette_Icon_Kirby;
		
		var text = "Press A To Ready";
		var color = c_yellow;
		if (readyPointer)
		{
			text = "Press A To Change";
			color = c_white;
			if (global.shaders) pal_swap_set(palettePointer,1,false);
			draw_sprite_ext(charactersArray[# characterSelectionPointer,1],0,39 + sep,146,2,2,image_angle,image_blend,image_alpha);
			if (global.shaders) pal_swap_reset();
		}
		else
		{
			if (global.shaders) pal_swap_set(palettePointer,1,false);
			draw_sprite_ext(charactersArray[# characterSelectionPointer + 1,1],0,41 + sep,159 + 9,1,1,image_angle,image_blend,.5);
			draw_sprite_ext(charactersArray[# characterSelectionPointer,1],0,41 + sep,159,1,1,image_angle,image_blend,image_alpha);
			draw_sprite_ext(spr_CharacterSelect_SprayPaint,0,76 + sep,162,1,1,image_angle,image_blend,image_alpha);
			if (global.shaders) pal_swap_reset();
			
			switch (subSelectionPointer)
			{
				case 0:
				draw_sprite_ext(spr_CharacterSelect_IconSelect,0,41 + sep,159,1,1,image_angle,image_blend,image_alpha);
				
				if (charactersMax > 1)
				{
					if (characterSelectionPointer != 0) draw_sprite_ext(spr_CharacterSelect_Arrow,0,53 + sep,153,1,1,image_angle,image_blend,image_alpha);
					if (characterSelectionPointer < charactersMax - 1) draw_sprite_ext(spr_CharacterSelect_Arrow,1,53 + sep,189,1,1,image_angle,image_blend,image_alpha);
				}
				draw_sprite_ext(spr_CharacterSelect_Arrow,2,72 + sep,171,1,1,image_angle,image_blend,image_alpha);
				break;
				
				case 1:
				draw_sprite_ext(spr_CharacterSelect_SprayPaintSelect,0,76 + sep,162,1,1,image_angle,image_blend,image_alpha);
				
				if (spraysMax > 1)
				{
					if (paletteSelectionPointer != 0) draw_sprite_ext(spr_CharacterSelect_Arrow,0,76 + sep,156,1,1,image_angle,image_blend,image_alpha);
					if (paletteSelectionPointer < spraysMax - 1) draw_sprite_ext(spr_CharacterSelect_Arrow,1,76 + sep,186,1,1,image_angle,image_blend,image_alpha);
				}
				draw_sprite_ext(spr_CharacterSelect_Arrow,3,68 + sep,171,1,1,image_angle,image_blend,image_alpha);
				break;
			}
		}
		
		draw_set_font(fontSmall);
		draw_set_halign(fa_center);
		scr_Draw_Text_Color_Outline(63 + sep,195,text,-1,-1,color,color,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
		draw_set_halign(fa_left);
	}
}
#endregion