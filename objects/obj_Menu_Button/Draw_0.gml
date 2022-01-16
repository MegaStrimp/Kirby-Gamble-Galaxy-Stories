///@description Draw

switch (state)
{
	case "saveSlot":
	var selected = 0;
	var fileColor = -1;
	if (instance_exists(obj_Title))
	{
		if (obj_Title.selectedFile == number) selected = 1;
		switch (number)
		{
			case 0:
			fileColor = obj_Title.file1Color;
			break;
			
			case 1:
			fileColor = obj_Title.file2Color;
			break;
			
			case 2:
			fileColor = obj_Title.file3Color;
			break;
		}
	}
	
	draw_sprite(sprite_index,selected,x,y);
	
	draw_sprite(spr_Menu_Saves_Text,fileColor,x + 20,y + 14);
	draw_sprite(spr_Menu_Saves_Numbers,(fileColor * 3) + number,x + 79,y + 16);
	if (fileColor == 0)
	{
		draw_set_font(fnt_AlienSolid);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		scr_Draw_Text_Color_Outline(x + 55,y + 60,"CREATE",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,1,1,image_angle);
		draw_set_halign(fa_left);
	}
	else
	{
		draw_sprite(spr_Menu_MainMenu_Badge_Empty,0,4 + 22,4 + 48);
	}
	break;
	
	case "mainMenu":
	var selected = 0;
	if ((instance_exists(obj_MainMenu)) and (obj_MainMenu.selection == index)) selected = 1;
	draw_sprite(sprite_index,selected,x,y);
	break;
	
	case "options":
	switch (index)
	{
		case "music":
		var selected = 1;
		if (global.musicVolume * 10 < number) selected = 0;
		break;
		
		case "sound":
		var selected = 1;
		if (global.soundVolume * 10 < number) selected = 0;
		break;
		
		default:
		var selected = 0;
		if ((instance_exists(obj_OptionsMenu)) and (obj_OptionsMenu.selection == number)) selected = 1;
		draw_sprite(sprite_index,selected,x,y);
		break;
	}
	draw_sprite(sprite_index,selected,x,y);
	break;
	
	case "deleteSave":
	var selected = 0;
	if ((instance_exists(obj_DeleteSave)) and (obj_DeleteSave.selection == number)) selected = 1;
	draw_sprite(sprite_index,selected,x,y);
	break;
	
	case "collection":
	var selected = 0;
	if ((instance_exists(obj_CollectionMenu)) and (obj_CollectionMenu.selection == index)) selected = 1;
	draw_sprite(sprite_index,selected,x,y);
	break;
	
	case "cheats":
	var selected = 0;
	if (instance_exists(obj_CheatsMenu))
	{
		if (obj_CheatsMenu.selection == number) selected = 1;
		y = ystart - 20 + (obj_CheatsMenu.itemYOffset * selected);
	}
	draw_sprite_ext(sprite_index,selected,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	break;
	
	case "upgrades":
	draw_sprite(sprStar,1,x,y);
	var selected = 0;
	if ((instance_exists(obj_UpgradesMenu)) and (obj_UpgradesMenu.selection == number)) selected = 1;
	draw_sprite(spr_Menu_Upgrades_Box,selected,x,y);
	var active = spr_Menu_Upgrades_Cross;
	switch (index)
	{
		case "Golden Flare":
		if (global.beamGoldenFlareUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Vortex In A Jar":
		if (global.mysticBeamVortexInAJarUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Rock Candy":
		if (global.stoneRockCandyUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Combo Cobalt":
		if (global.stoneComboCobaltUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Multi Bomb":
		if (global.bombMultiBombUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Eye Bomb":
		if (global.bombEyeBombUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Smart Bomb":
		if (global.bombSmartBombUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Magma Bomb":
		if (global.bombMagmaBombUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Explosive Powder":
		if (global.bombExplosivePowderUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Magic Charcoal":
		if (global.fireMagicCharcoalUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Empty Cone":
		if (global.iceEmptyConeUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Bright Plugg":
		if (global.sparkBrightPluggUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Egg Soil":
		if (global.waterEggSoilUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
	}
	draw_sprite(sprItem,0,x,y);
	draw_sprite(active,0,x + 20,y + 20);
	break;
	
	case "maykrTitle":
	draw_self();
	if (obj_Maykr_Title.selection == index)
	{
		switch (index)
		{
			case 0:
			imageIndex += sprite_get_speed(spr_Maykr_Title_PlaySelected) / 60;
			if (imageIndex >= 9) imageIndex -= 9;
			draw_sprite(spr_Maykr_Title_PlaySelected,imageIndex,x + 8,y + 7);
			break;
			
			case 2:
			imageIndex += sprite_get_speed(spr_Maykr_Title_ExitSelected) / 60;
			if (imageIndex >= 9) imageIndex -= 9;
			draw_sprite(spr_Maykr_Title_ExitSelected,imageIndex,x + 8,y + 7);
			break;
		}
	}
	break;
	
	default:
	draw_self();
	break;
}