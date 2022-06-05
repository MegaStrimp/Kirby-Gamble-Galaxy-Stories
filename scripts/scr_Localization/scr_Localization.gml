///@description Localization
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization(argument0,argument1,argument2,argument3)
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
	
	#region Character Titles
	#region Kirby
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.english] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.turkish] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.german] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.italian] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.french] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.spanish] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.arabic] = "كيربي";
	#endregion
	
	#region Gamble
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.english] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.turkish] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.german] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.italian] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.french] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.spanish] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.arabic] = "غامبل";
	#endregion
	
	#region Meta Knight
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.english] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.turkish] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.german] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.italian] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.french] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.spanish] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.arabic] = "ميتا كنايت";
	#endregion
	
	#region Helper
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.english] = "Helper";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.turkish] = "Yardımcı";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.german] = "Helfer";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.italian] = "Amico di Sogno";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.french] = "Acolyte";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.spanish] = "Ayudante";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.arabic] = "هيلبر";
	#endregion
	
	#region Gooey
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.english] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.turkish] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.german] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.italian] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.french] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.spanish] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.arabic] = "قووي";
	#endregion
	
	#region Magolor
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.english] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.turkish] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.german] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.italian] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.french] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.spanish] = "Maglor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.arabic] = "ماجولور";
	#endregion
	
	#region Keeby
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.english] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.turkish] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.german] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.italian] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.french] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.spanish] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.arabic] = "كييبي";
	#endregion
	#endregion
	
	#region Character Secret Titles
	#region Kirby
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.english] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.turkish] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.german] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.italian] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.french] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.polish] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.chinese] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.spanish] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.japanese] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.portuguese] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.norwegian] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.arabic] = "?????";
	#endregion
	
	#region Gamble
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.english] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.turkish] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.german] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.italian] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.french] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.polish] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.chinese] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.spanish] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.japanese] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.portuguese] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.norwegian] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.arabic] = "??????";
	#endregion
	
	#region Meta Knight
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.english] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.turkish] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.german] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.italian] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.french] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.polish] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.chinese] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.spanish] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.japanese] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.portuguese] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.norwegian] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.arabic] = "???? ??????";
	#endregion
	
	#region Helper
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.english] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.turkish] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.german] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.italian] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.french] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.polish] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.chinese] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.spanish] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.japanese] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.portuguese] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.norwegian] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.arabic] = "??????";
	#endregion
	
	#region Gooey
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.english] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.turkish] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.german] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.italian] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.french] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.polish] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.chinese] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.spanish] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.japanese] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.portuguese] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.norwegian] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.arabic] = "?????";
	#endregion
	
	#region Magolor
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.english] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.turkish] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.german] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.italian] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.french] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.polish] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.chinese] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.spanish] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.japanese] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.portuguese] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.norwegian] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.arabic] = "???????";
	#endregion
	
	#region Keeby
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.english] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.turkish] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.german] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.italian] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.french] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.polish] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.chinese] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.spanish] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.japanese] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.portuguese] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.norwegian] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.arabic] = "?????";
	#endregion
	#endregion
	
	#region Character Descriptions
	#region Kirby
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.english] = "Riding in on the spring breeze, it's Kirby! Inhale enemies and copy their powers. A galaxy stretches beyond your wildest dreams, so it's time to get going!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.german] = "Mit der Frühlingsbrise hereinreiten, das ist Kirby! Sauge Feinde ein und kopiere ihre Kräfte. Eine Galaxie erstreckt sich über deine kühnsten Träume hinaus, also ist es Zeit, loszulegen!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.italian] = "Ecco Kirby! Risucchia i nemici e prendi i loro poteri! Fatti avanti in una galassia con i confini che superano persino i tuoi sogni più sfrenati!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.french] = "Arrivant avec la brise de printemps, c'est Kirby ! Avalez des ennemis et copiez leurs pouvoirs. Une galaxie s'étend au-delà de vos plus grands rêves, il est temps d'y aller !";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.spanish] = "¡Cabalgando por la brisa primaveral, es Kirby! Absorbe enemigos y copia sus habilidades. Una galaxia se extiende más lejos de lo que te puedas imaginar ¡No hay tiempo que perder!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.arabic] = "وهو يركض في نسيم الربيع ، إنه كيربي!  ابتلع الأعداء وانسخ قوتهم.  تمتد المجرة إلى ما وراء أعنف أحلامك ، لذا حان الوقت للبدء!";
	#endregion
	
	#region Gamble
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.english] = "This new friend from outer space came to Popstar to ask Kirby for a hand in defeating the Cosmic Fluxbender! Gamble wields dice, cards, roulettes, and magical energy to take down the enemy. Make them fold!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.german] = "Dieser neue Freund aus dem Weltraum kam zu Popstar, um Kirby um Hilfe beim Besiegen des Cosmic Fluxbender zu bitten! Gamble setzt Würfel, Karten, Roulette und magische Energie ein, um den Feind zu besiegen. Lass sie falten!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.italian] = "Questo nuovo amico è venuto dallo spazio al Pianeta Pop per chiedere a Kirby un aiuto nella sconfitta del perfido Lord Flux. Gamble attacca i nemici a suon di dadi, carte, roulette e poteri magici. Nessuno avrà scampo!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.french] = "Ce nouvel ami d'un espace lointain est venu sur la planète Pop demander à Kirby un coup de main pour vaincre le Fluxbender cosmique ! Gamble utilise des dés, cartes, roulettes, et de l'énergie magique contre ses ennemis. Pliez-les en deux !";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.spanish] = "¡Este nuevo amigo del espacio exterior ha venido al planeta Pop a pedir ayuda a Kirby para derrotar al Maestro Cósmico del Flux! Gamble empuña dados, cartas, ruletas y energía mágica para tumbar al enemigo. ¡Dóblalos a voluntad!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.arabic] = "جاء هذا الصديق الجديد من الفضاء الخارجي إلى Popstar ليطلب من كيربي مساعدته في هزيمة Cosmic Fluxbender!  تستخدم لعبة Gamble النرد والبطاقات والروليت والطاقة السحرية للقضاء على العدو.  اجعلها تطوي!";
	#endregion
	
	#region Meta Knight
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.english] = "The mysterious masked knight from Kirby's Adventure is here! He is chivalrous and always willing to fight any source of evil. All of Dream Land fears his sword!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.german] = "Der mysteriöse maskierte Ritter aus Kirby's Adventure ist da! Er ist ritterlich und immer bereit, jede Quelle des Bösen zu bekämpfen. Ganz Dream Land fürchtet sein Schwert!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.italian] = "Il misterioso cavaliere oscuro da Kirby's Adventure è qui! È valoroso e sempre pronto ad affrontare il male in ogni sua forma. Tutta Dream Land teme la sua spada.";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.french] = "Le chevalier masqué mystérieux de Kirby's Adventure est là ! Il est toujours respectueux et combat toutes les sources du mal. L'entièreté de Dream Land redoute son épée !";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.spanish] = "¡El misterioso caballero enmascarado de Kirby’s Adventure está aquí! Es muy caballeroso y siempre está dispuesto a combatir el mal. ¡Todo Dream Land teme a su espada!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.arabic] = "الفارس المقنع الغامض من Kirby's Adventure هنا!  إنه شهم ومستعد دائمًا لمحاربة أي مصدر للشر.  كل دريم لاند تخشى سيفه!";
	#endregion
	
	#region Helper
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.english] = "Folks from all over have come together to help Kirby on his adventure! Play as a plethora of creatures from across Gamble Galaxy, from stubby Waddle Dees to invincible Gordos!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.german] = "Leute aus aller Welt sind zusammengekommen, um Kirby bei seinem Abenteuer zu helfen! Spiele als eine Vielzahl von Kreaturen aus der gesamten Gamble Galaxy, von stämmigen Waddle Dees bis zu unbesiegbaren Gordos!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.italian] = "I nemici di Kirby ora sono suoi amici: dal tozzo Waddle Dee all'invulnerabile Bombospino.";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.french] = "Des amis de toute part se sont rassemblés pour venir en aide à Kirby dans son aventure ! Jouez avec une multitude de créatures provenant de la galaxie Gamble, de petits Waddle Dee aux Minérissons invincibles !";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.spanish] = "¡Gente de todas partes ha venido a ayudar a Kirby en su aventura! Juega como un sinfín de criaturas de la Galaxia Gamble, ¡desde los blanditos Waddle Dees hasta los invencibles Gordos!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.arabic] = "اجتمع الناس من جميع أنحاء العالم لمساعدة كيربي في مغامرته!  العب كمجموعة كبيرة من المخلوقات من جميع أنحاء Gamble Galaxy ، من Waddle Dees القصير إلى Gordos الذي لا يقهر!";
	#endregion
	
	#region Gooey
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.english] = "While of strange origin, Gooey has a heart of gold, always eager to show up by his friends. With his ridiculously long tongue, he's happy to help Kirby along his adventure!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.german] = "Obwohl Gooey von seltsamer Herkunft ist, hat er ein Herz aus Gold und ist immer bestrebt, bei seinen Freunden aufzutauchen. Mit seiner lächerlich langen Zunge hilft er Kirby gerne bei seinem Abenteuer!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.italian] = "Nonostante la sua strana origine, Gooey ha un cuore d'oro e c'è sempre per i suoi amici. Darà un prezioso aiuto a Kirby e agli altri con la sua lingua incredibilmente lunga!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.french] = "Outre son origine étrange, Gooey possède un cœur d'or, étant toujours présent pour ses amis. À l'aide de sa langue beaucoup trop longue, il est heureux d'aider Kirby dans son aventure !";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.spanish] = "A pesar de su extraño origen, Gooey tiene un corazón de oro, y siempre está dispuesto a apoyar a sus amigos. Con su lengua ridículamente alargada, ¡siempre se alegra de poder ayudar a Kirby en su aventura!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.arabic] = "بينما من أصل غريب ، يتمتع Gooey بقلب من الذهب ، ويتوق دائمًا إلى الظهور من قبل أصدقائه.  بلسانه الطويل السخيف ، يسعده مساعدة كيربي طوال مغامرته!";
	#endregion
	
	#region Magolor
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.english] = "'Flux? I'll show you real power!' This tricky wizard hails from Kirby's Return to Dream Land. He used to be a lying cheat, but he's reformed... right? His otherworldly magic will make short work of your enemies!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.german] = "Flux? Ich zeige dir wahre Macht!' Dieser knifflige Zauberer stammt aus Kirby's Return to Dream Land. Früher war er ein lügender Betrüger, aber er hat sich gebessert ... richtig? Seine jenseitige Magie wird kurzen Prozess mit deinen Feinden machen!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.italian] = "Flusso Mistico? QUESTO è il vero potere! Questo scaltro mago fa il suo ritorno direttamente da Kirby's Adventure Wii. Viene ricordato come un imbroglione, ma è cambiato... Vero???";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.french] = "'Du flux ? Je vais vous montrer de la vraie puissance !' Ce magicien sournois arrive de Kirby's Adventure Wii. Il était autrefois un menteur sans scrupule, mais il a changé... pas vrai ? Sa magie extraordinaire va faire succomber les ennemis !";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.spanish] = "'¿Flux? ¡Yo te enseñaré lo que es un verdadero poder!' Este astuto mago vuelve desde Kirby's Return to Dream Land / Adventure Wii. Solía ser un traidor mentiroso, pero ahora es bueno... ¿no? ¡Gracias a su magia sobrenatural arrasarás con tus enemigos!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.arabic] = "تدفق؟  سأريك القوة الحقيقية!  هذا المعالج المخادع ينحدر من Kirby's Return to Dream Land.  لقد اعتاد أن يكون غشاشًا كاذبًا ، لكنه تم إصلاحه ... أليس كذلك؟  سحره الآخر سيجعل أعدائك يعمدون إلى أعمال قصيرة!";
	#endregion
	
	#region Keeby
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.english] = "While not as adventurous as his friendly rival, Keeby seemed eager to join him on his quest! Can he take a little break from his golfing career?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.german] = "Keeby war zwar nicht so abenteuerlustig wie sein freundlicher Rivale, schien aber begierig darauf zu sein, sich ihm auf seiner Suche anzuschließen! Kann er eine kleine Pause von seiner Golfkarriere einlegen?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.italian] = "Seppur non avventuroso come la sua controparte gioiosa e amichevole, Keeby sembra intenzionato ad aiutare Kirby nella sua nuova avventura! Potrà prendersi una pausa dalla sua carriera di golf?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.french] = "Bien qu'il ne soit pas aussi aventureux que son ami rival, Keeby semblait vouloir l'accompagner dans sa quête ! Peut-il prendre une pause dans sa carrière de golf ?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.spanish] = "Aunque no sea tan aventurero como su rival amistoso, ¡Keeby se ve ansioso por acompañarlo en su misión! ¿Podrá tomarse un descanso de su carrera como golfista?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.arabic] = "مع انه ليس مغامرًا مثل منافسه الودود ، بدا Keeby حريصًا على الانضمام إليه في سعيه!  هل يمكنه أخذ استراحة قصيرة من مسيرته في لعبة الجولف؟";
	#endregion
	#endregion
	
	#region Customize Sub-Menus
	#region Skins
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.english] = "Skins";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.customizeSubMenus_skins][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Spray Paints
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.english] = "Spray Paints";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.customizeSubMenus_sprayPaints][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Hat Skins
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.english] = "Hat Skins";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.customizeSubMenus_hatSkins][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Hat Paints
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.english] = "Hat Paints";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.customizeSubMenus_hatPaints][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Familiars
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.english] = "Familiars";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.customizeSubMenus_familiars][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Spray Paint Titles
	#region Friendly Pink
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.english] = "Friendly Pink";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Yellow
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.english] = "Yellow";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Red
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.english] = "Red";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Green
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.english] = "Green";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Dreamy Blueberry
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.english] = "Dreamy Blueberry";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Carbon
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.english] = "Carbon";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Cherry
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.english] = "Cherry";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Deep Fried Kirb
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.english] = "Deep Fried Kirb";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Emerald
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.english] = "Emerald";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region GameKirb
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.english] = "GameKirb";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Haunting Purple
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.english] = "Haunting Purple";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Invis Sprinkle
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.english] = "Invis Sprinkle";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Monochrome Kirb
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.english] = "Monochrome Kirb";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Yolk Temple
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.english] = "Yolk Temple";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Plump Tomato
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.english] = "Plump Tomato";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Waddle Waddle
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.english] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Mystic
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.english] = "Mystic";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Shadow of the Mirror
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.english] = "Shadow of the Mirror";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Delirious
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.english] = "Delirious";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Greenjolt
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.english] = "Greenjolt";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Butter Knife
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.english] = "Butter Knife";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Blurple
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.english] = "Blurple";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Beam
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.english] = "Beam";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Stone
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.english] = "Stone";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Mirror
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.english] = "Mirror";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Ninja
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.english] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Fire
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.english] = "Fire";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Ice
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.english] = "Ice";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Plasma
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.english] = "Plasma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Unearthly Hand
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.english] = "Unearthly Hand";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region So Meta
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.english] = "So Meta";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Gooey Blue
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.english] = "Gooey Blue";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Egg Brown
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.english] = "Egg Brown";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Telltale Keeby
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.english] = "Telltale Keeby";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Royal Yarn
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.english] = "Royal Yarn";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Smiley White
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.english] = "Smiley White";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Edd
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.english] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Musician's Light
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.english] = "Musician's Light";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Aege
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.english] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.turkish] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.german] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.italian] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.french] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.polish] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.chinese] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.spanish] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.japanese] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.portuguese] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.norwegian] = "Aege";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.title][0][languages.arabic] = "Aege";
	#endregion
	
	#region Stray
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.english] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.turkish] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.german] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.italian] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.french] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.polish] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.chinese] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.spanish] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.japanese] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.portuguese] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.norwegian] = "Stray";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.title][0][languages.arabic] = "Stray";
	#endregion
	
	#region Glitch
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.english] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.turkish] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.german] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.italian] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.french] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.polish] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.chinese] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.spanish] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.japanese] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.portuguese] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.norwegian] = "Glitch";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.title][0][languages.arabic] = "Glitch";
	#endregion
	#endregion
	
	#region Spray Paint Descriptions
	#region Friendly Pink
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.english] = "Kirby's Default!";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Yellow
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.english] = "Yellow like a lemon, very sour!";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Red
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.english] = "Reminiscent of a ripe strawberry, yum!";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Green
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.english] = "Don't worry, it isn't sick!";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Dreamy Blueberry
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.english] = "Resembling a tasty blueberry!";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Carbon
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.english] = "Sharp as a pencil!";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Cherry
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.english] = "Don't eat the cores!";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Deep Fried Kirb
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.english] = "Even my eyes are fried!";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Emerald
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.english] = "Looks valuable!";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region GameKirb
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.english] = "It's that classic, handheld Look!";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Haunting Purple
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.english] = "BOO!";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Invis Sprinkle
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.english] = "Where did they go?";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Monochrome Kirb
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.english] = "Return to Dream Land!";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Yolk Temple
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.english] = "Colors of the thriving egg planet!";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Plump Tomato
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.english] = "Red and ripe for picking!";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Waddle Waddle
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.english] = "Wanya wanya?";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Mystic
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.english] = "Accompanied by nasty flux!";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Shadow of the Mirror
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.english] = "Mischievous reflection!";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Delirious
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.english] = "It's just a dying memory.";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Greenjolt
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.english] = "Gamejolt green!";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Butter Knife
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.english] = "Pairs nicely with toast.";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Blurple
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.english] = "Discord's signature mix of blue and purple.";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Beam
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.english] = "Bright orange of a beam whip!";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Stone
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.english] = "You're gonna need a shower after getting covered in dirt!";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Mirror
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.english] = "The normal reflection!";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Ninja
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.english] = "Silent but deadly!";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Fire
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.english] = "Don't burn yourself on this!";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Ice
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.english] = "Brrrrr... its cold!";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Plasma
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.english] = "BZZZZZZZRT!";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Unearthly Hand
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.english] = "Gamble's default!";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region So Meta
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.english] = "Meta Knight's default, Fight me!";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Gooey Blue
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.english] = "Slurp!";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Egg Brown
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.english] = "A chocolate delight!";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Telltale Keeby
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.english] = "Keeby's default, Golf time already?";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Royal Yarn
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.english] = "Prince Fluff's default, It feels like pants!";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Smiley White
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.english] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.turkish] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.german] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.italian] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.french] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.polish] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.chinese] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.spanish] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.japanese] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.portuguese] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.norwegian] = "...";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.description][0][languages.arabic] = "...";
	#endregion
	
	#region Edd
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.english] = "Subhuman!";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Musician's Light
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.english] = "Shoutouts to LightMetaS!";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Aege
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.english] = "From Kirby Battle Blitz!";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Stray
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.english] = "From Kirby Battle Blitz!";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Glitch
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.english] = "From Kirby Battle Blitz!";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Familiar Titles
	#region Gamble
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.english] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Happy Pea
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.english] = "Happy Pea";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Epic Jar
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.english] = "Epic Jar";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Krackle
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.english] = "Krackle";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Omega Matter
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.english] = "Omega Matter";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Familiar Description
	#region Gamble
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.english] = "Kirby's mysterious companion! He wants to help stop the coming threat.";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Happy Pea
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.english] = "A plant has come to help?! He can keep foes away from Kirby!";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Epic Jar
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.english] = "This scientist brings his inventions to help blow up nearby foes!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Krackle
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.english] = "This little cloud wants to help pursue the violet menace!";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Omega Matter
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.english] = "Hello I am Subsandwich";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Unlock Methods
	#region Default
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.english] = "Default";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Beat Stage Missions
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.english] = "Beat Stage Missions";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Tomatoo Catch 3 Stars
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.english] = "Get 3 Stars on Tomatoo Catch";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Fill 10 Bestiary
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.english] = "Fill 10 entries in the Bestiary";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Fill 25 Bestiary
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.english] = "Fill 25 entries in the Bestiary";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Fill 50 Bestiary
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.english] = "Fill 50 entries in the Bestiary";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Unlock 5 Familiars
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.english] = "Unlock 5 Familiars";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlock5Familiars][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Log Into Gamejolt
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.english] = "Log Into Gamejolt";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Log Into Discord
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.english] = "Log Into Discord";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Beam Gold Medal
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Beam Ability Challenge";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Stone Gold Medal
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Stone Ability Challenge";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Mirror Gold Medal
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Mirror Ability Challenge";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Ninja Gold Medal
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Ninja Ability Challenge";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Fire Gold Medal
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Fire Ability Challenge";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Ice Gold Medal
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Ice Ability Challenge";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Spark Gold Medal
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Spark Ability Challenge";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Unlock Gamble
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.english] = "Unlock ??????";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Unlock Meta Knight
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.english] = "Unlock ???? ??????";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Unlock Gooey
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.english] = "Unlock ?????";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Unlock Magolor
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.english] = "Unlock ???????";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Unlock Keeby
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.english] = "Unlock ?????";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Unlock Prince Fluff
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.english] = "Unlock ?????? ?????";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Secret
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.english] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.german] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.italian] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.french] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Ability Titles
	#region Cutter
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.english] = "Wield a sharp boomerang to slash and dash through enemies!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.german] = "Halte einen scharfen Bumerang, um Feinde zu zerschneiden und zu stürmen!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.italian] = "Brandisci un’affilata lama per scattare attraverso i nemici o tagliarli!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.french] = "Utilise un boomerang aiguisé pour trancher et foncer à travers les ennemis!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.polish] = "Władaj ostrym jak żyletka bumerangiem żeby tnąć i przecinać się przez przeszkody!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.chinese] = "挥动一个锋利的回旋镖砍和冲过敌人!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.spanish] = "¡Porta un afilado bumerán para cortar y atravesar a tus enemigos!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.japanese] = "鋭いブーメランを振り回して、敵を切り裂いたり、ダッシュしたりすることがで きます!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.portuguese] = "Bruk en skarp boomerang for å kutte og stikke gjennom fiender!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.norwegian] = "Empunhe um bumerangue afiado para cortar e atravessar os inimigos!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.arabic] = "إستخدم بوميرانج حاد لتقطيع الأعداء والإندفاع بينهم";
	#endregion
	
	#region Beam
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.english] = "Conjure up rays of electricity to flail around. Charge up to shoot from a distance!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.german] = "Beschwöre Elektrizitätsstrahlen, um herumzuschleudern. Aufladen, um aus der Ferne zu schießen!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.italian] = "Fai apparire raggi di elettricità! Carica per lanciarli da lontano!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.french] = "Projette des rayons d’énergie aux alentours, ou lance une attaque chargée à distance!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.polish] = "Wyczaruj elektryczne promienie żeby trzepać nimi dookoła. załaduj atak żeby wystrzelić z daleka!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.chinese] = "召唤出一束束电来四处链枷. 充电射击从远处！";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.spanish] = "¡Crea un rayo de electricidad y agítalo! ¡Cárgalo para disparar a distancia!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.japanese] = "電気の光線を出します。チャージすると遠くから飛ばすことができます!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.portuguese] = "Tryll frem stråler av elektrisitet for å svinge rundt. Lad opp for å skyte Fra avstand!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.norwegian] = "Invoque raios de eletricidade e agite-os por aí. Carregue para atirar à distância!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.arabic] = "استحضر اشعة كهربائية لتدور حولها، اشحن الاشعة لتطلقها من مسافة بعيدة!";
	#endregion
	
	#region Mystic Beam
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.english] = "The power of flux has turned our Beam into Mystic Beam! The beam shield doubles as an attack!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.german] = "Die Kraft des Flusses hat unseren Strahl in einen mystischen Strahl verwandelt! Der Strahlschild dient auch als Angriff!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.italian] = "Il potere del flusso mistico ha trasformato la tua abilità Raggio nella nuova abilità Raggio Mistico! Lo scudo di raggio funziona anche come attacco!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.french] = " Le pouvoir du flux a transformé le Rayon en Rayon Mystique! Le bouclier peut être utilisé comme attaque!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.polish] = "Poprzez moce Flux'a zmieniło nasz promień w Promień Mityczny! Tarcza z Promienia podwaja się jako atak!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.chinese] = "”Flux“的力量把我们的光束变成了神秘的光束! 光束护盾兼作攻击！";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.spanish] = "¡El poder del flux ha transformado tu Rayo en un Rayo Místico! ¡La barrera eléctrica también sirve de ataque!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.japanese] = "フラックスの力で「ビーム」が「ミスティックビーム」に!? ビームシールドは攻撃にもなります!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.portuguese] = "O poder do fluxo transformou o nosso Raio no Raio Místico! O escudo de raio também funciona como um ataque!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.norwegian] = "Fluxens makten har gjort vår stråle til Mystic Beam! Bjelkeskjoldet dobler som et angrep!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.arabic] = "قوة التدفق حولت الشعاع إلى شعاع روحاني! الشعاع هذا يستخدم كدرع ايضا!";
	#endregion
	
	#region Stone
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.english] = "Turn into a rock and become impenetrable! What are these strange statues?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.german] = "Verwandle dich in einen Felsen und werde undurchdringlich! Was sind das für seltsame Statuen?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.italian] = "Trasformati in una roccia per diventare impenetrabile! Un momento... Cosa sono queste strane statue?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.french] = "Transforme-toi en pierre et deviens impénétrable! Mais quelles sont ces étranges statues?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.polish] = "Zmień się w głaz i stań się raktycznie nietykalny! Czym są te dziwaczne posągi?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.chinese] = "变成岩石，变得坚不可摧！ 这些奇怪的是什么雕像？";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.spanish] = "¡Conviértete en una roca impenetrable! ¿Qué son estas estatuas tan raras?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.japanese] = "岩になって不可侵になります! この不思議な像は何でしょうか?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.portuguese] = "Transforme-se em uma pedra e torne-se impenetrável! Mas o que são essas estátuas estranhas?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.norwegian] = "Slå om til en stein og bli ugjennomtrengelig! Hva er disse merkelige statuer?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.arabic] = "تحول لحجرة وصر منيعا! ما هذه التماثيل الغريبة؟";
	#endregion
	
	#region UFO
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.english] = "Transform into an alien ship and blast enemies with lasers, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.german] = "Verwandle dich in ein außerirdisches Schiff und vernichte Feinde mit Lasern, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.italian] = "Trasformati in un veicolo alieno e spara ai nemici con un potente laser, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.french] = "Transforme-toi en vaisseau alien et détruis tes ennemis avec des lasers, Piou Piou!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.polish] = "Zamień się w statek kosmiczny i rozstrzelaj złe istoty laserami, 'giń, giń, GiŃ!'";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.chinese] = "变身成一艘外星飞船，用激光轰击敌人，皮尤皮尤！";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.spanish] = "¡Transfórmate en una nave alienígena y dispara a tus enemigos! ¡Piu, piu!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.japanese] = "エイリアンの船に変身してレーザーでピューピュー敵を撃ちまくり!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.portuguese] = "Transforme-se em uma nave alienígena e atire em inimigos com lasers, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.norwegian] = "Gjør om til et fremmed skip og spreng fiender med lasere, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.arabic] = "تحول لسفينة فضائية واطلق على الأعداء بالليزر، بيو بيو!";
	#endregion
	
	#region Mirror
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.english] = "Use the power of reflection to send enemy attacks right back at them!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.german] = "Nutze die Kraft der Reflexion, um feindliche Angriffe direkt auf sie zurückzusenden!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.italian] = "Usa il potere del riflesso per rispedire i nemici da dove sono venuti!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.french] = "Utilise le pouvoir des reflets et renvoie leurs attaques aux ennemis!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.polish] = "Użyj mocy odzwierciedleń żeby oddać pociski przeciwników z powrotem do nadawcy!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.chinese] = "使用反射的力量将敌人的攻击直接送回 他们！";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.spanish] = "¡Usa el poder de los reflejos para devolver los ataques a tus enemigos!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.japanese] = "反射の力を使って、敵の攻撃を跳ね返します!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.portuguese] = "Use o poder de reflexos para mandar ataques de inimigos de volta a eles!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.norwegian] = "Bruk refleksjonskraften til å sende fiendtlige angrep rett tilbake til dem!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.arabic] = "استخدم قوة الانعكاس لتعيد ضربات الأعداء عليهم";
	#endregion
	
	#region Ninja
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.english] = "Become an assassin of shadows and strike sneakily!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.german] = "Werde ein Attentäter und schlage hinterhältig zu!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.italian] = "Diventa un assassino di ombre e colpisci furtivamente!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.french] = "Deviens un assassin des ombres et frappe en toute discrétion!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.polish] = "Stań się zabójcą cieni i uderzaj bez zauważenia!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.chinese] = "成为阴影的刺客和偷偷摸摸地罢工！";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.spanish] = "¡Ataca rápida y sigilosamente como un asesino de las sombras!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.japanese] = "影の暗殺者となって、こっそりと攻撃を仕掛けよう。";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.portuguese] = "Torne-se um assassino das sombras e ataque sorrateiramente!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.norwegian] = "Bli en leiemorder og slå lurt!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.arabic] = "صر من مقاتلي الظلال واهجم بخفة";
	#endregion
	
	#region Bomb
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.english] = "Grab a bomb and throw it, but don't hold on too long!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.german] = "Schnapp dir eine Bombe und wirf sie, aber halte nicht zu lange durch!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.italian] = "Afferra e lancia una granata, ma attento a non tenerla in mano per troppo tempo!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.french] = "Prends une bombe et lance-la, mais ne la tiens pas trop longtemps!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.polish] = "Złap bombę w ręce i wyrzuć nią ale uważaj, nie trzymaj ją za długo!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.chinese] = "抓住一个炸弹扔它，但是不要坚持太久！";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.spanish] = "¡Agarra una bomba y lánzala! ¡Pero no la sujetes por demasiado tiempo!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.japanese] = "爆弾を掴んで投げて攻撃しますが、あまり長く持たないように!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.portuguese] = "Pegue uma bomba e lance ela, mas não espere por muito tempo!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.norwegian] = "Ta en bombe og kaste det, men ikke holde det for lenge!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.arabic] = "امسك قنبلة وارمها لتنفجر، لكن لا تمسكها طويلا";
	#endregion
	
	#region Fire
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.english] = "Burn up the competition with powerful flames, yowch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.german] = "Verbrenne die Konkurrenz mit mächtigen Flammen, autsch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.italian] = "Incenerisci gli avversari con potenti fiamme, yowch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.french] = "Brûle la compétition avec de puissantes flammes, outch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.polish] = "Spal swoją konkurencje płomieniami gorącymi jak słońce, parzy!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.chinese] = "燃烧起来的竞争与强大的火焰，哎哟！";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.spanish] = "¡Quema a la competencia con tus poderosas llamas! ¡Auch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.japanese] = "強力な炎で相手を焼き尽くしていくぞ。ヤッホーイ!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.portuguese] = "Queime a competição com labaredas poderosas, aii!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.norwegian] = "Brenn opp konkurransen med kraftige flammer, jøss!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.arabic] = "احرق اعدائك بهذه النيران الملتهبة! ياوتش";
	#endregion
	
	#region Mystic Fire
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.english] = "The power of flux has made your Fire stronger! No need to aim anymore, so burn your foes to the ground!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.german] = "Die Kraft des Flusses hat dein Feuer stärker gemacht! Man müss nicht mehr zielen, also verbrenne die Feinde zu Boden!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.italian] = "Il potere del flusso mistico ha potenziato la tua abilità Fuoco! Non serve più puntare, quindi incenerisci i tuoi avversari senza fermarti!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.french] = "Le pouvoir du flux a rendu ton Feu plus puissant! Plus besoin de viser, réduis tes ennemis en cendres!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.polish] = "Moce Flux'a sprawiły że twój dobrze znany ogień jest teraz znacznie silniejszy! Nie trzeba teraz celować, więc wypal swoich przeciwników dopóki będzie tylko proch na ziemi!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.chinese] = "”Flux“的力量使我们的火势更强! 不需要瞄准了，所以烧你的敌人在地上！";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.spanish] = "¡El poder del flux ha fortalecido tu Fuego! ¡Ya no necesitas apuntar, así que reduce a tus enemigos a cenizas!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.japanese] = "フラックスの力でFireが強くなった！？狙いをつける必要なし、敵を焼き尽くしまくれ!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.portuguese] = "O poder do fluxo fez o seu Fogo ficar mais forte! Não precisa mais mirar, então bote seus inimigos pra queimar!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.norwegian] = "Fluxens makten har gjort brannen vår sterkere! Ikke nødvendig sikte lenger, så brenn fiendene dine til bakken!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.arabic] = "قوة التدفق جعلت النيران أقوى! لا حاجة إلى التصويب بعد الان، فاحرق اعدائك الى الارض!";
	#endregion
	
	#region Ice
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.english] = "Skate around and freeze foes with your cold breath!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.german] = "Schlittschuh herum und friere Feinde mit deinem kalten Atem ein!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.italian] = "Pattina e congela i nemici con il tuo soffio di ghiaccio!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.french] = "Patine et gèle tes ennemis avec ton souffle glacé!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.polish] = "Ślizgaj się i zamarzaj twoje przeszkody swoim lodowatym oddechem i nie tylko!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.chinese] = "溜冰,用你冰冷的呼吸冻住敌人!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.spanish] = "¡Patina libremente y congela a todos con tu aliento helado!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.japanese] = "スケートしながら冷たい息で敵を凍らせていこう。";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.portuguese] = "Patine por aí e congele adversários com seu sopro congelante!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.norwegian] = "Skøyter rundt og frys fiender med ditt kalde pust!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Spark
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.english] = "Mash the directional keys to charge up and zap enemies!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.german] = "Drücke die Richtungstasten, um aufzuladen und die Feinde zu zappen!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.italian] = "Schiaccia i tasti direzionali per caricare ed elettrizzare i nemici!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.french] = "Appuies sur différentes directions pour charger de l’électricité et foudroie les ennemis.";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.polish] = "Roztrzep się na lewo i prawo żeby naelektryzować i zastrzel twoich przeciwników czystą energią elektryczną.";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.chinese] = "捣碎方向键，充电和电死敌人！";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.spanish] = "¡Machaca las flechas direccionales para cargarte y electrocutar enemigos!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.japanese] = "方向キーを押しまくってチャージし、敵を倒していこう。";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.portuguese] = "Aperte rapidamente as setas direcionais para carregar eletricidade e eletrocutar inimigos";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.norwegian] = "Mash retningstastene for å lade opp og zappe fiender";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Yoyo
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.english] = "Slide into action and wave a yoyo with stylish power!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.german] = "Rutsche in Aktion und winke ein Jo-Jo mit stylischer Kraft!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.italian] = "Scivola nell’azione servendoti di uno stiloso Yo-Yo con poteri incredibili!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.french] = "Glisse dans l’action et lance un puissant yoyo avec style!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.polish] = "Wsuń się w akcje i rozmachuj swoim jojo z modną mocą!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.chinese] = "滑入行动和挥动一个”Yoyo”与时尚的力量!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.spanish] = "¡Deslízate a la acción con tu yoyó derrochando poder y estilo!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.japanese] = "アクションをスライドさせて、スタイリッシュなパワーでヨーヨーを振ることができます。";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.portuguese] = "Entre em ação e agite um ioiô com poder estiloso!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.norwegian] = "Dra til handling og vink en yoyo med stilig kraft!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Wheel
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.english] = "Speed through crowds of enemies all while being nearly invincible, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.german] = "Rase durch die Scharen von Feinden, während du fast unbesiegbar bist, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.italian] = "Corri su molti nemici mentre sei quasi invincibile, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.french] = "Fonce à travers tes ennemis en étant presque invincible, vroum-vroum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.polish] = "Przejeżdżaj tłumy Przeciwników podczas gdy jesteś prawie nietykalny, brum brum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.chinese] = "速度通过敌人的人群，而几乎是无敌的, Vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.spanish] = "¡Atropella hordas de enemigos a toda velocidad mientras eres casi invencible! ¡Brrum brrum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.japanese] = "無敵の状態で敵の群れをスピードで切り抜けていこう。ブルーンブルーーン!!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.portuguese] = "Acelere por multidões de inimigos ao mesmo tempo que é quase invencível, vrum vrum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.norwegian] = "Kjør gjennom mengder fiender mens du er nesten uovervinnelig, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Artist
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.english] = "Slap opponents with your brush or paint up an army of drawings to fight alongside you!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.german] = "Schlage Gegner mit deinem Pinsel oder male eine Armee von Zeichnungen auf, um an deiner Seite zu kämpfen!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.italian] = "Schiaffeggia i nemici con il tuo pennello o dipingi degli alleati per farli lottare al tuo fianco!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.french] = "- Frappe tes ennemis avec ton pinceau ou peins une armée de dessins qui combattra à tes côtés!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.polish] = "Uderzaj swoich przeciwników twoim magicznym pędzlem lub namaluj armię rysunków żeby walczyli po twojej stronie!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.chinese] = "用你的画笔拍打对手，或者画出一大堆图画和你并肩作战！";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.spanish] = "¡Golpea a tus oponentes con tu pincel o pinta un ejército de dibujos que lucharán a tu lado!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.japanese] = "ブラシで相手を叩いたり絵の軍隊を作って一緒に戦ったり......";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.portuguese] = "Bata em inimigos com seu pincel ou pinte um exército de desenhos para lutar com você!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.norwegian] = "Slå motstandere med penselen din eller mal opp en hær av tegninger for å kjempe sammen med deg!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Fighter
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.english] = "Turn into a master martial artist and KO your opponents. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.german] = "Verwandle dich in einen Meisterkampfkünstler und KO deine Gegner. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.italian] = "Diventa un maestro di arti marziali e metti KO i nemici! Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.french] = "Deviens un maître des arts martiaux et mets tes adversaires à terre!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.polish] = "Zmień się w mistrza sztuk walki i zadaj K.O twoim przeciwnikom. A-masz!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.chinese] = "变成一个武术大师，KO你的对手。 Kapow！";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.spanish] = "¡Conviértete en un maestro de artes marciales y noquea a tus oponentes! ¡Kapow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.japanese] = "武道の達人になって相手をKOしよう!! ka-POW!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.portuguese] = "Torne-se um mestre das artes marciais e nocauteie seus oponentes. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.norwegian] = "Gjør deg til en kampsportmester og KO motstanderne dine. ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Suplex
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.english] = "Channel the wrestler spirit by grappling enemies and throwing them around!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.german] = "Kanalisieren Sie den Wrestler-Geist, indem Sie Feinde festhalten und sie herumschleudern!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.italian] = "Ottieni lo spirito di un wrestler prendendo e lanciando via i nemici!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.french] = "Manifeste l’esprit du lutteur en saisissant et lançant les ennemis!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.polish] = "Wciel w sobie Duszę prawdziwego zapaśnika poprzez łapanie przeciwników i przerzucanie nimi na różne strony!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.chinese] = "通过抓住敌人和投掷来引导摔跤手的精神他们周围!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.spanish] = "¡Canaliza tu espíritu de luchador libre agarrando a tus enemigos y lanzándolos por ahí!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.japanese] = "プロレスラーの精神を受け継いで敵を掴んで投げ飛ばせ!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.portuguese] = "Canalize o espírito da luta-livre agarrando inimigos e jogando eles por aí!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.norwegian] = "Kanal bryterånden ved å gripe fiender og kaste dem rundt!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Wing
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.english] = "Fly through the skies with grace. dash into enemies or send volleys of feathers at them!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.german] = "Fliegen Sie mit Anmut durch den Himmel. stürze dich in Feinde oder schicke Federsalven auf sie!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.italian] = "Solca i cieli con grazia, scatta sui nemici o colpiscili al volo!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.french] = "Vole dans les airs avec grâce. Fonce sur les ennemis ou lance une volée de plumes vers eux!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.polish] = "Wznieś się swobodnie ku powietrzu i przebijaj się przez przeciwników lub wyrzucaj salwy piór ostrych jak żyletka prosto na żywe przeszkody!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.chinese] = "优雅地飞过天空. 冲向敌人或向他们发射羽毛！";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.spanish] = "¡Vuela por los cielos con elegancia! ¡Embiste a tus enemigos o lánzales ráfagas de plumas!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.japanese] = "空を優雅に飛んで、敵に向かってダッシュしたり、羽根を飛ばしたりしていこう!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.portuguese] = "Voe pelos céus graciosamente. Acelere por inimigos ou mande rajadas de penas contra eles!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.norwegian] = "Fly gjennom himmelen med nåde. skyte inn i fiender eller sende volleys av fjær på dem!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Jet
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.english] = "Charge the engine to zoom forward at supersonic speeds!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.german] = "Lade den Motor auf, um mit Überschallgeschwindigkeit vorwärts zu sausen!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.italian] = "Accendi i motori e viaggia a velocità supersoniche!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.french] = "Charge le moteur pour t’envoler en avant à toute vitesse!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.polish] = "Załaduj silnik i przeleć w te i nazad w szybkości dźwięku!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.chinese] = "为发动机充电，以超音速前进！";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.spanish] = "¡Carga el motor y lánzate volando a velocidades supersónicas!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.japanese] = "エンジンをチャージして、超音速で突き進め!!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.portuguese] = "Carregue o motor para avançar em velocidades supersônicas!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.norwegian] = "Lad motoren for å zoome fremover med supersoniske hastigheter!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Sword
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.english] = "Wield a sharp blade to slice and stab all sorts of things!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.german] = "Schwinge eine scharfe Klinge, um alle möglichen Dinge zu zerschneiden und zu erstechen!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.italian] = "Brandisci una lama tagliente e taglia qualsiasi cosa!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.french] = "Brandis une lame tranchante pour couper et percertoutes sortes de choses!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.polish] = "Władaj ostrzem i rozcinaj przeciwników jak nóż przez masło!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.chinese] = "挥舞着锋利的刀片来切割和刺伤各种各样的东西！";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.spanish] = "¡Empuña una espada afilada para cortar y atravesar todo tipo de objetos y enemigos!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.japanese] = "鋭利な刃物を振り回して、いろいろなものを切ったり刺したりしてみましょう。";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.portuguese] = "Empunhe uma lâmina afiada para fatiar e perfurar todo tipo de coisa!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.norwegian] = "Bruk et skarpt blad for å skjære og stikke alle slags ting!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Parasol
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.english] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.german] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.italian] = "Puoi proteggerti dagli oggetti cadenti, colpire nemici e perfino cadere lentamente!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.french] = "Protège-toi des objets tombants, claque les ennemis, et ralentis les chutes!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.polish] = "Broń się przed spadającymi pociskami, uderzaj przeciwników oraz spadaj powoli, jak piórko!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.chinese] = "保护自己免受坠落物体，重击敌人, 甚至撑着伞慢慢落下！";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.spanish] = "¡Protégete de objetos que caen, golpea enemigos e incluso controla tu velocidad de caída!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.japanese] = "落下物から身を守ったり、敵を叩いたり、さらにはゆっくりと落下することもできます。";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.portuguese] = "Proteja-se de objetos em queda, bata em inimigos e até mesmo caia lentamente com um guarda-chuva!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.norwegian] = "Beskytt deg mot fallende gjenstander, slå fiender og til og med fall sakte med en paraply!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Hammer
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.english] = "Smash enemies with extremely powerful swings of a hammer, ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.german] = "Zerschmettere Feinde mit extrem starken Hammerschlägen, autsch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.italian] = "Schiaccia i nemici agitando un martello estremamente forte, ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.french] = "Fracasse les ennemis en secouant violemment un marteau, aïe!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.polish] = "Zgnieć przeciwników z ekstremalnie silnymi trzepnięciami młota, auć!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.chinese] = "用极其强大的锤子击碎敌人, Ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.spanish] = "¡Aplasta enemigos con los poderosos golpes de tu martillo! ¡Ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.japanese] = "ハンマーの超強力なスイングで敵を粉砕しよう。いてっ";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.portuguese] = "Esmague inimigos com golpes extremamente poderosos de um martelo, ai!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.norwegian] = "Knus fiender med ekstremt kraftige svingninger av en hammer, au!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Bell
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.english] = "Ring ring! dual wield these loud instruments to compose a destructive song!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.german] = "Ring ring! Benutze diese lauten Instrumente, um einen destruktiven Song zu komponieren!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.italian] = "Ring ring! Brandisci questi due strumenti rumorosi per comporre una canzone con effetti devastanti!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.french] = "Ding-dong! Manie ces deux bruyants instruments pour composer une chanson destructrice!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.polish] = "Dzyń dzyń! Władaj dwuręcznie głośnymi dzwonkami żeby utworzyć twoją własną ode do zniszczenia!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.chinese] = "Ring Ring！ 双挥这些响亮的乐器组成一个破坏性的歌曲！";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.spanish] = "¡Ding Dong! ¡Lleva a dos manos estos ruidosos instrumentos para componer una melodía destructiva!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.japanese] = "この大音量の楽器を二つ振り回して、破壊的な曲を作っていこう!!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.portuguese] = "Blim blim! Empunhe esses dois instrumentos barulhentos para compor uma música destrutiva!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.norwegian] = "Ring ring! doble med disse høye instrumentene for å komponere a ødeleggende sang!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Water
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.english] = "Bend water to your will to power wash enemies. surfs up!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.german] = "Beugen Sie Wasser nach Ihrem Willen, um Feinde zu waschen. surft auf!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.italian] = "Sfrutta la potenza dell’acqua per far fuori i nemici… O surfare!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.french] = "Contrôle l’eau à ta guise pour emporter les ennemis. Surfez!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.polish] = "Ukształtuj wode poprzez twoją wolną wole i zrób ostateczną kąpiel twoim wrogom. Uwaga, będzie mokro!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.chinese] = "弯曲水你的意志，权力洗敌人。 冲浪起来！";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.spanish] = "¡Controla el agua a tu antojo para lavar a tus enemigos y surfear sobre ellos!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.japanese] = "水を自在に操り、敵にパワーウォッシュをかけていこう!いい波がきてるぜ!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.portuguese] = "Dobre a água à sua vontade para lavar inimigos. Tá dando onda!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.norwegian] = "Bøy vann til din vilje for å vaske fiender. surfer opp!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Sleep
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.english] =  "Yawn... 5 more minutes... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.turkish] =  "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.german] =  "Gähn... Noch 5 Minuten... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.italian] =  "Yamn... Altri 5 minuti... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.french] =  "Bâille... Encore 5 minutes... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.polish] =  "Chrrrrrrrr... Je-jeszcze pięć minut... chrrrrr...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.chinese] =  "Yawn... 再过5分钟... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.spanish] =  "Uuuaaahhh... Solo 5 minutos más... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.japanese] =  "ふぅぁぁぁ・・・あと5分・・・zzzzzzzzzzz.....";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.portuguese] =  "Uaaaah! Mais cinco minutos... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.norwegian] =  "Gjesp... fem minutter til... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Scan
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.english] = "Use an advanced headset to scan and copy foes abilities!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.german] = "Verwend ein fortschrittliches Headset, um die Fähigkeiten von Feinden zu scannen und zu kopieren!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.italian] = "Usa un’avanzata attrezzatura per scannerizzare e copiare le mosse degli avversari!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.french] = "Utilise un casque high-tech pour copier les capacités des ennemis!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.polish] = "Użyj zaawansowanego hełmu żeby skanować i kopiować przeróżne zdolności!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.chinese] = "使用先进的耳机扫描和复制敌人的能力!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.spanish] = "¡Usa tu visor avanzado para escanear y copiar las habilidades de tus enemigos!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.japanese] = "進化したヘッドセットを使って、敵の能力をスキャンしてコピーしよう。";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.portuguese] = "Use um headset avançado para escanear e copiar as habilidades de inimigos!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.norwegian] = "Bruk en avansert headset og kopier fiendenes evner!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Crash
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.english] = "Clear the whole screen with a single mighty boom!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.german] = "Zerstöre den gesamten Bildschirm mit einer einzigen mächtigen Explosion!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.italian] = "Riempi lo schermo con uno potentissimo BOOM!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.french] = "Balaye tous les ennemis à l’écran avec une puissante explosion!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.polish] = "Wyczyść cały ekran poprzez jeden spory wybuch!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.chinese] = "用一个强大的轰隆声清除整个屏幕!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.spanish] = "¡Despeja toda la pantalla con una gran explosión!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.japanese] = "画面全体を豪快に一発で消し去れ!!!!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.portuguese] = "Limpe a tela inteira com uma única explosão poderosa!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.norwegian] = "Fjern hele skjermen med en kraftig bom!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Mic
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.english] = "Use your powerful singing skill to defeat all the enemies around you! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.german] = "Nutze deine mächtigen Gesangskünste, um alle Feinde um dich herum zu besiegen! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.italian] = "Usa le tue potenti abilità canore per sconfiggere i nemici intorno a te! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.french] = "Terrasse tous les ennemis en vue à l’aide de tes talents de chanteur! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.polish] = "Użyj swoje zdolności śpiewu żeby pokonać wszystkich przeciwników dookoła ciebie! 'CZYSTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.chinese] = "使用你强大的歌唱技巧来击败你周围的所有敌人！’CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.spanish] = "¡Usa tu poderosa técnica vocal para derrotar a todos los enemigos que te rodean! '¡CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.japanese] = "パワフルな歌唱力で周りの敵を倒していきましょう!!!‘チェストォォ!!!!!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.portuguese] = "Use a sua poderosa habilidade de canto para derrotar todos os inimigos ao seu redor! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.norwegian] = "Bruk din kraftige sangferdighet for å beseire alle fiendene rundt deg! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Ultra Sword
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.english] = "This huge sword can devastate enemies and your terrain with pure destructive power! Slice and dice!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.german] = "Dieses riesige Schwert kann Feinde und dein Gelände mit purer Zerstörungskraft verwüsten! In Würfel schneiden!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.italian] = "Quest’enorme spada può devastare i nemici e il terreno con puro potere distruttivo! Slice and dice!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.french] = "Cette énorme épée peut anéantir les ennemis et le terrain avec une force destructrice! Tranche et hache!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.polish] = "Ten Spory Miecz z łatwością przecina i niszczy przeciwników oraz twoje otoczenie z czystą mocą ZNISZCZENIA! Tnij i rozcinaj!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.chinese] = "这个巨大的剑可以摧毁敌人和的地形 拥有纯粹的破坏力！ 切片和切块!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.spanish] = "¡Esta espada gigante puede arrasar tanto con enemigos como con el terreno con puro poder destructivo! ¡Corta y trocea!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.japanese] = "この巨大な剣は、敵と自分の地形を破壊することができる純粋な破壊力があります!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.portuguese] = "Esta espada enorme pode devastar inimigos e seu terreno com puro poder destrutivo! Fatie e pique!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.norwegian] = "Dette enorme sverdet kan ødelegge fiender og terrenget ditt med ren ødeleggende kraft! Skjære og kutte!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Ability Descriptions
	#region Cutter
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.english] = "Wield a sharp boomerang to slash and dash through enemies!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.german] = "Halte einen scharfen Bumerang, um Feinde zu zerschneiden und zu stürmen!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.italian] = "Brandisci un’affilata lama per scattare attraverso i nemici o tagliarli!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.french] = "Utilise un boomerang aiguisé pour trancher et foncer à travers les ennemis!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.polish] = "Władaj ostrym jak żyletka bumerangiem żeby tnąć i przecinać się przez przeszkody!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.chinese] = "挥动一个锋利的回旋镖砍和冲过敌人!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.spanish] = "¡Porta un afilado bumerán para cortar y atravesar a tus enemigos!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.japanese] = "鋭いブーメランを振り回して、敵を切り裂いたり、ダッシュしたりすることがで きます!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.portuguese] = "Bruk en skarp boomerang for å kutte og stikke gjennom fiender!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.norwegian] = "Empunhe um bumerangue afiado para cortar e atravessar os inimigos!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.arabic] = "إستخدم بوميرانج حاد لتقطيع الأعداء والإندفاع بينهم";
	#endregion
	
	#region Beam
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.english] = "Conjure up rays of electricity to flail around. Charge up to shoot from a distance!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.german] = "Beschwöre Elektrizitätsstrahlen, um herumzuschleudern. Aufladen, um aus der Ferne zu schießen!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.italian] = "Fai apparire raggi di elettricità! Carica per lanciarli da lontano!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.french] = "Projette des rayons d’énergie aux alentours, ou lance une attaque chargée à distance!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.polish] = "Wyczaruj elektryczne promienie żeby trzepać nimi dookoła. załaduj atak żeby wystrzelić z daleka!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.chinese] = "召唤出一束束电来四处链枷. 充电射击从远处！";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.spanish] = "¡Crea un rayo de electricidad y agítalo! ¡Cárgalo para disparar a distancia!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.japanese] = "電気の光線を出します。チャージすると遠くから飛ばすことができます!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.portuguese] = "Tryll frem stråler av elektrisitet for å svinge rundt. Lad opp for å skyte Fra avstand!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.norwegian] = "Invoque raios de eletricidade e agite-os por aí. Carregue para atirar à distância!";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.arabic] = "استحضر اشعة كهربائية لتدور حولها، اشحن الاشعة لتطلقها من مسافة بعيدة!";
	#endregion
	
	#region Mystic Beam
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.english] = "The power of flux has turned our Beam into Mystic Beam! The beam shield doubles as an attack!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.german] = "Die Kraft des Flusses hat unseren Strahl in einen mystischen Strahl verwandelt! Der Strahlschild dient auch als Angriff!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.italian] = "Il potere del flusso mistico ha trasformato la tua abilità Raggio nella nuova abilità Raggio Mistico! Lo scudo di raggio funziona anche come attacco!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.french] = " Le pouvoir du flux a transformé le Rayon en Rayon Mystique! Le bouclier peut être utilisé comme attaque!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.polish] = "Poprzez moce Flux'a zmieniło nasz promień w Promień Mityczny! Tarcza z Promienia podwaja się jako atak!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.chinese] = "”Flux“的力量把我们的光束变成了神秘的光束! 光束护盾兼作攻击！";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.spanish] = "¡El poder del flux ha transformado tu Rayo en un Rayo Místico! ¡La barrera eléctrica también sirve de ataque!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.japanese] = "フラックスの力で「ビーム」が「ミスティックビーム」に!? ビームシールドは攻撃にもなります!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.portuguese] = "O poder do fluxo transformou o nosso Raio no Raio Místico! O escudo de raio também funciona como um ataque!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.norwegian] = "Fluxens makten har gjort vår stråle til Mystic Beam! Bjelkeskjoldet dobler som et angrep!";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.arabic] = "قوة التدفق حولت الشعاع إلى شعاع روحاني! الشعاع هذا يستخدم كدرع ايضا!";
	#endregion
	
	#region Stone
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.english] = "Turn into a rock and become impenetrable! What are these strange statues?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.german] = "Verwandle dich in einen Felsen und werde undurchdringlich! Was sind das für seltsame Statuen?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.italian] = "Trasformati in una roccia per diventare impenetrabile! Un momento... Cosa sono queste strane statue?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.french] = "Transforme-toi en pierre et deviens impénétrable! Mais quelles sont ces étranges statues?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.polish] = "Zmień się w głaz i stań się raktycznie nietykalny! Czym są te dziwaczne posągi?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.chinese] = "变成岩石，变得坚不可摧！ 这些奇怪的是什么雕像？";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.spanish] = "¡Conviértete en una roca impenetrable! ¿Qué son estas estatuas tan raras?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.japanese] = "岩になって不可侵になります! この不思議な像は何でしょうか?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.portuguese] = "Transforme-se em uma pedra e torne-se impenetrável! Mas o que são essas estátuas estranhas?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.norwegian] = "Slå om til en stein og bli ugjennomtrengelig! Hva er disse merkelige statuer?";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.arabic] = "تحول لحجرة وصر منيعا! ما هذه التماثيل الغريبة؟";
	#endregion
	
	#region UFO
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.english] = "Transform into an alien ship and blast enemies with lasers, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.german] = "Verwandle dich in ein außerirdisches Schiff und vernichte Feinde mit Lasern, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.italian] = "Trasformati in un veicolo alieno e spara ai nemici con un potente laser, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.french] = "Transforme-toi en vaisseau alien et détruis tes ennemis avec des lasers, Piou Piou!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.polish] = "Zamień się w statek kosmiczny i rozstrzelaj złe istoty laserami, 'giń, giń, GiŃ!'";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.chinese] = "变身成一艘外星飞船，用激光轰击敌人，皮尤皮尤！";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.spanish] = "¡Transfórmate en una nave alienígena y dispara a tus enemigos! ¡Piu, piu!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.japanese] = "エイリアンの船に変身してレーザーでピューピュー敵を撃ちまくり!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.portuguese] = "Transforme-se em uma nave alienígena e atire em inimigos com lasers, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.norwegian] = "Gjør om til et fremmed skip og spreng fiender med lasere, pew pew!";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.arabic] = "تحول لسفينة فضائية واطلق على الأعداء بالليزر، بيو بيو!";
	#endregion
	
	#region Mirror
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.english] = "Use the power of reflection to send enemy attacks right back at them!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.german] = "Nutze die Kraft der Reflexion, um feindliche Angriffe direkt auf sie zurückzusenden!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.italian] = "Usa il potere del riflesso per rispedire i nemici da dove sono venuti!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.french] = "Utilise le pouvoir des reflets et renvoie leurs attaques aux ennemis!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.polish] = "Użyj mocy odzwierciedleń żeby oddać pociski przeciwników z powrotem do nadawcy!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.chinese] = "使用反射的力量将敌人的攻击直接送回 他们！";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.spanish] = "¡Usa el poder de los reflejos para devolver los ataques a tus enemigos!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.japanese] = "反射の力を使って、敵の攻撃を跳ね返します!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.portuguese] = "Use o poder de reflexos para mandar ataques de inimigos de volta a eles!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.norwegian] = "Bruk refleksjonskraften til å sende fiendtlige angrep rett tilbake til dem!";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.arabic] = "استخدم قوة الانعكاس لتعيد ضربات الأعداء عليهم";
	#endregion
	
	#region Ninja
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.english] = "Become an assassin of shadows and strike sneakily!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.german] = "Werde ein Attentäter und schlage hinterhältig zu!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.italian] = "Diventa un assassino di ombre e colpisci furtivamente!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.french] = "Deviens un assassin des ombres et frappe en toute discrétion!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.polish] = "Stań się zabójcą cieni i uderzaj bez zauważenia!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.chinese] = "成为阴影的刺客和偷偷摸摸地罢工！";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.spanish] = "¡Ataca rápida y sigilosamente como un asesino de las sombras!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.japanese] = "影の暗殺者となって、こっそりと攻撃を仕掛けよう。";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.portuguese] = "Torne-se um assassino das sombras e ataque sorrateiramente!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.norwegian] = "Bli en leiemorder og slå lurt!";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.arabic] = "صر من مقاتلي الظلال واهجم بخفة";
	#endregion
	
	#region Bomb
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.english] = "Grab a bomb and throw it, but don't hold on too long!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.german] = "Schnapp dir eine Bombe und wirf sie, aber halte nicht zu lange durch!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.italian] = "Afferra e lancia una granata, ma attento a non tenerla in mano per troppo tempo!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.french] = "Prends une bombe et lance-la, mais ne la tiens pas trop longtemps!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.polish] = "Złap bombę w ręce i wyrzuć nią ale uważaj, nie trzymaj ją za długo!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.chinese] = "抓住一个炸弹扔它，但是不要坚持太久！";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.spanish] = "¡Agarra una bomba y lánzala! ¡Pero no la sujetes por demasiado tiempo!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.japanese] = "爆弾を掴んで投げて攻撃しますが、あまり長く持たないように!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.portuguese] = "Pegue uma bomba e lance ela, mas não espere por muito tempo!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.norwegian] = "Ta en bombe og kaste det, men ikke holde det for lenge!";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.arabic] = "امسك قنبلة وارمها لتنفجر، لكن لا تمسكها طويلا";
	#endregion
	
	#region Fire
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.english] = "Burn up the competition with powerful flames, yowch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.german] = "Verbrenne die Konkurrenz mit mächtigen Flammen, autsch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.italian] = "Incenerisci gli avversari con potenti fiamme, yowch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.french] = "Brûle la compétition avec de puissantes flammes, outch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.polish] = "Spal swoją konkurencje płomieniami gorącymi jak słońce, parzy!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.chinese] = "燃烧起来的竞争与强大的火焰，哎哟！";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.spanish] = "¡Quema a la competencia con tus poderosas llamas! ¡Auch!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.japanese] = "強力な炎で相手を焼き尽くしていくぞ。ヤッホーイ!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.portuguese] = "Queime a competição com labaredas poderosas, aii!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.norwegian] = "Brenn opp konkurransen med kraftige flammer, jøss!";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.arabic] = "احرق اعدائك بهذه النيران الملتهبة! ياوتش";
	#endregion
	
	#region Mystic Fire
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.english] = "The power of flux has made your Fire stronger! No need to aim anymore, so burn your foes to the ground!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.german] = "Die Kraft des Flusses hat dein Feuer stärker gemacht! Man müss nicht mehr zielen, also verbrenne die Feinde zu Boden!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.italian] = "Il potere del flusso mistico ha potenziato la tua abilità Fuoco! Non serve più puntare, quindi incenerisci i tuoi avversari senza fermarti!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.french] = "Le pouvoir du flux a rendu ton Feu plus puissant! Plus besoin de viser, réduis tes ennemis en cendres!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.polish] = "Moce Flux'a sprawiły że twój dobrze znany ogień jest teraz znacznie silniejszy! Nie trzeba teraz celować, więc wypal swoich przeciwników dopóki będzie tylko proch na ziemi!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.chinese] = "”Flux“的力量使我们的火势更强! 不需要瞄准了，所以烧你的敌人在地上！";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.spanish] = "¡El poder del flux ha fortalecido tu Fuego! ¡Ya no necesitas apuntar, así que reduce a tus enemigos a cenizas!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.japanese] = "フラックスの力でFireが強くなった！？狙いをつける必要なし、敵を焼き尽くしまくれ!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.portuguese] = "O poder do fluxo fez o seu Fogo ficar mais forte! Não precisa mais mirar, então bote seus inimigos pra queimar!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.norwegian] = "Fluxens makten har gjort brannen vår sterkere! Ikke nødvendig sikte lenger, så brenn fiendene dine til bakken!";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.arabic] = "قوة التدفق جعلت النيران أقوى! لا حاجة إلى التصويب بعد الان، فاحرق اعدائك الى الارض!";
	#endregion
	
	#region Ice
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.english] = "Skate around and freeze foes with your cold breath!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.german] = "Schlittschuh herum und friere Feinde mit deinem kalten Atem ein!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.italian] = "Pattina e congela i nemici con il tuo soffio di ghiaccio!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.french] = "Patine et gèle tes ennemis avec ton souffle glacé!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.polish] = "Ślizgaj się i zamarzaj twoje przeszkody swoim lodowatym oddechem i nie tylko!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.chinese] = "溜冰,用你冰冷的呼吸冻住敌人!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.spanish] = "¡Patina libremente y congela a todos con tu aliento helado!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.japanese] = "スケートしながら冷たい息で敵を凍らせていこう。";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.portuguese] = "Patine por aí e congele adversários com seu sopro congelante!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.norwegian] = "Skøyter rundt og frys fiender med ditt kalde pust!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Spark
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.english] = "Mash the directional keys to charge up and zap enemies!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.german] = "Drücke die Richtungstasten, um aufzuladen und die Feinde zu zappen!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.italian] = "Schiaccia i tasti direzionali per caricare ed elettrizzare i nemici!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.french] = "Appuies sur différentes directions pour charger de l’électricité et foudroie les ennemis.";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.polish] = "Roztrzep się na lewo i prawo żeby naelektryzować i zastrzel twoich przeciwników czystą energią elektryczną.";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.chinese] = "捣碎方向键，充电和电死敌人！";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.spanish] = "¡Machaca las flechas direccionales para cargarte y electrocutar enemigos!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.japanese] = "方向キーを押しまくってチャージし、敵を倒していこう。";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.portuguese] = "Aperte rapidamente as setas direcionais para carregar eletricidade e eletrocutar inimigos";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.norwegian] = "Mash retningstastene for å lade opp og zappe fiender";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Yoyo
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.english] = "Slide into action and wave a yoyo with stylish power!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.german] = "Rutsche in Aktion und winke ein Jo-Jo mit stylischer Kraft!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.italian] = "Scivola nell’azione servendoti di uno stiloso Yo-Yo con poteri incredibili!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.french] = "Glisse dans l’action et lance un puissant yoyo avec style!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.polish] = "Wsuń się w akcje i rozmachuj swoim jojo z modną mocą!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.chinese] = "滑入行动和挥动一个”Yoyo”与时尚的力量!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.spanish] = "¡Deslízate a la acción con tu yoyó derrochando poder y estilo!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.japanese] = "アクションをスライドさせて、スタイリッシュなパワーでヨーヨーを振ることができます。";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.portuguese] = "Entre em ação e agite um ioiô com poder estiloso!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.norwegian] = "Dra til handling og vink en yoyo med stilig kraft!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Wheel
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.english] = "Speed through crowds of enemies all while being nearly invincible, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.german] = "Rase durch die Scharen von Feinden, während du fast unbesiegbar bist, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.italian] = "Corri su molti nemici mentre sei quasi invincibile, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.french] = "Fonce à travers tes ennemis en étant presque invincible, vroum-vroum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.polish] = "Przejeżdżaj tłumy Przeciwników podczas gdy jesteś prawie nietykalny, brum brum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.chinese] = "速度通过敌人的人群，而几乎是无敌的, Vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.spanish] = "¡Atropella hordas de enemigos a toda velocidad mientras eres casi invencible! ¡Brrum brrum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.japanese] = "無敵の状態で敵の群れをスピードで切り抜けていこう。ブルーンブルーーン!!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.portuguese] = "Acelere por multidões de inimigos ao mesmo tempo que é quase invencível, vrum vrum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.norwegian] = "Kjør gjennom mengder fiender mens du er nesten uovervinnelig, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Artist
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.english] = "Slap opponents with your brush or paint up an army of drawings to fight alongside you!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.german] = "Schlage Gegner mit deinem Pinsel oder male eine Armee von Zeichnungen auf, um an deiner Seite zu kämpfen!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.italian] = "Schiaffeggia i nemici con il tuo pennello o dipingi degli alleati per farli lottare al tuo fianco!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.french] = "- Frappe tes ennemis avec ton pinceau ou peins une armée de dessins qui combattra à tes côtés!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.polish] = "Uderzaj swoich przeciwników twoim magicznym pędzlem lub namaluj armię rysunków żeby walczyli po twojej stronie!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.chinese] = "用你的画笔拍打对手，或者画出一大堆图画和你并肩作战！";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.spanish] = "¡Golpea a tus oponentes con tu pincel o pinta un ejército de dibujos que lucharán a tu lado!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.japanese] = "ブラシで相手を叩いたり絵の軍隊を作って一緒に戦ったり......";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.portuguese] = "Bata em inimigos com seu pincel ou pinte um exército de desenhos para lutar com você!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.norwegian] = "Slå motstandere med penselen din eller mal opp en hær av tegninger for å kjempe sammen med deg!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Fighter
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.english] = "Turn into a master martial artist and KO your opponents. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.german] = "Verwandle dich in einen Meisterkampfkünstler und KO deine Gegner. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.italian] = "Diventa un maestro di arti marziali e metti KO i nemici! Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.french] = "Deviens un maître des arts martiaux et mets tes adversaires à terre!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.polish] = "Zmień się w mistrza sztuk walki i zadaj K.O twoim przeciwnikom. A-masz!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.chinese] = "变成一个武术大师，KO你的对手。 Kapow！";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.spanish] = "¡Conviértete en un maestro de artes marciales y noquea a tus oponentes! ¡Kapow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.japanese] = "武道の達人になって相手をKOしよう!! ka-POW!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.portuguese] = "Torne-se um mestre das artes marciais e nocauteie seus oponentes. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.norwegian] = "Gjør deg til en kampsportmester og KO motstanderne dine. ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Suplex
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.english] = "Channel the wrestler spirit by grappling enemies and throwing them around!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.german] = "Kanalisieren Sie den Wrestler-Geist, indem Sie Feinde festhalten und sie herumschleudern!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.italian] = "Ottieni lo spirito di un wrestler prendendo e lanciando via i nemici!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.french] = "Manifeste l’esprit du lutteur en saisissant et lançant les ennemis!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.polish] = "Wciel w sobie Duszę prawdziwego zapaśnika poprzez łapanie przeciwników i przerzucanie nimi na różne strony!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.chinese] = "通过抓住敌人和投掷来引导摔跤手的精神他们周围!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.spanish] = "¡Canaliza tu espíritu de luchador libre agarrando a tus enemigos y lanzándolos por ahí!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.japanese] = "プロレスラーの精神を受け継いで敵を掴んで投げ飛ばせ!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.portuguese] = "Canalize o espírito da luta-livre agarrando inimigos e jogando eles por aí!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.norwegian] = "Kanal bryterånden ved å gripe fiender og kaste dem rundt!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Wing
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.english] = "Fly through the skies with grace. dash into enemies or send volleys of feathers at them!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.german] = "Fliegen Sie mit Anmut durch den Himmel. stürze dich in Feinde oder schicke Federsalven auf sie!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.italian] = "Solca i cieli con grazia, scatta sui nemici o colpiscili al volo!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.french] = "Vole dans les airs avec grâce. Fonce sur les ennemis ou lance une volée de plumes vers eux!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.polish] = "Wznieś się swobodnie ku powietrzu i przebijaj się przez przeciwników lub wyrzucaj salwy piór ostrych jak żyletka prosto na żywe przeszkody!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.chinese] = "优雅地飞过天空. 冲向敌人或向他们发射羽毛！";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.spanish] = "¡Vuela por los cielos con elegancia! ¡Embiste a tus enemigos o lánzales ráfagas de plumas!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.japanese] = "空を優雅に飛んで、敵に向かってダッシュしたり、羽根を飛ばしたりしていこう!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.portuguese] = "Voe pelos céus graciosamente. Acelere por inimigos ou mande rajadas de penas contra eles!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.norwegian] = "Fly gjennom himmelen med nåde. skyte inn i fiender eller sende volleys av fjær på dem!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Jet
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.english] = "Charge the engine to zoom forward at supersonic speeds!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.german] = "Lade den Motor auf, um mit Überschallgeschwindigkeit vorwärts zu sausen!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.italian] = "Accendi i motori e viaggia a velocità supersoniche!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.french] = "Charge le moteur pour t’envoler en avant à toute vitesse!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.polish] = "Załaduj silnik i przeleć w te i nazad w szybkości dźwięku!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.chinese] = "为发动机充电，以超音速前进！";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.spanish] = "¡Carga el motor y lánzate volando a velocidades supersónicas!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.japanese] = "エンジンをチャージして、超音速で突き進め!!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.portuguese] = "Carregue o motor para avançar em velocidades supersônicas!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.norwegian] = "Lad motoren for å zoome fremover med supersoniske hastigheter!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Sword
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.english] = "Wield a sharp blade to slice and stab all sorts of things!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.german] = "Schwinge eine scharfe Klinge, um alle möglichen Dinge zu zerschneiden und zu erstechen!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.italian] = "Brandisci una lama tagliente e taglia qualsiasi cosa!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.french] = "Brandis une lame tranchante pour couper et percertoutes sortes de choses!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.polish] = "Władaj ostrzem i rozcinaj przeciwników jak nóż przez masło!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.chinese] = "挥舞着锋利的刀片来切割和刺伤各种各样的东西！";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.spanish] = "¡Empuña una espada afilada para cortar y atravesar todo tipo de objetos y enemigos!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.japanese] = "鋭利な刃物を振り回して、いろいろなものを切ったり刺したりしてみましょう。";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.portuguese] = "Empunhe uma lâmina afiada para fatiar e perfurar todo tipo de coisa!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.norwegian] = "Bruk et skarpt blad for å skjære og stikke alle slags ting!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Parasol
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.english] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.german] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.italian] = "Puoi proteggerti dagli oggetti cadenti, colpire nemici e perfino cadere lentamente!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.french] = "Protège-toi des objets tombants, claque les ennemis, et ralentis les chutes!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.polish] = "Broń się przed spadającymi pociskami, uderzaj przeciwników oraz spadaj powoli, jak piórko!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.chinese] = "保护自己免受坠落物体，重击敌人, 甚至撑着伞慢慢落下！";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.spanish] = "¡Protégete de objetos que caen, golpea enemigos e incluso controla tu velocidad de caída!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.japanese] = "落下物から身を守ったり、敵を叩いたり、さらにはゆっくりと落下することもできます。";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.portuguese] = "Proteja-se de objetos em queda, bata em inimigos e até mesmo caia lentamente com um guarda-chuva!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.norwegian] = "Beskytt deg mot fallende gjenstander, slå fiender og til og med fall sakte med en paraply!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Hammer
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.english] = "Smash enemies with extremely powerful swings of a hammer, ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.german] = "Zerschmettere Feinde mit extrem starken Hammerschlägen, autsch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.italian] = "Schiaccia i nemici agitando un martello estremamente forte, ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.french] = "Fracasse les ennemis en secouant violemment un marteau, aïe!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.polish] = "Zgnieć przeciwników z ekstremalnie silnymi trzepnięciami młota, auć!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.chinese] = "用极其强大的锤子击碎敌人, Ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.spanish] = "¡Aplasta enemigos con los poderosos golpes de tu martillo! ¡Ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.japanese] = "ハンマーの超強力なスイングで敵を粉砕しよう。いてっ";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.portuguese] = "Esmague inimigos com golpes extremamente poderosos de um martelo, ai!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.norwegian] = "Knus fiender med ekstremt kraftige svingninger av en hammer, au!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Bell
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.english] = "Ring ring! dual wield these loud instruments to compose a destructive song!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.german] = "Ring ring! Benutze diese lauten Instrumente, um einen destruktiven Song zu komponieren!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.italian] = "Ring ring! Brandisci questi due strumenti rumorosi per comporre una canzone con effetti devastanti!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.french] = "Ding-dong! Manie ces deux bruyants instruments pour composer une chanson destructrice!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.polish] = "Dzyń dzyń! Władaj dwuręcznie głośnymi dzwonkami żeby utworzyć twoją własną ode do zniszczenia!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.chinese] = "Ring Ring！ 双挥这些响亮的乐器组成一个破坏性的歌曲！";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.spanish] = "¡Ding Dong! ¡Lleva a dos manos estos ruidosos instrumentos para componer una melodía destructiva!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.japanese] = "この大音量の楽器を二つ振り回して、破壊的な曲を作っていこう!!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.portuguese] = "Blim blim! Empunhe esses dois instrumentos barulhentos para compor uma música destrutiva!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.norwegian] = "Ring ring! doble med disse høye instrumentene for å komponere a ødeleggende sang!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Water
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.english] = "Bend water to your will to power wash enemies. surfs up!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.german] = "Beugen Sie Wasser nach Ihrem Willen, um Feinde zu waschen. surft auf!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.italian] = "Sfrutta la potenza dell’acqua per far fuori i nemici… O surfare!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.french] = "Contrôle l’eau à ta guise pour emporter les ennemis. Surfez!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.polish] = "Ukształtuj wode poprzez twoją wolną wole i zrób ostateczną kąpiel twoim wrogom. Uwaga, będzie mokro!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.chinese] = "弯曲水你的意志，权力洗敌人。 冲浪起来！";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.spanish] = "¡Controla el agua a tu antojo para lavar a tus enemigos y surfear sobre ellos!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.japanese] = "水を自在に操り、敵にパワーウォッシュをかけていこう!いい波がきてるぜ!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.portuguese] = "Dobre a água à sua vontade para lavar inimigos. Tá dando onda!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.norwegian] = "Bøy vann til din vilje for å vaske fiender. surfer opp!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Sleep
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.english] =  "Yawn... 5 more minutes... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.turkish] =  "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.german] =  "Gähn... Noch 5 Minuten... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.italian] =  "Yamn... Altri 5 minuti... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.french] =  "Bâille... Encore 5 minutes... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.polish] =  "Chrrrrrrrr... Je-jeszcze pięć minut... chrrrrr...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.chinese] =  "Yawn... 再过5分钟... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.spanish] =  "Uuuaaahhh... Solo 5 minutos más... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.japanese] =  "ふぅぁぁぁ・・・あと5分・・・zzzzzzzzzzz.....";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.portuguese] =  "Uaaaah! Mais cinco minutos... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.norwegian] =  "Gjesp... fem minutter til... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Scan
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.english] = "Use an advanced headset to scan and copy foes abilities!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.german] = "Verwend ein fortschrittliches Headset, um die Fähigkeiten von Feinden zu scannen und zu kopieren!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.italian] = "Usa un’avanzata attrezzatura per scannerizzare e copiare le mosse degli avversari!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.french] = "Utilise un casque high-tech pour copier les capacités des ennemis!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.polish] = "Użyj zaawansowanego hełmu żeby skanować i kopiować przeróżne zdolności!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.chinese] = "使用先进的耳机扫描和复制敌人的能力!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.spanish] = "¡Usa tu visor avanzado para escanear y copiar las habilidades de tus enemigos!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.japanese] = "進化したヘッドセットを使って、敵の能力をスキャンしてコピーしよう。";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.portuguese] = "Use um headset avançado para escanear e copiar as habilidades de inimigos!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.norwegian] = "Bruk en avansert headset og kopier fiendenes evner!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Crash
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.english] = "Clear the whole screen with a single mighty boom!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.german] = "Zerstöre den gesamten Bildschirm mit einer einzigen mächtigen Explosion!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.italian] = "Riempi lo schermo con uno potentissimo BOOM!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.french] = "Balaye tous les ennemis à l’écran avec une puissante explosion!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.polish] = "Wyczyść cały ekran poprzez jeden spory wybuch!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.chinese] = "用一个强大的轰隆声清除整个屏幕!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.spanish] = "¡Despeja toda la pantalla con una gran explosión!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.japanese] = "画面全体を豪快に一発で消し去れ!!!!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.portuguese] = "Limpe a tela inteira com uma única explosão poderosa!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.norwegian] = "Fjern hele skjermen med en kraftig bom!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Mic
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.english] = "Use your powerful singing skill to defeat all the enemies around you! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.german] = "Nutze deine mächtigen Gesangskünste, um alle Feinde um dich herum zu besiegen! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.italian] = "Usa le tue potenti abilità canore per sconfiggere i nemici intorno a te! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.french] = "Terrasse tous les ennemis en vue à l’aide de tes talents de chanteur! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.polish] = "Użyj swoje zdolności śpiewu żeby pokonać wszystkich przeciwników dookoła ciebie! 'CZYSTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.chinese] = "使用你强大的歌唱技巧来击败你周围的所有敌人！’CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.spanish] = "¡Usa tu poderosa técnica vocal para derrotar a todos los enemigos que te rodean! '¡CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.japanese] = "パワフルな歌唱力で周りの敵を倒していきましょう!!!‘チェストォォ!!!!!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.portuguese] = "Use a sua poderosa habilidade de canto para derrotar todos os inimigos ao seu redor! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.norwegian] = "Bruk din kraftige sangferdighet for å beseire alle fiendene rundt deg! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Ultra Sword
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.english] = "This huge sword can devastate enemies and your terrain with pure destructive power! Slice and dice!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.german] = "Dieses riesige Schwert kann Feinde und dein Gelände mit purer Zerstörungskraft verwüsten! In Würfel schneiden!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.italian] = "Quest’enorme spada può devastare i nemici e il terreno con puro potere distruttivo! Slice and dice!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.french] = "Cette énorme épée peut anéantir les ennemis et le terrain avec une force destructrice! Tranche et hache!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.polish] = "Ten Spory Miecz z łatwością przecina i niszczy przeciwników oraz twoje otoczenie z czystą mocą ZNISZCZENIA! Tnij i rozcinaj!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.chinese] = "这个巨大的剑可以摧毁敌人和的地形 拥有纯粹的破坏力！ 切片和切块!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.spanish] = "¡Esta espada gigante puede arrasar tanto con enemigos como con el terreno con puro poder destructivo! ¡Corta y trocea!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.japanese] = "この巨大な剣は、敵と自分の地形を破壊することができる純粋な破壊力があります!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.portuguese] = "Esta espada enorme pode devastar inimigos e seu terreno com puro poder destrutivo! Fatie e pique!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.norwegian] = "Dette enorme sverdet kan ødelegge fiender og terrenget ditt med ren ødeleggende kraft! Skjære og kutte!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Enemy Titles
	#region Waddle Dee
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.english] = "Waddle Dee";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.german] = "Waddle Dee";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.italian] = "Waddle Dee";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.french] = "Waddle Dee";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.polish] = "Waddle Dee";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.spanish] = "Waddle Dee";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.japanese] = "ワドルディ";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Waddle Doo
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.english] = "Waddle Doo";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.german] = "Waddle Doo";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.italian] = "Waddle Doo";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.french] = "Waddle Doo";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.polish] = "Waddle Doo";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.spanish] = "Waddle Doo";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.japanese] = "ワドルドゥ";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Bronto Burt
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.english] = "Bronto Burt";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.german] = "Rammse";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.italian] = "Brontottero";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.french] = "Buzzy Brut";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.polish] = "Muszka Owocowa";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.spanish] = "Bronto";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.japanese] = "ブロンドバード";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Twizzy
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.english] = "Twizzy";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.german] = "Twizzy";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.italian] = "Piopio";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.french] = "Pioupiou";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.polish] = "Kurrrczątko";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.spanish] = "Twizzy";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.japanese] = "ツイジー";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Tookey
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.english] = "Tookey";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.german] = "Tookey";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.italian] = "Cluck";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.french] = "Tookey";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.polish] = "Kurrrczak";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.spanish] = "Tookey";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.japanese] = "トゥーキー";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Sir Kibble
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.english] = "Sir Kibble";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.german] = "Sir Kibble";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.italian] = "Duc de' Zac";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.french] = "Duc Hache Viande";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.polish] = "Sir Kibble";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.spanish] = "Sir Kibble";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.japanese] = "サーキブル";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Gordo
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.english] = "Gordo";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.german] = "Gordow";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.italian] = "Bombospino";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.french] = "Minérisson";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.polish] = "Jeżowiec";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.spanish] = "Gordo";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.japanese] = "ゴルドー";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.portuguese] = "Goldo";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Blood Gordo
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.english] = "Blood Gordo";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.german] = "Blut Gordow";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.italian] = "Bombospino Insanguinato";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.french] = "Minérisson sanglant";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.polish] = "Krwawy Jeżowiec";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.spanish] = "Gordo sangriento";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.japanese] = "ブルードゴルドー";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.portuguese] = "Goldo Sangrento";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Shotzo
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.english] = "Shotzo";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.german] = "Kanonor";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.italian] = "Shotzo";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.french] = "Shotzo";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.polish] = "Armata Strzelecka";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.spanish] = "Shotzo";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.japanese] = "シャッツオ";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Mystic Doo
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.english] = "Mystic Doo";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.german] = "Mytischer Doo";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.italian] = "Waddle Doo Mistico";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.french] = "Waddle Doo mystique";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.polish] = "Mityczny Doo";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.spanish] = "Doo Místico";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.japanese] = "ミスティックドゥ";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Bouncy
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.english] = "Bouncy";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.german] = "Bouncy";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.italian] = "Bouncy";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.french] = "Bouncy";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.polish] = "Sprężystka";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.spanish] = "Bouncy";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.japanese] = "バウンシー";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Mr Boogie
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.english] = "Mr. Boogie";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.german] = "Mr. Boogie";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.italian] = "Mr. Boogie";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.french] = "Mr. Boogie";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.polish] = "Glutowiec";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.spanish] = "Sr. Boogie";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.japanese] = "Mr.Boogie";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Search
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.english] = "Search";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.german] = "Search";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.italian] = "Search";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.french] = "Search";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.polish] = "Wyszukiwarka";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.spanish] = "Search";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.japanese] = "サーチ";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Hive Drone
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.english] = "Hive Drone";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.german] = "Bienenstock Drohne";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.italian] = "Hive Drone";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.french] = "Drone Ruche";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.polish] = "Rój Dronów";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.spanish] = "Hive Drone";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.japanese] = "ハイブドローン";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Wapod
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.english] = "Wapod";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.german] = "Wapod";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.italian] = "Wampolla";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.french] = "Warpot";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.polish] = "Waddle'owy Strąk";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.spanish] = "Wapod";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.japanese] = "ワポッド";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Flamebelch
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.english] = "Flamebelch";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.german] = "Flamenbelch";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.italian] = "Flamebelch";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.french] = "Flamebelch";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.polish] = "Ognisty Ziew";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.spanish] = "Flamebelch";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.japanese] = "フレイムベルチ";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Cappy
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.english] = "Cappy";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.german] = "Cozy";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.italian] = "Cozy";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.french] = "Cappenois";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.polish] = "Trzonek";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.spanish] = "Cozy";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.japanese] = "キャピィ";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Broom Hatter
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.english] = "Broom Hatter";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.german] = "Blitzi Blank";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.italian] = "Maga Spazzolina";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.french] = "Chabalai";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.polish] = "Sprzątający Kapelusznik";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.spanish] = "Sombrescoba";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.japanese] = "ブルームハッター";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Coconut
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.english] = "Coconut";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.german] = "Kokosnuss";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.italian] = "Noce di Cocco";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.french] = "Noix de coco";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.polish] = "Kokos";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.spanish] = "Coco";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.japanese] = "ココナッツ";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.portuguese] = "Coco";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Noddy
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.english] = "Noddy";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.german] = "Noddy";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.italian] = "Noddy";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.french] = "Noddy";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.polish] = "Śpioch";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.spanish] = "Noddy";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.japanese] = "ノディ";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Blado
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.english] = "Blado";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.german] = "Blado";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.italian] = "Hachi";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.french] = "Hachi";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.polish] = "Siekierowiec";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.spanish] = "Filo";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.japanese] = "ブレドー";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Scarfy
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.english] = "Scarfy";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.german] = "Scarfy";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.italian] = "Scarfy";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.french] = "Scarfy";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.polish] = "Upiór";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.spanish] = "Scarfy";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.japanese] = "スカーフィ";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Rocky
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.english] = "Rocky";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.german] = "Feinstein";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.italian] = "Rocky";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.french] = "Choiroc";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.polish] = "Głazik";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.spanish] = "Pedroso";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.japanese] = "ロッキー";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Grizzo
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.english] = "Grizzo";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.german] = "Grizzo";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.italian] = "Grizzo";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.french] = "Grizzlee";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.polish] = "Pizzly";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.spanish] = "Grizzo";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.japanese] = "グリゾー";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Jungle Bomb
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.english] = "Jungle Bomb";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.german] = "Jungle Bomb";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.italian] = "Jungle Bomb";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.french] = "Jungle Bomb";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.polish] = "Bombowiec Dżunglowy";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.spanish] = "Jungle Bomb";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.japanese] = "ジャングルボム";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Glunk
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.english] = "Glunk";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.german] = "Spuckwatt";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.italian] = "Glunk";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.french] = "Crachémone";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.polish] = "Ukwiał";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.spanish] = "Anemonia";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.japanese] = "グランク";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Kabu
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.english] = "Kabu";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.german] = "Kabu";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.italian] = "Kabu";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.french] = "Kabu";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.polish] = "Kabu";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.spanish] = "Kabu";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.japanese] = "カブー";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Bronto Burt
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.english] = "Burning Leo";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.german] = "Leo Loder";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.italian] = "Fiammelleo";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.french] = "Léo Laflam";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.polish] = "Płonący Lew";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.spanish] = "Leo Flama";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.japanese] = "バーニンレオ";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Tomatoo
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.english] = "Tomatoo";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.german] = "Tomate";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.italian] = "Tomatoo";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.french] = "Tomatee";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.polish] = "Pomidor";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.spanish] = "Tomatee";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.japanese] = "トマト";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Onion
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.english] = "'Onion'";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.german] = "Zwiebel";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.italian] = "Onion";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.french] = "Oignon";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.polish] = "Cebulak";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.spanish] = "Onión";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.japanese] = "オニオン";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.portuguese] = "Cebola";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_onion][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Anemonee
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.english] = "Anemonee";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.german] = "Anemone";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.italian] = "Anemòn";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.french] = "Anémona";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.polish] = "Włukwiał";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.spanish] = "Anemonito";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.japanese] = "イソキンチャク";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Gim
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.english] = "Gim";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.german] = "Jim";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.italian] = "Gim";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.french] = "Jim";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.polish] = "Dżim";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.spanish] = "Gim";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.japanese] = "ギム";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Poppy Bros Jr
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.english] = "Poppy Bros Jr.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.german] = "Pippo Peng";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.italian] = "Bomby Bros Jr.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.french] = "Bébépoppy";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.polish] = "Makowy Brat Jr.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.spanish] = "Bomby Bros Jr.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.japanese] = "ポピーブロスJr.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Bobo
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.english] = "Bobo";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.german] = "Bobo";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.italian] = "Bobo";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.french] = "Bobo";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.polish] = "Bobo";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.spanish] = "Bobo";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.japanese] = "ボボ";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Foley
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.english] = "Foley";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.german] = "Fallnit";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.italian] = "Granado";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.french] = "Grenady";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.polish] = "Listo-Pad";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.spanish] = "Fruma";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.japanese] = "フォーリー";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Nidoo
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.english] = "Nidoo";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.german] = "Nidoo";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.italian] = "Nidoo";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.french] = "Nidoo";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.polish] = "Współlokator";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.spanish] = "Nidoo";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.japanese] = "ニドー";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Como
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.english] = "Como";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.german] = "Como";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.italian] = "Racno";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.french] = "Como";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.polish] = "Ptasznik";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.spanish] = "Como";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.japanese] = "コモ";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Cairn
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.english] = "Cairn";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.german] = "Cairn";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.italian] = "Cairn";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.french] = "Cairn";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.polish] = "Żwirek";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.spanish] = "Cairn";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.japanese] = "ゴロピョン";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Bomber
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.english] = "Bomber";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.german] = "Bombio";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.italian] = "Bomber";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.french] = "Bombinet";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.polish] = "Bombowiec";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.spanish] = "Bomber";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.japanese] = "ボンバー";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Simirror
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.english] = "Simirror";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.german] = "Reflexi";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.italian] = "Magospecchio";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.french] = "Simiroir";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.polish] = "Lustrzany";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.spanish] = "Espejín";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.japanese] = "シミラ";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_simirror][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Enemy Descriptions
	var i = 0;
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.english] = "The most common of Popstar residents. Many have chosen to work for King Dedede, some even choosing to wield spears or parasols.";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.german] = "Der häufigste Popstar-Bewohner. Viele haben sich entschieden, für König Dedede zu arbeiten, einige haben sich sogar dafür entschieden, Speere oder Sonnenschirme zu tragen.";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.italian] = "I più comuni abitanti del Pianeta Pop. Molti hanno deciso di lavorare per King Dedede, altri di branidre lance o parasoli.";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.french] = "Les habitants de la planète Pop les plus nombreux. Beaucoup ont choisi de travailler pour le Roi DaDiDou, certains portent une lance ou un parasol.";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.polish] = "Jedni z najbardziej zwyczajnych mieszkańców planety Popstar. Sporo wybrało prace dla Króla Dedede, niektórzy nawet potrafią dobrze władać włóczniami lub parasolkami.";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.spanish] = "El ciudadano más común del Planeta Pop. Muchos deciden trabajar para el Rey Dedede, algunos incluso empuñando lanzas o sombrillas.";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.japanese] = "ポップスターの住人の中で最も一般的な存在。デデデ王のために働くことを選んだ者が多く、中には槍やパラソルを振り回す者もいる。";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_waddleDee][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.english] = "These creatures are known to shoot a beam out of their singular large eye.";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.german] = "Diese Kreaturen sind dafür bekannt, einen Strahl aus ihrem einzigartigen großen Auge zu schießen.";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.italian] = "Queste creature sono note per sparare un raggio con il loro unico grande occhio.";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.french] = "Ces créatures sont connues pour lancer des rayons avec leur grand œil.";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.polish] = "Te stworzenia są dobrze znane z wystrzeliwania promieni elektrycznych z ich jedynego, sporego, oka.";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.spanish] = "Estas criaturas son conocidas por lanzar un rayo a través de su único gran ojo.";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.japanese] = "大きな目からビームを発射することで知られる。";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.portuguese] = "Essas criaturas são conhecidas por atirar um raio de seu único olho.";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_waddleDoo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.english] = "A flying foe who takes to the skies whenever someone gets near, and will try and ram into you sometimes.";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.german] = "Ein fliegender Feind, der sich in die Lüfte erhebt, wenn sich jemand nähert, und manchmal versucht, dich zu rammen.";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.italian] = "Un nemico volante che scende dai cieli quando qualcuno gli si avvicina per poi attaccarlo.";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.french] = "Un ennemi ailé qui s'envole dès que quelqu'un s'approche, et qui s'attaque parfois aux autres.";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.polish] = "Latający przeciwnik, który unosi się kiedy ktoś podejdzie za blisko, wtem zacznie czasami próbować się w ciebie wbić.";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.spanish] = "Un enemigo volador que echa a volar cuando alguien se acerca, y a veces tratará de estrellarse contra ti.";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_brontoBurt][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.english] = "A baby Tookey, never seen far from its mother. They are known to ram into others for fun.";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.german] = "Ein Baby Tookey, nie weit von seiner Mutter entfernt gesehen. Sie sind dafür bekannt, andere zum Spaß zu rammen.";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.italian] = "Un piccolo Cluck che non si è mai separato dalla mamma. Di solito attaccano per divertimento.";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.french] = "Un Tookey nourrisson qui n'est jamais loin de sa mère. Il s'attaque aux autres pour s'amuser.";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.polish] = "Młody Kurrrczak, nigdy nie widziana z dala od jej własnej matki. Są znane z taranowania siebie nawzajem dla zabawy.";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.chinese] = "Un Tookey bebé, nunca visto lejos de su madre. Son famosos por chocarse contra otros por diversión.";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_twizzy][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.english] = "The adult variant of Twizzy that is always found near its chicks. It will ram into anyone who gets near its babies.";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.german] = "Die erwachsene Variante von Twizzy, die immer in der Nähe ihrer Küken zu finden ist. Es wird jeden rammen, der sich seinen Babys nähert.";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.italian] = "La variante adulta del Piopio che attaccherà chiunque si avvicini ai suoi piccoli.";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.french] = "La version adulte des Pioupiou qui se trouve toujours près de ses poussins. Il s'attaque à quiconque s'en approche.";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.polish] = "Starsze Kurrrczątko, które jest zawsze spotykane blisko jej dzieci. Staranuje każdego, kto będzie blisko jej rodziny.";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.spanish] = "La versión adulta de Twizzy que siempre está junto a sus polluelos. Atacará a quien sea que se acerque a sus pequeños.";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_tookey][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.english] = "A knight of the bladed boomerang variety. By channeling his energy he can throw a larger blade.";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.german] = "Ein Ritter der Klingen-Bumerang-Variante. Indem er seine Energie kanalisiert, kann er eine größere Klinge werfen.";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.italian] = "Un cavaliere con una lama a forma di boomerang, che diventa più grande se viene usata più energia.";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.french] = "Un chevalier se spécialisant dans les lames boomerang. Il peut lancer des lames plus grandes en concentrant son énergie.";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.polish] = "Rycerz z odmiennym ostrzem bumerangowym. Poprzez przekierowanie jego energii, może wyrzucić większe ostrze.";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.spanish] = "Un caballero de la clase de los cuchillos bumerán. Concentrando su energía, puede lanzar una cuchilla más grande.";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_sirKibble][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.english] = "An invincible ball of spikes, yowch! Can break ability stars upon contact.";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.german] = "Ein unbesiegbarer Spießball, autsch! Kann Fähigkeitssterne bei Kontakt brechen.";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.italian] = "Un'invincibile palla di spine, yowch! Può distruggere la stella di un'abilità al primo contatto.";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.french] = "Une boule de pointes invulnérable. Il peut casser les étoiles des dons d'imitation qui le touchent.";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.polish] = "Nieśmiertelna kula kolców, auć! Tylko podejdź do niej, a twoja gwiazda zdolności jest zniszczona.";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.spanish] = "¡Una bola de pinchos invencible! Puede romper estrellas de habilidad al tocarlas.";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_gordo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.english] = "A very angry variant of the classic Gordo. This version's horns pierce the air, and it's metal shines like a red sun.";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.german] = "Eine sehr böse Variante des klassischen Gordow. Die Hörner dieser Version durchbohren die Luft und ihr Metall glänzt wie eine rote Sonne.";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.italian] = "Una variante molto aggressiva del classico Bombospino.";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.french] = "Une variante en colère du Minérisson de base. Ses cornes transpercent l'air, et son métal brille comme un soleil rouge.";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.polish] = "Bardzo nerwowy gatunek oryginalnego Jeżowca. Rogi tej odmiany przebijają niebo, oraz ich metalowy materiał świeci się jak czerwone słońce.";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.spanish] = "Una variante muy agresiva del clásico Gordo. Sus pinchos cortan el aire y su metal brilla como un Sol rojizo.";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bloodGordo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.english] = "These cannons are a staple of the Halberd and Castle Dedede's arsenals. Can come in single shot and 3 round burst flavors.";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.german] = "Diese Kanonen sind ein fester Bestandteil der Arsenale der Hellebarden und der Burg Dedede. Kann in Einzelschuss- und 3 runden Burst-Aromen erhältlich sein.";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.italian] = "Questi cannoni sono un classico della Halberd e dell'arsenale del castello di Dedede. Con un solo sparo possono uscire tre palle di cannone.";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.french] = "Ces canons sont souvent utilisés par le Halberd et l'arsenal du château DaDiDou. Certains ne tirent qu'un boulet à la fois, d'autres trois à la suite.";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.polish] = "Te armaty są podstawą Halberdu oraz arsenału Zamka Dedede. Czasem wystrzelą jeden pocisk, a czasem wystrzelą serie trzech.";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.spanish] = "Estos cañones son habituales en la Hal Abarda y en el Castillo Dedede. Vienen en dos sabores: tiro simple y tiro triple.";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_shotzo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.english] = "A Waddle Doo warped by the power of Flux. By utilizing its new power it can create a beam barrier, which can also be launched forward.";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.german] = "Ein Waddle Doo, verzerrt durch die Macht des Flux. Durch die Nutzung seiner neuen Kraft kann es eine Strahlbarriere erzeugen, die auch nach vorne gestartet werden kann";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.italian] = "Un Waddle Doo alterato dal potere del Flusso Mistico. Con i suoi nuovi poteri può creare una barriera che può anche essere lanciata.";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.french] = "Un Waddle Doo transformé par le pouvoir du flux. En utilisant son nouveau pouvoir, il peut créer une barrière de rayons qu'il peut aussi lancer vers l'avant.";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.polish] = "Waddle Doo obdarowany mocami Flux'a. Wykorzystując jego nowe zdolności, potrafi stworzyć bariere z jego promieni elektrycznych, które może wystrzelić poziomo.";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.spanish] = "Un Waddle Doo corrompido por el Flux. Su nuevo poder le permite crear una barrera de rayos que puede disparar hacia delante.";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_mysticDoo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.english] = "Such a pleasant little friend! Bouncies bounce up and down. A simple life, but a happy one. That little face looks familiar...";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.german] = "So ein angenehmer kleiner Freund! Bouncies hüpfen auf und ab. Ein einfaches Leben, aber ein glückliches. Das kleine Gesicht kommt mir bekannt vor...";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.italian] = "Un amico così piacevole! Va su e giù. Una vita semplice, ma felice. Quella piccola faccia sembra familiare...";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.french] = "Comme il est adorable ! Les Bouncy bondissent sans arrêt. Une vie simple, mais joyeuse. Ce visage ressemble à celui d'un autre...";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.polish] = "Cóż za miły-mały koleżka! Odbić-odbija się z góry na dół. Proste życie, ale miłe..... Poznaje tą mimike......";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.spanish] = "¡Un amiguito muy adorable! Bouncy bota y rebota sin parar. Una vida simple pero feliz. Esa carita resulta familiar...";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bouncy][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.english] = "It's a sentient booger that seems to walk aimlessly, but in reality it’s looking for some tissues.";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.german] = "Es ist ein empfindungsfähiger Popel, der scheinbar ziellos herumläuft, aber in Wirklichkeit nach Taschentüchern sucht.";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.italian] = "Una caccoletta senziente che cammina a zonzo, anche se a dire il vero un obiettivo non gli manca.";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.french] = "Une morve vivante qui semble errer sans but, mais qui cherche en réalité un mouchoir.";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.polish] = "Jest to żyjący glut nosowy, który z chodzeniem za bardzo się nie zna, ale w rzeczywistości chodzi obłąkany, szukając chusteczek higienicznych.";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.spanish] = "Un moco viviente que parece vagar sin rumbo, pero en realidad está buscando algún pañuelo.";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_mrBoogie][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.english] = "A small bomb with a face. If you get too close, it'll detonate, so steer clear.";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.german] = "Eine kleine Bombe mit Gesicht. Wenn Sie zu nahe kommen, wird es explodieren, also halten dich fern.";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.italian] = "Una piccola bomba che esplode se ti avvicini troppo ad essa, attento!";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.french] = "Une petite bombe qui possède un visage. Elle explose lorsque l'on s'en approche trop.";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.polish] = "Mała bomba z twarzą. Jeśli podejdziesz za blisko, wybuchie, więc omijaj jak ognia jeśli ci życie miłe.";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.spanish] = "Una pequeña bomba con cara. Si te acercas demasiado, explotará, así que mantente bien lejos.";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_search][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.english] = "A mining bot, built for the sole purpose of harvesting Alexandrum, a mysterious mineral.";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.german] = "Ein Mining-Bot, der ausschließlich zum Abbau von Alexandrum, einem mysteriösen Mineral, gebaut wurde.";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.italian] = "Un robot minatore che ha il solo di scopo di trovare un minerale misterioso: l'Alexandrum.";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.french] = "Un robot minier, construit dans le but de collecter de l'Alexandrum, un minéral mystérieux.";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.polish] = "Robot kopiący, zbudowany dla jedynego celu, zbiór Alexandrium, tajemniczego minerału.";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.spanish] = "Un robot minero cuyo único propósito es extraer un misterioso mineral llamado Alexandrum.";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_hiveDrone][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.english] = "These ghosts look oddly like Waddle Dees. It's probably a coincidence. They pop out of pots like funny genies, and fly up, up, and away!";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.german] = "Diese Geister sehen seltsamerweise aus wie Waddle Dees. Es ist wahrscheinlich ein Zufall. Sie springen wie lustige Geister aus Töpfen und fliegen hoch, hoch und davon!";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.italian] = "Questi fantasmi somigliano leggermente ai Waddle Dee. Forse è una coincidenza. Escono come dei buffi geni e poi volano via.";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.french] = "Ces fantômes ressemblent curieusement aux Waddle Dee. Probablement une coincidence. Ils sortent de jarres comme des génies, et s'envolent vers le haut dans les airs !";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.polish] = "Te duchy wyglądają 1:1 jak Waddle Dee. Pewnie to tylko przypadek. Wychodzą z doniczek jak ci śmieszni dżinowie, i wznoszą się, wysoko, wyżej i najwyżej!";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.spanish] = "Estos fantasmas se parecen extrañamente a los Waddle Dees, pero seguro que es pura casualidad. Salen de jarrones y ascienden hacia el infinito.";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_wapod][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.english] = "An old candle brought to life by flux. Has a distinct dislike for sodas, as it causes it to have severe hiccups.";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.german] = "Eine alte Kerze, die durch das Flux zum Leben erweckt wurde. Hat eine ausgeprägte Abneigung gegen Limonaden, da es zu starkem Schluckauf führt.";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.italian] = "Una vecchia candela nata dal Flusso Mistico. Odia particolarmente le bibite che gli fanno venire il singhiozzo.";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.french] = "Une vieille bougie animée par le flux. Il méprise particulièrement les boissons gazeuses, qui lui donne des hoquets graves.";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.polish] = "Stara świeca przywrócona do życia przez Flux'a. Posiada sporą nienawiść do coli, z racji że powoduje u niego sporo czkawek.";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.spanish] = "Una antigua vela que ha cobrado vida gracias al Flux. Detesta los refrescos gaseosos; siempre le dan hipo.";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_flamebelch][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.english] = "One of the native residents of Popstar, these shy creatures will shoot their mushroom caps into the air when approached, and will panic if their cap is stolen.";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.german] = "Diese schüchternen Kreaturen, die zu den Ureinwohnern von Popstar gehören, schießen ihre Pilzkappen in die Luft, wenn sie sich nähern, und geraten in Panik, wenn ihre Kappe gestohlen wird.";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.italian] = "Tra i primi abitanti del Pianeta Pop, queste timide creature lanciano in aria il loro cappello quando qualcuno si avvicina, e appena questo viene rubato vanno in pannico.";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.french] = "L'un des habitants indigènes de la planète Pop. Ces êtres timides lancent leur bonnet en forme de champignon dans les airs quand on s'en approche, et paniquent quand leur bonnet se fait voler.";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.polish] = "Jedni z najbardziej zaludnionych mieszkańców planety popstar, te nieśmiałe stworzenia wystrzelą swoje trzony w powietrze gdy blisko nich, wtem spanikują jeśli ich trzon zostanie porwany.";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.spanish] = "Uno de los habitantes nativos del Planeta Pop. Estos tímidos seres lanzan su sombrero champiñón al aire cuando te acercas, y entran en pánico si se lo roban.";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_cappy][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.english] = "These little guys have one goal; clean everything they can. This results in a bit of a bad habit, being ramming into people by accident. Despite their witchy appearances, they mean well.";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.german] = "Diese kleinen Kerle haben ein Ziel; sauber machen, was sie können. Dies führt zu einer kleinen schlechten Angewohnheit, Menschen aus Versehen zu rammen. Trotz ihres hexenhaften Aussehens meinen sie es gut.";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.italian] = "Questi piccoletti hanno un solo scopo: pulire tutto quello che possono. Ogni tanto colpiscono qualcuno, ma non farti ingannare dalle apparenze: hanno la testa sulle spalle.";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.french] = "Ces petits êtres ne jurent que par le ménage. Cela leur donne une manie de percuter les gens par accident. Malgré leur apparence de sorcière, ils n'ont que de bonnes intentions.";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.polish] = "Ci koledzy mają jedną robote; wysprzątać wszystko co się da. Wynikuje to złym przyzwyczajeniom, często potykają się o inne istoty żyjące przez przypadek. Nawet jeśli wyglądają jak wiedźmy, nie chcieli na złość.";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.spanish] = "Estos pequeñines tienen un objetivo; limpiar todo lo que puedan, lo cual se convierte en un mal hábito que les hace estrellarse con cualquiera que se ponga delante. Aunque parezcan brujos, no son malos.";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_broomHatter][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.english] = "These palm tree fruits are packed with explosives to spread the seeds inside, but only fall when you run under, so watch out!";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.german] = "Diese Palmenfrüchte sind mit Sprengstoff gefüllt, um die Samen im Inneren zu verteilen, aber fallen nur, wenn Sie darunter laufen, also passen Sie auf!";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.italian] = "Questi frutti di palma sono dotati di un potente esplsivo e cadono se ci passi sotto, attenzione!";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.french] = "Ces fruits de palmiers contiennent des explosifs pour répandre leurs graines contenues à l'intérieur, mais ne tombent que lorsque l'on passe en dessous, prudence !";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.polish] = "Te owoce palmowca są pełne materiału wybuchowego który rozprzestrzenia nasiona z wewnątrz, ale spadają gdy będziesz pod nimi, więc uważaj!";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.spanish] = "Estos frutos de palmeras están llenos de explosivos que esparcen las semillas de su interior, pero solo caen cuando pasas por debajo, ¡así que ten cuidado!";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_coconut][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.english] = "An enemy who prefers sleeping over fighting, most commonly found near the Fountain of Dreams.";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.german] = "Ein Feind, der lieber schläft als zu kämpfen, am häufigsten in der Nähe des Brunnens der Träume anzutreffen.";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.italian] = "Un nemico che al posto di combattere preferisce schiacciare un pisolino. Lo trovi soprattutto vicino alla Fontana dei Sogni.";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.french] = "Un ennemi qui préfère dormir que se battre, se trouvant le plus souvent près de la Fontaine des Rêves.";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.polish] = "Przeciwnik który raczej woli sobie zdrzemnąć niż walczyć, często widywany blisko Fontanny Marzeń.";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.spanish] = "Un enemigo que prefiere dormir antes que luchar. Se le suele ver cerca de la Fuente de los Sueños.";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_noddy][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.english] = "Shing! This angry fellow rolls across the ground, quick as a racecar, trying to slice up it's foes. This creature was devised by the mind of a mysterious painter, and looks a bit like a Gordo.";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.german] = "Sching! Dieser wütende Bursche rollt schnell wie ein Rennwagen über den Boden und versucht, seine Feinde in Scheiben zu schneiden. Diese Kreatur wurde von einem mysteriösen Maler entworfen und sieht ein bisschen wie ein Gordo aus.";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.italian] = "Shing! Questa palletta è veloce come una macchina da corsa ed è capace di ferire tutti i suoi avversari. Questa creatura è stata colpita da un pittore misterioso e somiglia ad un Bombospino.";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.french] = "Cet individu énervé roule sur le sol, rapide comme une voiture de course, en essayant de découper ses ennemis. Il a été conçu par l'esprit d'un peintre mystérieux, et ressemble à un Minérisson.";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.polish] = "Szing! Ten poddenerwowany kolega toczy sie po ziemi, tak szybko jak wyścigowiec, tnąc wszystko co zajdzie w jego droge. To stworzenie było stworzone przez umysł nieznajomego malarza, troche przypomina Jeżowca.";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.spanish] = "¡Shing! Este airado personaje rueda por el suelo veloz como un coche de carreras, tratando de cortar a sus enemigos. Fue creado por la mente de una misteriosa pintora, y su aspecto recuerda al de los Gordo.";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_blado][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.english] = "This deceiving enemy looks cute at first glance, but anger it and it will become rabid and explode after a few seconds. cannot be swallowed.";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.german] = "Dieser täuschende Feind sieht auf den ersten Blick niedlich aus, aber wenn Sie ihn verärgern, wird er tollwütig und explodiert nach ein paar Sekunden. Kann nicht verschluckt werden.";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.italian] = "Questo nemico all'apparenza è innocuo, ma poi si arrabbierà e dopo qualche secondo esploderà! Non può essere risucchiato.";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.french] = "Cet ennemi semble amical à première vue, mais devient fou de rage lorsqu'on le dérange, et finit par exploser quelques secondes plus tard. Il ne peut pas être avalé.";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.polish] = "Ten przeciwnik może wydawać się słodki, ale gdy wnerwiony, stanie się szybki i wybuchnie po paru sekundach. NIE MOŻE być pochłonięty.";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.spanish] = "Este engañoso enemigo parece adorable, pero si lo enfadas se pondrá hecho una furia y explotará tras unos segundos. No se puede absorber.";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_scarfy][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.english] = "A sentient boulder that tries to crush threats with its body. grants the stone ability upon swallowing.";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.german] = "Ein empfindungsfähiger Felsbrocken, der versucht, Bedrohungen mit seinem Körper zu vernichten. Gewährt beim Schlucken die Stein-Fähigkeit.";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.italian] = "Un macigno senziente che attacca i nemici con il suo corpo. Dà l'Abilità Pietra se risucchiato.";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.french] = "Un rocher vivant qui essaie de démolir les menaces avec son corps. Il confère la capacité Rocher quand il est avalé.";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.polish] = "Świadomy głaz który próbuje zgnieść zagrożenie swoim ciężkim ciałem. Daje ci kamienną moc po pochłonięciu.";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.spanish] = "Una roca viviente que intentará aplastar a sus enemigos con su cuerpo. Otorga la habilidad Piedra al absorberlo.";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_rocky][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.english] = "A large bear that lives in dense forests. it can use its claws to grab onto foes and scratch them, usually when provoked.";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.german] = "Ein großer Bär, der in dichten Wäldern lebt. Es kann mit seinen Klauen nach Feinden greifen und sie zerkratzen, normalerweise wenn es provoziert wird.";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.italian] = "Un grande orso che vive nelle foreste. Attacca i nemici con i suoi artigli.";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.french] = "Un ours imposant vivant dans les forêts denses. Il peut utiliser ses griffes pour s'agripper à ses ennemis et les griffer, généralement lorsqu'on le provoque.";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.polish] = "Spory niedźwiedź który żyje w gęstych lasach. Może użyć swoich szponów żeby złapać i poszarpać swoich wrogów, szczególnie gdy sprowokowany. ";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.spanish] = "Un gran oso que vive en densos bosques. Si se le provoca, usará sus zarpas para agarrar a los enemigos y arañarles.";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_grizzo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.english] = "A small pineapple sapling. Jungle Bombs will puke up bombs at threats, up to 3.";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.german] = "Ein kleiner Ananas-Bäumchen. Dschungelbomben spucken Bomben bei Bedrohungen aus, bis zu 3.";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.italian] = "Un piccolo ananas a forma di alberello. I Jungle Bomb possono lanciare fino a tre bombe.";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.french] = "Une pousse d'ananas. Les Jungle Bomb peuvent lancer jusqu'à trois bombes à ses ennemis.";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.polish] = "Młode drzewko ananasa. Bombowiec dżunglowy wypluje z siebie maksymalnie 3 bomby na wrogów, nie musze ci mówić kim dla niego jesteś.";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.spanish] = "Un pequeño brote de piña que puede escupir bombas, pudiendo lanzar hasta 3.";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_jungleBomb][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.english] = "An aquatic plant who will periodically shoot water out of its mouth, up to 5 projectiles at a time.";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.german] = "Eine Wasserpflanze, die regelmäßig Wasser aus ihrem Mund schießt, bis zu 5 Projektile gleichzeitig.";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.italian] = "Una pianta acquatica che lancerà fino a cinque proiettili alla volta.";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.french] = "Une plante aquatique qui tire des projectiles d'eau à intervalles réguliers, jusqu'à cinq à la fois.";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.polish] = "Egzotyczna roślina wodna która wystrzeli z siebie aż 5 bąbelków powietrza, albo wody.";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.spanish] = "Una planta acuática que lanza proyectiles de agua por la boca, disparando hasta 5 cada vez.";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_glunk][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.english] = "These ancient statues spin across the land, ramming into whoever is unfortunate enough to be in their path.";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.german] = "Diese uralten Statuen wirbeln über das Land und rammen jeden, der das Pech hat, sich ihnen in den Weg zu stellen.";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.italian] = "Queste antiche statue roteano e colpiscono gli sprovveduti che si trovano sulla loro strada.";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.french] = "Ces statues antiques tournoient sur la terre, percutant tout ceux qui se trouvent sur son chemin.";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.polish] = "Te starożytne posągi kręcą się wokół własnej osi, wrzucająć się w każdego, kto stoi im na drodze.";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.spanish] = "Estas estatuas ancestrales giran a través de las tierras, chocandose contra quien sea tan desafortunado como para encontrarse en su camino.";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_kabu][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.english] = "A hotheaded creature capable of many fire based attacks, such as shooting a flame ball.";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.german] = "Eine hitzköpfige Kreatur, die zu vielen feuerbasierten Angriffen fähig ist, wie z. B. das Schießen eines Flammenballs.";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.italian] = "Una creatura dalla testa infuocata che usa potenti attacchi di fuoco come delle palle di fuoco.";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.french] = "Une tête brûlée capable d'utiliser un grand nombre d'attaques de feu, comme lancer une boule de feu par exemple.";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.polish] = "Gorącogłowe stworzenie posiadające zdolność władania nad ogniem, przykładem może być wystrzeliwanie kul ognia.";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.spanish] = "Una criatura cabezona capaz de hacer muchos ataques de fuego, como disparar una bola de llamas.";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_burningLeo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.english] = "A creature that looks a lot like a juicy red vegetable. Or is it a fruit? It will forever be a mystery.";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.german] = "Eine Kreatur, die einem saftigen roten Gemüse sehr ähnlich sieht. Oder ist es eine Frucht? Es wird für immer ein Rätsel bleiben.";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.italian] = "Una creatura che somiglia tanto ad una succosissima verdura. O un frutto? Sarà per sempre un mistero...";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.french] = "Une créature qui ressemble à un légume rouge juteux. Ou est-ce un fruit ? Personne ne le sait.";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.polish] = "Stworzenie wyglądające bardzo jak soczysty czerwony owoc. A może jest to warzywo? Nigdy się nie dowiemy.";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.spanish] = "Una criatura que se parece mucho a un delicioso vegetal rojo. ¿O es una fruta? Siempre será un misterio.";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_tomatoo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.english] = "Onion, contrary to its name, is a missile like carrot creature native to Egg Garden. They like to hide in the soil and ambush people passing by.";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.german] = "Die Zwiebel ist im Gegensatz zu ihrem Namen eine raketenartige Karottenkreatur, die in Eiergärten beheimatet ist. Sie verstecken sich gerne im Boden und überfallen Passanten.";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.italian] = "Onion, seppur con un nome ingannevole, è un missile a forma di carota nato nei Giardini delle Uova.";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.french] = "L'Oignon, contrairement à ce que son nom indique, est une carotte en forme de missile provenant de la Vallée des œufs. Ils aiment se cacher dans le sol et embusquer les passants.";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.polish] = "Cebulak, ironicznie względem nazwy, jest to marchewkowy pocisk, często występujący w ogrodach jajecznych. Lubią się chować w ziemi i straszyć ludzi przechodzących nieopodal.";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.chinese] = "Onión, al contrario de su nombre, es una especie de zanahoria misil nativa de los Jardines Ovalados. Les gusta esconderse en la tierra y emboscar a cualquiera que pase por delante.";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.spanish] = "";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_onion][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.english] = "An aquatic creature with long tendrils jutting from its head. It dances back and forth to the waves of the oceans they reside in.";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.german] = "Ein Wasserlebewesen mit langen Ranken, die aus seinem Kopf herausragen. Es tanzt hin und her zu den Wellen der Ozeane, in denen sie leben.";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.italian] = "Una creatura acquatica con lunghi viticci che sporgono dalla sua testa. Balla avanti e indietro sulle onde degli oceani in cui risiede.";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.french] = "Une créature aquatique possédant de longues vrilles sortant de sa tête. Il dance selon les vagues des océans dans lesquels il réside.";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.polish] = "Morskie stworzenie z długimi mackami wychodzącymi z jego głowy. Tańczą w rytm fali oceanu które zamieszkują.";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.spanish] = "Una criatura acuática con largos pelos sobresaliendo de su cabeza. Va Bailando de un lado a otro siguiendo las olas de los océanos en los que residen.";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_anemonee][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.english] = "Gim is a fanatic of all things yoyos, and is a master of wielding them. rumor has it their collection has over 50 different yoyos!";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.german] = "Gim ist ein Fanatiker aller Yoyos und ein Meister darin, sie einzusetzen. Gerüchten zufolge umfasst ihre Sammlung über 50 verschiedene Jojos!";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.italian] = "Gim è un fanatico di tutto ciò che riguarda gli yo-yo, nonché maestro nel brandirli. Voci di corridoio dicono che abbia collezionato più di 50 yo-yo!";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.french] = "Jim est un fanatique de tout ce qui concerne les yoyos, et en maîtrise le contrôle parfaitement. Il aurait plus de cinquante yoyos différents dans sa collection !";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.polish] = "Dżim to weterani obsługi nad yoyo, więdzą o nich prawie wszystko. Krąży plotka że posiadają w kolekcji pondad 50 różnych yoyo!";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.spanish] = "Gim es un fanático de los yo-yós y también es un maestro usándolos. Se rumorea que tiene una colección de más de 50 yo-yós diferentes.";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_gim][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.english] = "A trouble making kid with an innate love for explosives. Nobody knows where they get all of those bombs from.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.german] = "Ein Ärger machendes Kind mit einer angeborenen Liebe zu Sprengstoff. Niemand weiß, woher sie all diese Bomben bekommen.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.italian] = "Una peste con una passione innata per gli esplosivi. Nessuno sa dove riesca a prendere tutte quelle granate.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.french] = "Un garnement qui adore les explosifs. Personne ne sait d'où il sort toutes ces bombes.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.polish] = "Stworzenie które wygląda na chodzącą kule ognia. Gorący jak słońce, chyba przez to ciepło mózg mu się prawie wypalił.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.spanish] = "Un niño que solo da problemas y tiene un amor innato por las explosiones. Nadie sabe de donde saca todas esas bombas.";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_poppyBrosJr][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.english] = "A creature that appears to be a walking fireball. Hotter than a Hothead, but doesn't seem to think very much. ";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.german] = "Eine Kreatur, die wie ein wandelnder Feuerball aussieht. Heißer als ein Hitzkopf, scheint aber nicht viel zu denken.";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.italian] = "Una palla di fuoco che sa camminare anche se non sembra avere molti altri pensieri in testa.";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.french] = "Une créature ressemblant à une boule de feu ambulante. Plus chaud qu'un Brultête, mais ne semble pas très futé.";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.polish] = "Nie oceniaj tego gościa po słodkiej okładce. To stworzenie może latać i wybuchać na zawołanie. Zrzuci się z niebios jak nalot żeby na ciebie wybuchnąć, więc uważaj!";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.spanish] = "Una criatura que parece una bola de fuego andante. Es más caliente que un Hot Head, pero no parece que piense mucho.";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bobo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.english] = "Don't underestimate this guy by his cute appearance. This creature can fly and explode at will. It will drop out of the sky like an airstrike to explode, so look out!";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.german] = "Unterschätze diesen Kerl nicht wegen seines süßen Aussehens. Diese Kreatur kann nach Belieben fliegen und explodieren. Es wird wie ein Luftangriff vom Himmel fallen, um zu explodieren, also pass auf!";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.italian] = "Non sottovalutare questo piccoletto solo perché sembra tenero. Sa volare e persino esplodere. Cadrà dal cielo e ti attaccherà, attento!";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.french] = "Ne sous-estimez pas cet ennemi avec une tête mignonne. Cette créature peut voler et se faire exploser lorsqu'elle le souhaite. Il tombe du ciel pour exploser, prenez garde !";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.polish] = "To nie są drzwi! Jeśli przez nie przejdziesz, podskoczą i spróbują cie zgnieść!";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.spanish] = "No te dejes engañar por su apariencia. Esta criatura puede volar y explotar a voluntad. Se dejará caer desde el cielo como un misil para hacerte explotar. ¡Ten cuidado!";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_foley][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.english] = "That's no door! If you try to go through these fake doors, they'll jump up and try to squish you!";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.german] = "Das ist keine Tür! Wenn du versuchst, durch diese falschen Türen zu gehen, springen sie auf und versuchen, dich zu zerquetschen!";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.italian] = "No, non è una porta! Se cerchi di entrarci dentro ti salterà addosso e ti farà molto male.";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.french] = "Ce n'est pas une porte ! Si vous essayez d'y entrer, ils vont tenter de vous aplatir !";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.polish] = "Często zamieszkujące Trawiaste Niziny, te pajęczaki zwisają z drzew, mając nadzieje żeby ktoś w nich się wbił. To się rzadko zdarza. Mówi się, że istnieje rodzaj Ptasznika, który chodzi na dwóch nogach...";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.spanish] = "¡Eso no es una puerta! Si intentas entrar por una de estas, te asaltará e intentará aplastarte.";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_nidoo][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.english] = "Native to Grass Land, these arachnids dangle from trees, hoping someone will bump into them. This rarely happens. It's said there is a variant of this species that can walk on two legs...";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.german] = "Diese im Grasland beheimateten Spinnentiere baumeln an Bäumen und hoffen, dass jemand sie anstößt. Dies kommt selten vor. Es soll eine Variante dieser Art geben, die auf zwei Beinen laufen kann...";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.italian] = "Nato a Grass Land, questo ragno scende dagli alberi e attacca gli indesiderati, anche se non sempre ha successo. Si dice che ci sia una variante bipede.";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.french] = "Originaires de Grass Land, ces arachnides pendent depuis les arbres, en espérant blesser quelqu'un. Cela n'arrive presque jamais. Il y aurait apparemment une variante de cette espèce capable de marcher sur deux pieds...";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.polish] = "Górka żwiru. Bardzo skoczni przyjaciele. Boing!";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.spanish] = "Nativos de Grass Land, estos arácnidos se balancean desde los árboles, esperando chocarse con alguien. Aunque no suele ocurrir. Se dice que hay una versión alternativa de esta especie que camina a dos patas...";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_como][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.english] = "A stack of cute rocks. Very jumpy fellows. Boing!";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.german] = "Ein Stapel süßer Steine. Sehr nervöse Burschen. Boing!";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.italian] = "Una piccola colonna di pietre a cui piace saltare. Boing!";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.french] = "Une pile de petites pierres. Ils sautillent très souvent. Boing !";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.polish] = "Bardzo niebezpieczny przeciwnik. Będzie skakał w te i nazad, wypuszczając spory wybuch, to zaboli i jeszcze bardziej.";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.spanish] = "Una bonita pila de piedras. Salta un montón. ¡Boing!";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_cairn][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.english] = "Highly dangerous enemy. It will leap from ledges and release a big explosion, which will hurt you pretty badly.";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.german] = "Hochgefährlicher Feind. Es wird von Felsvorsprüngen springen und eine große Explosion auslösen, die dich ziemlich schwer verletzen wird.";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.italian] = "Un nemico estremamente pericoloso che, pur di colpirti, si precipiterà dalle sporgenze. Non abbassare la guardia, fa malissimo. ";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.french] = "Un ennemi très dangereux. Il saute depuis des rebords et déclenche une grosse explosion, qui peut causer de lourds dégâts.";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.polish] = "Wspaniały czarodziej, władający silną magią lustrzaną. Może stworzyć klony samego siebie, teleportować się i jeszcze więcej!";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.spanish] = "Enemigo extremadamente peligroso. Saltará de sitios altos y creará grandes explosiones que te dejarán frito.";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.arabic] = "";
	i += 1;
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.english] = "A powerful magician, with strong mirror-oriented magic. He can create clones of himself, warp around, and more!";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.turkish] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.german] = "Ein mächtiger Magier mit starker spiegelorientierter Magie. Er kann Klone von sich selbst erstellen, herumwarpen und vieles mehr!";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.italian] = "Un potente mago in grado di clonarsi, di teletrasportarsi e di fare molte altre cose.";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.french] = "Une puissant magicien, dont la specialité est la magie des miroirs. Il peut créer des clones de lui-même, se téléporter, et faire bien d'autres choses encore !";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.polish] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.spanish] = "Un poderoso mago con poderes de espejo. ¡Puede crear clones de sí mismo, desaparecer y mucho más!";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.japanese] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.portuguese] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.enemy_bomber][stringAttributes.description][0][languages.arabic] = "";
	#endregion
	
	#region Gear Cube Shop
	#region First Time Entrance
	var i = 0;
	dialogue[7][0][i][languages.english] = "You showed up for real.";
	i += 1;
	dialogue[7][0][i][languages.english] = "Didn't expect to see you again after that run in we had back there.";
	i += 1;
	dialogue[7][0][i][languages.english] = "Welcome to my market. It's rough out there so you better purchase some goods before going back out.";
	i += 1;
	dialogue[7][0][i][languages.english] = "Sure we can both benefit from this.";
	#endregion
	
	#region Normal Entrance
	var i = 0;
	dialogue[7][1][i][languages.english] = "My most esteemed customers.";
	i += 1;
	dialogue[7][1][i][languages.english] = "Welcome.";
	i += 1;
	dialogue[7][1][i][languages.english] = "Hey.";
	i += 1;
	dialogue[7][1][i][languages.english] = "Need anything?";
	i += 1;
	dialogue[7][1][i][languages.english] = "Back already?";
	i += 1;
	dialogue[7][1][i][languages.english] = "Welcome back.";
	i += 1;
	dialogue[7][1][i][languages.english] = "How was the trip?";
	i += 1;
	dialogue[7][1][i][languages.english] = "Good to see you back safe and sound.";
	#endregion
	
	#region New Items Entrance
	var i = 0;
	dialogue[7][2][i][languages.english] = "Got some new goods in stock, you gotta check 'em out.";
	i += 1;
	dialogue[7][2][i][languages.english] = "Guess what I found deep in the storage!";
	#endregion
	
	#region Buy Option
	var i = 0;
	dialogue[7][3][i][languages.english] = "Whaddya want?";
	i += 1;
	dialogue[7][3][i][languages.english] = "Anything interesting?";
	i += 1;
	dialogue[7][3][i][languages.english] = "You gotta fork over some cash before you go and try to mess with the boss. Heh.";
	i += 1;
	dialogue[7][3][i][languages.english] = "Nice looking trinket right there, don't you agree?";
	#endregion
	
	#region Purchase Item
	var i = 0;
	dialogue[7][4][i][languages.english] = "Thank you for your patronage.";
	i += 1;
	dialogue[7][4][i][languages.english] = "Heh.";
	i += 1;
	dialogue[7][4][i][languages.english] = "How generous!";
	i += 1;
	dialogue[7][4][i][languages.english] = "Nice choice.";
	i += 1;
	dialogue[7][4][i][languages.english] = "You have an eye for goods, don’t you.";
	i += 1;
	dialogue[7][4][i][languages.english] = "Good choice.";
	i += 1;
	dialogue[7][4][i][languages.english] = "I hope that serves you well.";
	i += 1;
	dialogue[7][4][i][languages.english] = "That's a good one.";
	i += 1;
	dialogue[7][4][i][languages.english] = "Pleasure doing business.";
	i += 1;
	dialogue[7][4][i][languages.english] = "I could see you eyeing that one, heh.";
	#endregion
	
	#region Not Enough Money
	var i = 0;
	dialogue[7][5][i][languages.english] = "I ain't running a charity here.";
	i += 1;
	dialogue[7][5][i][languages.english] = "Ain’t giving valuables away for free. It wouldn't be a shop, would it?";
	i += 1;
	dialogue[7][5][i][languages.english] = "Come back when you're a little richer.";
	i += 1;
	dialogue[7][5][i][languages.english] = "Wallet's looking a bit thin there, buddy.";
	i += 1;
	dialogue[7][5][i][languages.english] = "Bit broke at the moment?";
	i += 1;
	dialogue[7][5][i][languages.english] = "I'm afraid I can't settle for this price.";
	i += 1;
	dialogue[7][5][i][languages.english] = "For this price I could only get you this hopefully not-expired coupon for a pizza place, heh.";
	#endregion
	
	#region Talk Options
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.english] = "'Why sell to us?'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][0][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.english] = "'About yourself'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][1][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.english] = "'The Boss'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][2][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.english] = "'The Depths'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][3][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.english] = "'Why are you still here?'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][4][languages.arabic] = "";
	
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.english] = "'Old Boss'";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.turkish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.german] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.italian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.french] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.polish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.chinese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.spanish] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.japanese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.portuguese] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.norwegian] = "";
	dialogue[stringAttributes.shop_gearCube][stringAttributes.shopString_question][5][languages.arabic] = "";
	#endregion
	
	#region Leave Shop
	var i = 0;
	dialogue[7][7][i][languages.english] = "'Til next time.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Good luck, you're gonna need it.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Come back soon.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Almost my lunch break anyway.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Don't be gone too long.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Yeah, yeah.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Gotta take a break.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Don't die.";
	i += 1;
	dialogue[7][7][i][languages.english] = "Hope you're satisfied.";
	#endregion
	
	#region "Why Sell To Us?"
	var i = 0;
	dialogue[7][8][i][languages.english] = "There's money to be made. I take that opportunity and roll with it.";
	i += 1;
	dialogue[7][8][i][languages.english] = "Sometimes selling stuff I find in storage to the very people I was hired to keep out of the facility, you know?";
	i += 1;
	dialogue[7][8][i][languages.english] = "I don't get paid enough to care about the new boss' personal beef anyhow, I'm just the janitor here, after all.";
	#endregion
	
	#region "About Yourself"
	var i = 0;
	dialogue[7][9][i][languages.english] = "Phil.";
	i += 1;
	dialogue[7][9][i][languages.english] = "I'm here to offer some goods that might give you a chance to make it out of here in one piece. For that I’ll get my share of your well-earned money.";
	#endregion
	
	#region "The Boss"
	var i = 0;
	dialogue[7][10][i][languages.english] = "Haven't actually seen him in person.";
	i += 1;
	dialogue[7][10][i][languages.english] = "Seems like a scary guy. Me and the other rookies just work for him over an agreement.";
	i += 1;
	dialogue[7][10][i][languages.english] = "I have no clue what he intends to do with this facility, though I couldn't care less.";
	i += 1;
	dialogue[7][10][i][languages.english] = "It's much better than that one job I had a couple years back. Food delivery blows when you have to fly through miles of empty space.";
	i += 1;
	dialogue[7][10][i][languages.english] = "...";
	i += 1;
	dialogue[7][10][i][languages.english] = "I wouldn't really go snooping my nose somewhere it doesn't belong. Better stay as far away from the guy as possible.";
	i += 1;
	dialogue[7][10][i][languages.english] = "His weird henchmen give me the creeps.";
	#endregion
	
	#region "The Depths"
	var i = 0;
	dialogue[7][11][i][languages.english] = "So the rumors really were true, huh? There was a giant blob in here keeping the place stable...";
	i += 1;
	dialogue[7][11][i][languages.english] = "Given the whole facility's been blown to bits, I take it you somehow managed to destroy it.";
	i += 1;
	dialogue[7][11][i][languages.english] = "I guess you really aren't messing around. You might actually have a shot at fighting the boss.";
	#endregion
	
	#region "Why Are You Still Here?"
	var i = 0;
	dialogue[7][12][i][languages.english] = "Bet I can find some real goods in all this debris.";
	i += 1;
	dialogue[7][12][i][languages.english] = "Sell those off to some other sucker and pile up some cash for a vacation.";
	i += 1;
	dialogue[7][12][i][languages.english] = "Just gotta hold out hope that you strike gold!";
	#endregion
	
	#region "Old Boss"
	var i = 0;
	dialogue[7][13][i][languages.english] = "We’re not from here, you know.";
	i += 1;
	dialogue[7][13][i][languages.english] = "My homeplanet might be a chill place but the overpopulation made finding jobs a lot harder.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Not like I’m asking for it, working overtime ain’t my thing really.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Our old boss was too naive of a guy, cared about our well being more than anything. Foolish if you ask me.";
	i += 1;
	dialogue[7][13][i][languages.english] = "That shady guy ruling this place came to our boss and offered free jobs for the rest of us.";
	i += 1;
	dialogue[7][13][i][languages.english] = "The old man couldn’t say no to that, and sent us off to this junkyard of a place.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Now that our new boss left us, I’ll evaluate this situation like how a smart businessman would.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Taking a nice, sweet break and slacking off like there’s no tomorrow.";
	i += 1;
	dialogue[7][13][i][languages.english] = "Just ring the bell if you wanna have a deal.";
	#endregion
	#endregion
	
	#region Options
	#region True
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.english] = "True";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.turkish] = "Etkin";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.german] = "Wahr";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.italian] = "Sì";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.french] = "Oui";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.polish] = "Tak";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.spanish] = "Activado";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.japanese] = "True";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.portuguese] = "Ativado";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_true][stringAttributes.title][0][languages.arabic] = "صحيح";
	#endregion
	
	#region False
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.english] = "False";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.turkish] = "Devre Dışı";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.german] = "Falsch";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.italian] = "No";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.french] = "Non";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.polish] = "Nie";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.spanish] = "Desactivado";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.japanese] = "False";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.portuguese] = "Desativado";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_false][stringAttributes.title][0][languages.arabic] = "خاطئ";
	#endregion
	
	#region Display
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.english] = "Display";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.turkish] = "Görüntü";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.german] = "Anzeige";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.italian] = "Display";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.french] = "Affichage";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.polish] = "Ekran";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.spanish] = "Vista";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.japanese] = "ディスプレイ";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.portuguese] = "Exibição";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_display][stringAttributes.title][0][languages.arabic] = "الشاشة";
	#endregion
	
	#region Audio
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.english] = "Audio";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.turkish] = "Ses";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.german] = "Audio";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.italian] = "Audio";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.french] = "Audio";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.polish] = "Dźwięk";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.spanish] = "Audio";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.japanese] = "オーディオ";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.portuguese] = "Áudio";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_audio][stringAttributes.title][0][languages.arabic] = "الصوت";
	#endregion
	
	#region Controls
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.english] = "Controls";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.turkish] = "Kontroller";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.german] = "Kontrollen";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.italian] = "Controlli";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.french] = "Contrôles";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.polish] = "Sterowanie";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.spanish] = "Controles";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.japanese] = "操作";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.portuguese] = "Controles";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_controls][stringAttributes.title][0][languages.arabic] = "التحكم";
	#endregion
	
	#region Language
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.english] = "Language";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Other
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.english] = "Other";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Fullscreen
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.english] = "Fullscreen";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Window Size
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.english] = "Window Size";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Music
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.english] = "Music";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Sound Effects
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.english] = "Sound Effects";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Left
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.english] = "Left";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Right
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.english] = "Right";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Up
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.english] = "Up";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Down
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.english] = "Down";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Jump
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.english] = "Jump";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Attack
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.english] = "Attack";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Start
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.english] = "Start";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Select
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.english] = "Select";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Press Any Key
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.english] = "Press Any Key";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.turkish] = "Herhangi Bir Tuşa Bas";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_pressAnyKey][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Extra Tutorials
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.english] = "Extra Tutorials";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Auto Swallow
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.english] = "Auto Swallow";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Default
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.english] = "Default";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_default][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	#endregion
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}