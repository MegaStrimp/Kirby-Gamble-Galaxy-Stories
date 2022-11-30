///@description Trophies

function scr_Trophies()
{
	/*
	0 - Sprite
	1 - Name
	2 - Description
	3 - Unlocked
	4 - Unlock Method
	*/
	
	if (ds_exists(trophyArray,ds_type_grid)) ds_grid_destroy(trophyArray);
	
	trophyArray = ds_grid_create(3,5);
	ds_grid_clear(trophyArray,-1);
	
	var i = 0;
	
	#region Unearthly Hand - Subsandwich
	trophyArray[# i,0] = spr_Menu_Gallery_Artwork_SubsandwichUnearthlyHand;
	trophyArray[# i,1] = "Unearthly Hand";
	trophyArray[# i,2] = "Subsandwich";
	trophyArray[# i,3] = true;
	trophyArray[# i,4] = "Test";
	trophyArray[# i,5] = (140 / max(sprite_get_width(trophyArray[# i,0]),sprite_get_height(trophyArray[# i,0])));
	trophyArray[# i,6] = spr_Menu_Gallery_Frame;
	i += 1;
	#endregion
	
	trophiesMax = i;
}