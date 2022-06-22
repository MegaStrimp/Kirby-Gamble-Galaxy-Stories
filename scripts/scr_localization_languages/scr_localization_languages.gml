///@description Localization - Languages
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_Languages(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region Languages
	dialogue[stringAttributes.language][stringAttributes.title][languages.english][0] = "English";
	dialogue[stringAttributes.language][stringAttributes.title][languages.turkish][0] = "Türkçe";
	dialogue[stringAttributes.language][stringAttributes.title][languages.german][0] = "Deutsch";
	dialogue[stringAttributes.language][stringAttributes.title][languages.italian][0] = "Italiano";
	dialogue[stringAttributes.language][stringAttributes.title][languages.french][0] = "Français";
	dialogue[stringAttributes.language][stringAttributes.title][languages.polish][0] = "Polski";
	dialogue[stringAttributes.language][stringAttributes.title][languages.chinese][0] = "Chinese (WIP)";
	dialogue[stringAttributes.language][stringAttributes.title][languages.spanish][0] = "Español";
	dialogue[stringAttributes.language][stringAttributes.title][languages.japanese][0] = "日本語";
	dialogue[stringAttributes.language][stringAttributes.title][languages.portuguese][0] = "Português";
	dialogue[stringAttributes.language][stringAttributes.title][languages.norwegian][0] = "Norwegian (WIP)";
	dialogue[stringAttributes.language][stringAttributes.title][languages.arabic][0] = "عربي";
	#endregion
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}