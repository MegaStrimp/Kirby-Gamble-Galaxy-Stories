///@description Keycards

function scr_Keycards()
{
	/*
	0 - Sprite
	1 - Unlocked
	2 - X
	3 - Y
	*/
	
	if (ds_exists(keycardArray,ds_type_grid)) ds_grid_destroy(keycardArray);
	
	keycardArray = ds_grid_create(7,4);
	ds_grid_clear(keycardArray,-1);
	
	var i = 0;
	
	#region Eternal Paradise
	keycardArray[# i,0] = spr_KeycardMenu_Icon_EternalParadise;
	keycardArray[# i,1] = global.eternalParadiseCrossoverKeycard;
	keycardArray[# i,2] = 144;
	keycardArray[# i,3] = 72;
	i += 1;
	#endregion
	
	#region Dream Land Plus
	keycardArray[# i,0] = spr_KeycardMenu_Icon_DreamLandPlus;
	keycardArray[# i,1] = global.kirbysDreamLandPlusCrossoverKeycard;
	keycardArray[# i,2] = 264;
	keycardArray[# i,3] = 96;
	i += 1;
	#endregion
	
	#region Boll
	keycardArray[# i,0] = spr_KeycardMenu_Icon_Boll;
	keycardArray[# i,1] = global.bollCrossoverKeycard;
	keycardArray[# i,2] = 384;
	keycardArray[# i,3] = 72;
	i += 1;
	#endregion
	
	#region Dream Crafter
	keycardArray[# i,0] = spr_KeycardMenu_Icon_DreamCrafter;
	keycardArray[# i,1] = global.dreamCrafterCrossoverKeycard;
	keycardArray[# i,2] = 120;
	keycardArray[# i,3] = 150;
	i += 1;
	#endregion
	
	#region Kirby Battle Blitz
	keycardArray[# i,0] = spr_KeycardMenu_Icon_BattleBlitz;
	keycardArray[# i,1] = global.kirbyBattleBlitzCrossoverKeycard;
	keycardArray[# i,2] = 228;
	keycardArray[# i,3] = 198;
	i += 1;
	#endregion
	
	#region Ability Sprays
	keycardArray[# i,0] = spr_KeycardMenu_Icon_AbilitySprays;
	keycardArray[# i,1] = global.abilitySpraysKeycard;
	keycardArray[# i,2] = 372;
	keycardArray[# i,3] = 144;
	i += 1;
	#endregion
	
	keycardsMax = i;
}