///@description Character Select Menu - Characters

function scr_CharacterSelectMenu_Characters()
{
	/*
	0 - Index
	1 - Icon
	*/
	
	if (ds_exists(charactersArray,ds_type_grid)) ds_grid_destroy(charactersArray);
	
	charactersArray = ds_grid_create(99,2);
	ds_grid_clear(charactersArray,-1);
	
	var i = 0;
	
	#region Kirby
	if (global.kirbyUnlocked)
	{
		charactersArray[# i,0] = playerCharacters.kirby;
		charactersArray[# i,1] = spr_Hud_Icon_Kirby;
		i += 1;
	}
	#endregion
	
	#region Gamble
	if (global.gambleUnlocked)
	{
		charactersArray[# i,0] = playerCharacters.gamble;
		charactersArray[# i,1] = spr_Hud_Icon_Gamble;
		i += 1;
	}
	#endregion
	
	#region Meta Knight
	if (global.metaKnightUnlocked)
	{
		charactersArray[# i,0] = playerCharacters.metaKnight;
		charactersArray[# i,1] = spr_Hud_Icon_MetaKnight;
		i += 1;
	}
	#endregion
	
	#region Helper
	if (global.helperUnlocked)
	{
		charactersArray[# i,0] = playerCharacters.helper;
		charactersArray[# i,1] = spr_Hud_Icon_Helper;
		i += 1;
	}
	#endregion
	
	#region Gooey
	if (global.gooeyUnlocked)
	{
		charactersArray[# i,0] = playerCharacters.gooey;
		charactersArray[# i,1] = spr_Hud_Icon_Gooey;
		i += 1;
	}
	#endregion
	
	#region Magolor
	if (global.magolorUnlocked)
	{
		charactersArray[# i,0] = playerCharacters.magolor;
		charactersArray[# i,1] = spr_Hud_Icon_Magolor;
		i += 1;
	}
	#endregion
	
	charactersMax = i;
}