///@description Draw

switch (state)
{
	#region Save Slot
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
	
	draw_sprite(sprite_index,selected,x,y + obj_Title.cameraY);
	
	draw_sprite(spr_Menu_Saves_Text,fileColor,x + 20,y + 14 + obj_Title.cameraY);
	draw_sprite(spr_Menu_Saves_Numbers,(fileColor * 3) + number,x + 79,y + 16 + obj_Title.cameraY);
	if (fileColor == 0)
	{
		draw_set_font(fnt_AlienSolid);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		scr_Draw_Text_Color_Outline(x + 55,y + 60 + obj_Title.cameraY,"CREATE",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,1,1,image_angle);
		draw_set_halign(fa_left);
	}
	else
	{
		draw_sprite(spr_Menu_MainMenu_Badge_Empty,0,4 + 22,4 + 48 + obj_Title.cameraY);
	}
	break;
	#endregion
	
	#region Back
	case "back":
	var buttonAlpha = 1;
	if ((owner.object_index == obj_GalleryMenu) and (owner.artworkZoom)) buttonAlpha = .3;
	if (canChangeImageIndex)
	{
		var selected = 0;
		if ((instance_exists(owner)) and (owner.selection == state)) selected = 1;
		draw_sprite_ext(sprite_index,selected,x,y,image_xscale,image_yscale,image_angle,image_blend,buttonAlpha);
	}
	else
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,buttonAlpha);
	}
	break;
	#endregion
	
	#region Main Menu
	case "mainMenu":
	var selected = 0;
	if ((instance_exists(owner)) and (owner.selection == index)) selected = 1;
	draw_sprite(sprite_index,selected,x,y);
	break;
	#endregion
	
	#region Options
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
	#endregion
	
	#region Delete Save
	case "deleteSave":
	var selected = 0;
	if ((instance_exists(obj_DeleteSave)) and (obj_DeleteSave.selection == number)) selected = 1;
	draw_sprite(sprite_index,selected,x,y);
	break;
	#endregion
	
	#region Collection
	case "collection":
	var selected = 0;
	if ((instance_exists(obj_CollectionMenu)) and (obj_CollectionMenu.selection == index)) selected = 1;
	draw_sprite(sprite_index,selected,x,y);
	break;
	#endregion
	
	#region Cheats
	case "cheats":
	if (index == "arrowPrev")
	{
		if (obj_CheatsMenu.discSelection != 0) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	}
	else if (index == "arrowNext")
	{
		if (obj_CheatsMenu.discSelection < obj_CheatsMenu.cheatsMax - 1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	}
	break;
	#endregion
	
	#region Gallery
	case "gallery":
	if ((instance_exists(obj_GalleryMenu)) and (!owner.artworkZoom))
	{
		if (((index == "vol1") or (index == "vol2") or (index == "vol3") or (index == "volS")) and (obj_GalleryMenu.page == 0))
		{
			var selected = 0;
			var page = 0;
			if (obj_GalleryMenu.page == 0)
			{
				if (obj_GalleryMenu.selection == index) selected = 1;
			}
			else
			{
				page = 1;
			}
			
			xOffset = lerp(xOffset,(100 * !selected) + (200 * page),.2);
			draw_sprite_ext(sprite_index,image_index,x + xOffset,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		}
		else if (obj_GalleryMenu.page == 1)
		{
			if (index == "download")
			{
				image_index = 0;
				with (obj_GalleryMenu)
				{
					if (selection == "download")
					{
						if (artworkArray[# artworkSelection,3])
						{
							other.image_index = 3;
						}
						else
						{
							other.image_index = 1;
						}
					}
					else
					{
						if (artworkArray[# artworkSelection,3])
						{
							other.image_index = 2;
						}
						else
						{
							other.image_index = 0;
						}
					}
				}
				draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			}
			else if (index == "arrowPrev")
			{
				if (obj_GalleryMenu.artworkSelection != 0) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			}
			else if (index == "arrowNext")
			{
				if (obj_GalleryMenu.artworkSelection < obj_GalleryMenu.artworkMax - 1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			}
		}
	}
	break;
	#endregion
	
	#region Trophies
	case "trophies":
	if (instance_exists(owner))
	{
		if (index == "arrowPrev")
		{
			if (owner.page != 0) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		}
		else if (index == "arrowNext")
		{
			if (owner.page < owner.pageMax) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		}
	}
	break;
	#endregion
	
	#region Keycard Menu
	case "keycardMenu":
	if (instance_exists(owner))
	{
		if (index == "upload")
		{
			var selected = 0;
			if (owner.selection == index) selected = 1;
			
			draw_sprite_ext(sprite_index,selected,x - owner.xx,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		}
		else
		{
			if (index == "arrowPrev")
			{
				if (owner.page != 0) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			}
			else if (index == "arrowNext")
			{
				if (owner.page < owner.pageMax) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			}
			else
			{
				if (owner.keycardArray[# index,1])
				{
					if (owner.keycardSelection == index)
					{
						image_index = 1;
					}
					else
					{
						image_index = 0;
					}
				}
				else
				{
					if (owner.keycardSelection == index)
					{
						image_index = 3;
					}
					else
					{
						image_index = 2;
					}
				}
				
				draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			}
		}
	}
	break;
	#endregion
	
	#region Upgrades
	case "upgrades":
	draw_sprite(sprStar,1,x,y);
	var selected = 0;
	if ((instance_exists(obj_UpgradesMenu)) and (obj_UpgradesMenu.selection == number)) selected = 1;
	draw_sprite(spr_Menu_Upgrades_Box,selected,x,y);
	var active = spr_Menu_Upgrades_Cross;
	switch (index)
	{
		case "Motor Cutter":
		if (global.cutterMotorCutterUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
		case "Propeller Wing":
		if (global.cutterPropellerWingUpgradeEquipped) active = spr_Menu_Upgrades_Check;
		break;
		
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
	#endregion
	
	#region Maykr Title
	case "maykrTitle":
	if (obj_Maykr_Title.windowIndex == -1)
	{
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
				
				case 1:
				imageIndex += sprite_get_speed(spr_Maykr_Title_BuildSelected) / 60;
				if (imageIndex >= 9) imageIndex -= 9;
				draw_sprite(spr_Maykr_Title_BuildSelected,imageIndex,x - 8,y + 7);
				break;
				
				case 2:
				imageIndex += sprite_get_speed(spr_Maykr_Title_ExitSelected) / 60;
				if (imageIndex >= 9) imageIndex -= 9;
				draw_sprite(spr_Maykr_Title_ExitSelected,imageIndex,x + 8,y + 7);
				break;
			}
		}
	}
	break;
	#endregion
	
	#region Gamblion Title
	case "gamblionTitle":
	if (obj_Gamblion_Title.windowIndex == -1)
	{
		draw_self();
		if (obj_Gamblion_Title.selection == index)
		{
			switch (index)
			{
				case 0:
				imageIndex += sprite_get_speed(spr_Maykr_Title_PlaySelected) / 60;
				if (imageIndex >= 9) imageIndex -= 9;
				draw_sprite(spr_Maykr_Title_PlaySelected,imageIndex,x + 8,y + 7);
				break;
				
				case 1:
				imageIndex += sprite_get_speed(spr_Maykr_Title_BuildSelected) / 60;
				if (imageIndex >= 9) imageIndex -= 9;
				draw_sprite(spr_Maykr_Title_BuildSelected,imageIndex,x - 8,y + 7);
				break;
				
				case 2:
				imageIndex += sprite_get_speed(spr_Maykr_Title_ExitSelected) / 60;
				if (imageIndex >= 9) imageIndex -= 9;
				draw_sprite(spr_Maykr_Title_ExitSelected,imageIndex,x + 8,y + 7);
				break;
			}
		}
	}
	break;
	#endregion
	
	#region Default
	default:
	draw_self();
	break;
	#endregion
}