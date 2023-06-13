///@description Customize - Artwork Vol S

function scr_Gallery_Artwork_VolS()
{
	/*
	0 - Sprite
	1 - Name
	2 - Artist
	3 - Unlocked
	4 - Unlock Method
	5 - Size
	6 - Frame Sprite
	*/
	
	if (ds_exists(artworkArray,ds_type_grid)) ds_grid_destroy(artworkArray);
	
	artworkArray = ds_grid_create(13,8);
	ds_grid_clear(artworkArray,-1);
	
	var i = 0;
	
	#region Squad Party - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondSquadParty;
	artworkArray[# i,1] = "Squad Party";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Mystic Doo Erm - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondMysticDooErm;
	artworkArray[# i,1] = "Mystic Doo Erm";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Scheming Egg - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondSchemingEgg;
	artworkArray[# i,1] = "Scheming Egg";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Jelly What - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondJellyWhat;
	artworkArray[# i,1] = "Jelly What";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Hi - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondHi;
	artworkArray[# i,1] = "Hi";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Gamble Shock - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondGambleShock;
	artworkArray[# i,1] = "Gamble Shock";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Fluxbender Sad - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondFluxbenderSad;
	artworkArray[# i,1] = "Fluxbender Sad";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Busy Caller - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondBusyCaller;
	artworkArray[# i,1] = "Busy Caller";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameYellow_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region You Are Approaching Me - A.M Jazz
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_AMJazzYouAreApproachingMe;
	artworkArray[# i,1] = "You Are Approaching Me";
	artworkArray[# i,2] = "A.M Jazz";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameRed_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Think Gamble - Potato Plus
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_PotatoPlusThinkGamble;
	artworkArray[# i,1] = "Think Gamble";
	artworkArray[# i,2] = "Potato Plus";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameRed_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region April Fools - Diamond
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DiamondAprilFools;
	artworkArray[# i,1] = "April Fools";
	artworkArray[# i,2] = "Diamond";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameRed_Tall;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Tall;
	i += 1;
	#endregion
	
	#region Gamble Kujo - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichGambleKujo;
	artworkArray[# i,1] = "Gamble Kujo";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameRed_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	#region Mystic Lads - Tuna Sandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_TunaSandwichMysticLads;
	artworkArray[# i,1] = "Mystic Lads";
	artworkArray[# i,2] = "Tuna Sandwich";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (168 / sprite_get_width(artworkArray[# i,0]));
	artworkArray[# i,6] = spr_Menu_Gallery_FrameRed_Normal;
	artworkArray[# i,7] = spr_Menu_Gallery_Canvas_Normal;
	i += 1;
	#endregion
	
	artworkMax = i;
}