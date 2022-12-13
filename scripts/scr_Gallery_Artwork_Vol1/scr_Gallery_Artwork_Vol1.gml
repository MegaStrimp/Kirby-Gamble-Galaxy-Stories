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
	*/
	
	if (ds_exists(artworkArray,ds_type_grid)) ds_grid_destroy(artworkArray);
	
	artworkArray = ds_grid_create(3,7);
	ds_grid_clear(artworkArray,-1);
	
	var i = 0;
	
	#region Unearthly Hand - Subsandwich
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichUnearthlyHand;
	artworkArray[# i,1] = "Unearthly Hand";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (140 / max(sprite_get_width(artworkArray[# i,0]),sprite_get_height(artworkArray[# i,0])));
	artworkArray[# i,6] = spr_Menu_Gallery_Frame;
	i += 1;
	#endregion
	
	#region Mystic Beam - Derpyroot
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_DerpyrootMysticBeam;
	artworkArray[# i,1] = "Mystic Beam";
	artworkArray[# i,2] = "Derpyroot";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (140 / max(sprite_get_width(artworkArray[# i,0]),sprite_get_height(artworkArray[# i,0])));
	artworkArray[# i,6] = spr_Menu_Gallery_Frame;
	i += 1;
	#endregion
	
	#region Mystic Fire - Derpyroot
	artworkArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichMysticFire;
	artworkArray[# i,1] = "Mystic Fire";
	artworkArray[# i,2] = "Subsandwich";
	artworkArray[# i,3] = true;
	artworkArray[# i,4] = "Test";
	artworkArray[# i,5] = (140 / max(sprite_get_width(artworkArray[# i,0]),sprite_get_height(artworkArray[# i,0])));
	artworkArray[# i,6] = spr_Menu_Gallery_Frame;
	i += 1;
	#endregion
	
	artworkMax = i;
}