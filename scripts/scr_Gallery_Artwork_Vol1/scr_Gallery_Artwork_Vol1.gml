///@description Customize - Artwork Vol 1

function scr_Gallery_Artwork_Vol1()
{
	/*
	0 - Sprite
	1 - Name
	2 - Artist
	3 - Unlocked
	4 - Unlock Method
	5 - Size
	6 - Frame Sprite
	7 - Canvas Sprite
	*/
	
	if (ds_exists(artworkArray,ds_type_grid)) ds_grid_destroy(artworkArray);
	
	artworkArray = ds_grid_create(99,8);
	ds_grid_clear(artworkArray,-1);
	
	var i = 0;
	
	#region Unearthly Hand - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichUnearthlyHand;
	artworkArray[# i,1] = "Unearthly Hand";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = global.beatGreenGreens;
	artworkArray[# i,4] = str("Unlock Methods.Beat Green Greens");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Mystic Beam - Derpyroot
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DerpyrootMysticBeam;
	artworkArray[# i,1] = "Mystic Beam";
	artworkArray[# i,2] = "Derpyroot";
	artworkArray[# i,3] = global.mysticBeamAbilityObtained;
	artworkArray[# i,4] = str("Unlock Methods.Obtain Mystic Beam");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Mystic Beam Moveset - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondMysticBeamMoveset;
	artworkArray[# i,1] = "Mystic Beam Moveset";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = (global.mysticBeamAbilityKills >= global.mysticBeamAbilityKillsTarget);
	artworkArray[# i,4] = str("Unlock Methods.Master Mystic Beam");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region The Corrupting Menace - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichTheCorruptingMenace;
	artworkArray[# i,1] = "The Corrupting Menace";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = global.beatYolkYard;
	artworkArray[# i,4] = str("Unlock Methods.Beat Yolk Yard");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Mystic Fire - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichMysticFire;
	artworkArray[# i,1] = "Mystic Fire";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = global.mysticFireAbilityObtained;
	artworkArray[# i,4] = str("Unlock Methods.Obtain Mystic Fire");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Very Hungry Catterpillar - GoraMonk
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_GoraMonkVeryHungryCatterpillar;
	artworkArray[# i,1] = "Very Hungry Catterpillar";
	artworkArray[# i,2] = "GoraMonk";
	artworkArray[# i,3] = global.beatYolkYard;
	artworkArray[# i,4] = str("Unlock Methods.Beat Yolk Yard");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Mystic Leo - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichMysticLeo;
	artworkArray[# i,1] = "Mystic Leo";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = global.beatGrandTempleAvgo;
	artworkArray[# i,4] = str("Unlock Methods.Beat Grand Temple Avgo");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Re-Extended - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichReExtended;
	artworkArray[# i,1] = "Re-Extended";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = global.beatFloralYolkCaves;
	artworkArray[# i,4] = str("Unlock Methods.Beat Floral Yolk Caves");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	/*#region Dark Depths - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichDarkDepths;
	artworkArray[# i,1] = "Dark Depths";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = global.beatPathToTheNastyMachine;
	artworkArray[# i,4] = str("Unlock Methods.Beat Path To The Nasty Machine");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion*/
	
	/*#region Path to the Wand - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichPathToTheWand;
	artworkArray[# i,1] = "Path to the Wand";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = global.beatCosmicPalace;
	artworkArray[# i,4] = str("Unlock Methods.Beat Cosmic Palace");
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]))
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion*/
	
	artworkMax = i;
}