///@description Localization - General Shop Choices
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_GeneralShopChoices(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region General Shop Choices
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.english] = "BUY";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.turkish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.german] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.italian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.french] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.polish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.chinese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.spanish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.japanese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.portuguese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.norwegian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_buy][0][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.english] = "TALK";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.turkish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.german] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.italian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.french] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.polish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.chinese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.spanish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.japanese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.portuguese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.norwegian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_talk][0][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.english] = "LEAVE";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.turkish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.german] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.italian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.french] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.polish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.chinese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.spanish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.japanese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.portuguese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.norwegian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_leave][0][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.english] = "NEXT";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.turkish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.german] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.italian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.french] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.polish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.chinese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.spanish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.japanese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.portuguese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.norwegian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_next][0][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.english] = "BACK";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.turkish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.german] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.italian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.french] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.polish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.chinese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.spanish] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.japanese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.portuguese] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.norwegian] = "";
	dialogue[stringAttributes.shop_general][stringAttributes.shopString_back][0][languages.arabic] = "";
	#endregion
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}