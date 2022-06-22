///@description Localization - Main
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_Main(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	if (dialogueCategory == stringAttributes.language)
	{
		dialogue = scr_Localization_Languages(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if (dialogueCategory == stringAttributes.shop_general)
	{
		dialogue = scr_Localization_GeneralShopChoices(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if ((dialogueCategory > stringAttributes.playerCharactersStart) and (dialogueCategory < stringAttributes.playerCharactersEnd))
	{
		dialogue = scr_Localization_Characters(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if ((dialogueCategory > stringAttributes.customizeSubMenusStart) and (dialogueCategory < stringAttributes.customizeSubMenusEnd))
	{
		dialogue = scr_Localization_CustomizeSubMenus(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if ((dialogueCategory > stringAttributes.playerSprayPaintsStart) and (dialogueCategory < stringAttributes.playerSprayPaintsEnd))
	{
		dialogue = scr_Localization_PlayerSprayPaints(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if ((dialogueCategory > stringAttributes.familiarsStart) and (dialogueCategory < stringAttributes.familiarsEnd))
	{
		dialogue = scr_Localization_Familiars(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if ((dialogueCategory > stringAttributes.unlockMethodsStart) and (dialogueCategory < stringAttributes.unlockMethodsEnd))
	{
		dialogue = scr_Localization_UnlockMethods(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if ((dialogueCategory > stringAttributes.playerAbilitiesStart) and (dialogueCategory < stringAttributes.playerAbilitiesEnd))
	{
		dialogue = scr_Localization_PlayerAbilities(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if ((dialogueCategory > stringAttributes.enemyStart) and (dialogueCategory < stringAttributes.enemyEnd))
	{
		dialogue = scr_Localization_Enemies(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if (dialogueCategory == stringAttributes.shop_gearCube)
	{
		dialogue = scr_Localization_GearCubeShop(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	else if ((dialogueCategory > stringAttributes.optionsStart) and (dialogueCategory < stringAttributes.optionsEnd))
	{
		dialogue = scr_Localization_Options(dialogueCategory,dialogueIndex,dialogueLine,language);
	}
	
	return dialogue;
}