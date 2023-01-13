///@description Cheats Menu - Cheats

function scr_CheatsMenu_Cheats()
{
	/*
	0 - Index
	1 - Sprite
	2 - Title
	3 - Description
	4 - Unlocked
	5 - Unlock Method
	6 - X Offset
	7 - Y Offset
	8 - Scale
	9 - Alpha
	10 - Equipped
	11 - Attribute (0 - Cosmetic, 1 - Game Changer, 2 - Hard)
	*/
	
	if (ds_exists(cheatsArray,ds_type_grid)) ds_grid_destroy(cheatsArray);
	
	cheatsArray = ds_grid_create(10,12);
	ds_grid_clear(cheatsArray,-1);
	
	var i = 0;
	
	#region Lifeless
	cheatsArray[# i,0] = cheats.lifeless;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Lifeless.Title");
	cheatsArray[# i,3] = str("Cheats.Lifeless.Description");
	cheatsArray[# i,4] = global.cheatLifelessUnlocked;
	cheatsArray[# i,5] = str("Cheats.Lifeless.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatLifelessEquipped;
	cheatsArray[# i,11] = 1;
	i += 1;
	#endregion
	
	/*#region Starstorm
	cheatsArray[# i,0] = cheats.starstorm;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Starstorm.Title");
	cheatsArray[# i,3] = str("Cheats.Starstorm.Description");
	cheatsArray[# i,4] = global.cheatStarstormUnlocked;
	cheatsArray[# i,5] = str("Cheats.Starstorm.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatStarstormEquipped;
	cheatsArray[# i,11] = 1;
	i += 1;
	#endregion*/
	
	#region Flipside
	cheatsArray[# i,0] = cheats.flipside;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Flipside.Title");
	cheatsArray[# i,3] = str("Cheats.Flipside.Description");
	cheatsArray[# i,4] = global.cheatFlipsideUnlocked;
	cheatsArray[# i,5] = str("Cheats.Flipside.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatFlipsideEquipped;
	cheatsArray[# i,11] = 0;
	i += 1;
	#endregion
	
	/*#region Gamer Boy
	cheatsArray[# i,0] = cheats.gamerBoy;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Gamer Boy.Title");
	cheatsArray[# i,3] = str("Cheats.Gamer Boy.Description");
	cheatsArray[# i,4] = global.cheatGamerBoyUnlocked;
	cheatsArray[# i,5] = str("Cheats.Gamer Boy.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatGamerBoyEquipped;
	cheatsArray[# i,11] = 0;
	i += 1;
	#endregion*/
	
	/*#region Eye Bleach
	cheatsArray[# i,0] = cheats.eyeBleach;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Eye Bleach.Title");
	cheatsArray[# i,3] = str("Cheats.Eye Bleach.Description");
	cheatsArray[# i,4] = global.cheatEyeBleachUnlocked;
	cheatsArray[# i,5] = str("Cheats.Eye Bleach.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatEyeBleachEquipped;
	cheatsArray[# i,11] = 0;
	i += 1;
	#endregion*/
	
	#region Awaiting for the New Moon
	cheatsArray[# i,0] = cheats.awaitingForTheNewMoon;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Awaiting for the New Moon.Title");
	cheatsArray[# i,3] = str("Cheats.Awaiting for the New Moon.Description");
	cheatsArray[# i,4] = global.cheatAwaitingForTheNewMoonUnlocked;
	cheatsArray[# i,5] = str("Cheats.Awaiting for the New Moon.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatAwaitingForTheNewMoonEquipped;
	cheatsArray[# i,11] = 1;
	i += 1;
	#endregion
	
	/*#region Gather Battle
	cheatsArray[# i,0] = cheats.gatherBattle;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Gather Battle.Title");
	cheatsArray[# i,3] = str("Cheats.Gather Battle.Description");
	cheatsArray[# i,4] = global.cheatGatherBattleUnlocked;
	cheatsArray[# i,5] = str("Cheats.Gather Battle.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatGatherBattleEquipped;
	cheatsArray[# i,11] = 1;
	i += 1;
	#endregion*/
	
	/*#region Fashionable
	cheatsArray[# i,0] = cheats.fashionable;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Fashionable.Title");
	cheatsArray[# i,3] = str("Cheats.Fashionable.Description");
	cheatsArray[# i,4] = global.cheatFashionableUnlocked;
	cheatsArray[# i,5] = str("Cheats.Fashionable.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatFashionableEquipped;
	cheatsArray[# i,11] = 0;
	i += 1;
	#endregion*/
	
	/*#region Strimp's Diner
	cheatsArray[# i,0] = cheats.strimpsDiner;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Strimp's Diner.Title");
	cheatsArray[# i,3] = str("Cheats.Strimp's Diner.Description");
	cheatsArray[# i,4] = global.cheatStrimpsDinerUnlocked;
	cheatsArray[# i,5] = str("Cheats.Strimp's Diner.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatStrimpsDinerEquipped;
	cheatsArray[# i,11] = 2;
	i += 1;
	#endregion
	
	/*#region Colored Abilities
	cheatsArray[# i,0] = cheats.coloredAbilities;
	cheatsArray[# i,1] = spr_Menu_Collection_Cheats_Disc;
	cheatsArray[# i,2] = str("Cheats.Colored Abilities.Title");
	cheatsArray[# i,3] = str("Cheats.Colored Abilities.Description");
	cheatsArray[# i,4] = global.abilitySpraysKeycard;
	cheatsArray[# i,5] = str("Cheats.Colored Abilities.Unlock Method");
	cheatsArray[# i,6] = 240 + ((i - discSelection) * 100);
	cheatsArray[# i,7] = 0;
	cheatsArray[# i,8] = 1;
	cheatsArray[# i,9] = 1;
	cheatsArray[# i,10] = global.cheatColoredAbilitiesEquipped;
	cheatsArray[# i,11] = 0;
	i += 1;
	#endregion*/
	
	cheatsMax = i;
}