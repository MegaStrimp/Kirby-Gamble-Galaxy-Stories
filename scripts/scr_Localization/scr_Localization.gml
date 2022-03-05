///description Localization
///param {real} dialogueCategory Which category to check.
///param {real} dialogueIndex Which dialogue index to check.
///param {real} dialogueLine Which line to check.
///param {real} language Which language to check.

function scr_Localization(argument0,argument1,argument2,argument3)
{
	/*
		---Categories---
		
		0 - Misc
		1 - Ability Pause Screen
		2 - Cutscene Dialogue
		3 - Cellphone Dialogue
		4 - Bestiary Menu
		5 - Customize Menu
		6 - Starcutter Shop
		7 - Gear Cube Shop
		
		---Abilities---
		
		0 - Kirby
		1 - Gamble
		2 - Meta Knight
		3 - Keeby
		4 - Helper
		5 - Prince Fluff
		6 - Magolor
		7 - Cutter
		8 - Beam
		9 - Mystic Beam
		10 - Stone
		11 - UFO
		12 - Mirror
		13 - Ninja
		14 - Bomb
		15 - Fire
		16 - Mystic Fire
		17 - Ice
		18 - Spark
		19 - Yoyo
		20 - Wheel
		21 - Artist
		22 - Fighter
		23 - Suplex
		24 - Wing
		25 - Jet
		26 - Sword
		27 - Parasol
		28 - Hammer
		29 - Bell
		30 - Water
		31 - Sleep
		32 - Scan
		33 - Crash
		34 - Mic
		35 - Ultra Sword
		
		---Customize Menu Categories---
		
		0 - Characters
		1 - Skins
		2 - Spray Paints
		3 - Hat Skins
		4 - Hat Paints
		5 - Familiars
		
		---Languages---
		
		0 - English
		1 - Turkish
		2 - German
		3 - Italian
		4 - French
		5 - Polish
		6 - Chinese
		7 - Spanish
		8 - Japanese
		9 - Portuguese
		10 - Norwegian
		11 - Arabic
	*/
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region Misc
	#region Shop Choices
	var i = 0;
	dialogue[0][0][i][languages.english] = "BUY";
	i += 1;
	dialogue[0][0][i][languages.english] = "TALK";
	i += 1;
	dialogue[0][0][i][languages.english] = "LEAVE";
	i += 1;
	dialogue[0][0][i][languages.english] = "NEXT";
	i += 1;
	dialogue[0][0][i][languages.english] = "BACK";
	i += 1;
	dialogue[0][0][i][languages.english] = "'Why sell to us?'";
	i += 1;
	dialogue[0][0][i][languages.english] = "'About yourself'";
	i += 1;
	dialogue[0][0][i][languages.english] = "'The Boss'";
	i += 1;
	dialogue[0][0][i][languages.english] = "'The Depths'";
	i += 1;
	dialogue[0][0][i][languages.english] = "'Why are you still here?'";
	i += 1;
	dialogue[0][0][i][languages.english] = "'Old Boss'";
	#endregion
	
	#region Character Names
	var i = 0;
	dialogue[0][1][i][languages.english] = "";
	i += 1;
	#endregion
	
	#region Enemy Names
	#endregion
	var i = 0;
	dialogue[0][2][i][languages.english] = "Waddle Dee";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Waddle Doo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Bronto Burt";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Twizzy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Tookey";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Sir Kibble";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Gordo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Blood Gordo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Shotzo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Mystic Doo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Bouncy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Mr. Boogie";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Search";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Hive Drone";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Wapod";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Flamebelch";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Cappy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Broom Hatter";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Coconut";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Noddy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Blado";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Scarfy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Rocky";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Grizzo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Jungle Bomb";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Glunk";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Kabu";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Burning Leo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Tomatoo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "'Onion'";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Anemonee";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Gim";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Poppy Bros Jr.";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Bobo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Foley";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Nidoo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Como";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Cairn";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Bomber";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Simirror";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "";
	dialogue[0][2][i][languages.italian] = "";
	dialogue[0][2][i][languages.french] = "";
	dialogue[0][2][i][languages.polish] = "";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "";
	dialogue[0][2][i][languages.japanese] = "";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	#endregion
	
	#region World Names
	var i = 0;
	dialogue[0][3][i][languages.english] = "";
	#endregion
	
	#region Other Names
	var i = 0;
	dialogue[0][4][i][languages.english] = "";
	#endregion
	
	#region Languages
	var i = 0;
	dialogue[0][5][i][languages.english] = "English";
	i += 1;
	dialogue[0][5][i][languages.english] = "Türkçe";
	i += 1;
	dialogue[0][5][i][languages.english] = "Deutsch";
	i += 1;
	dialogue[0][5][i][languages.english] = "Italiano";
	i += 1;
	dialogue[0][5][i][languages.english] = "Français";
	i += 1;
	dialogue[0][5][i][languages.english] = "Polski";
	i += 1;
	dialogue[0][5][i][languages.english] = "Chinese *";
	i += 1;
	dialogue[0][5][i][languages.english] = "Español";
	i += 1;
	dialogue[0][5][i][languages.english] = "日本語";
	i += 1;
	dialogue[0][5][i][languages.english] = "Português";
	i += 1;
	dialogue[0][5][i][languages.english] = "Norwegian *";
	i += 1;
	dialogue[0][5][i][languages.english] = "عربي";
	i += 1;
	#endregion
	
	#region Ability Pause Descriptions
	#region Kirby
	i = 0;
	dialogue[1][0][i][languages.english] = "Riding in on the spring breeze, it's Kirby! Inhale enemies and copy their powers. A galaxy stretches beyond your wildest dreams, so it's time to get going!";
	#endregion
	
	#region Gamble
	i = 0;
	dialogue[1][1][i][languages.english] = "This new friend from outer space came to Popstar to ask Kirby for a hand in defeating the Cosmic Fluxbender! Gamble wields dice, cards, roulettes, and magical energy to take down the enemy. Make them fold!";
	#endregion
	
	#region Meta Knight
	i = 0;
	dialogue[1][2][i][languages.english] = "The mysterious masked knight from Kirby's Adventure is here! He is chivalrous and always willing to fight any source of evil. All of Dream Land fears his sword!";
	#endregion
	
	i = 0;
	dialogue[1][3][i][languages.english] = "";
	
	i = 0;
	dialogue[1][4][i][languages.english] = "";
	
	i = 0;
	dialogue[1][5][i][languages.english] = "";
	
	#region Magolor
	i = 0;
	dialogue[1][6][i][languages.english] = "'Flux? I'll show you real power!' This tricky wizard hails from Kirby's Return to Dream Land. He used to be a lying cheat, but he's reformed... right? His otherworldly magic will make short work of your enemies!";
	#endregion
	
	#region Cutter
	i = 0;
	dialogue[1][7][i][languages.english] = "Wield a sharp boomerang to slash and dash through enemies!";
	dialogue[1][7][i][languages.turkish] = "Wield a sharp boomerang to slash and dash through enemies!";
	dialogue[1][7][i][languages.german] = "Halte einen scharfen Bumerang, um Feinde zu zerschneiden und zu stürmen!";
	dialogue[1][7][i][languages.italian] = "Brandisci un’affilata lama per scattare attraverso i nemici o tagliarli!";
	dialogue[1][7][i][languages.french] = "Utilise un boomerang aiguisé pour trancher et foncer à travers les ennemis!";
	dialogue[1][7][i][languages.polish] = "Władaj ostrym jak żyletka bumerangiem żeby tnąć i przecinać się przez przeszkody!";
	dialogue[1][7][i][languages.chinese] = "挥动一个锋利的回旋镖砍和冲过敌人!";
	dialogue[1][7][i][languages.spanish] = "¡Porta un afilado bumerán para cortar y atravesar a tus enemigos!";
	dialogue[1][7][i][languages.japanese] = "鋭いブーメランを振り回して、敵を切り裂いたり、ダッシュしたりすることがで きます!";
	dialogue[1][7][i][languages.portuguese] = "Bruk en skarp boomerang for å kutte og stikke gjennom fiender!";
	dialogue[1][7][i][languages.norwegian] = "Empunhe um bumerangue afiado para cortar e atravessar os inimigos!";
	dialogue[1][7][i][languages.arabic] = "إستخدم بوميرانج حاد لتقطيع الأعداء والإندفاع بينهم";
	#endregion
	
	#region Beam
	i = 0;
	dialogue[1][8][i][languages.english] = "Conjure up rays of electricity to flail around. Charge up to shoot from a distance!";
	dialogue[1][8][i][languages.turkish] = "Conjure up rays of electricity to flail around. Charge up to shoot from a distance!";
	dialogue[1][8][i][languages.german] = "Beschwöre Elektrizitätsstrahlen, um herumzuschleudern. Aufladen, um aus der Ferne zu schießen!";
	dialogue[1][8][i][languages.italian] = "Fai apparire raggi di elettricità! Carica per lanciarli da lontano!";
	dialogue[1][8][i][languages.french] = "Projette des rayons d’énergie aux alentours, ou lance une attaque chargée à distance!";
	dialogue[1][8][i][languages.polish] = "Wyczaruj elektryczne promienie żeby trzepać nimi dookoła. załaduj atak żeby wystrzelić z daleka!";
	dialogue[1][8][i][languages.chinese] = "召唤出一束束电来四处链枷. 充电射击从远处！";
	dialogue[1][8][i][languages.spanish] = "¡Crea un rayo de electricidad y agítalo! ¡Cárgalo para disparar a distancia!";
	dialogue[1][8][i][languages.japanese] = "電気の光線を出します。チャージすると遠くから飛ばすことができます!";
	dialogue[1][8][i][languages.portuguese] = "Tryll frem stråler av elektrisitet for å svinge rundt. Lad opp for å skyte Fra avstand!";
	dialogue[1][8][i][languages.norwegian] = "Invoque raios de eletricidade e agite-os por aí. Carregue para atirar à distância!";
	dialogue[1][8][i][languages.arabic] = "استحضر اشعة كهربائية لتدور حولها، اشحن الاشعة لتطلقها من مسافة بعيدة!";
	#endregion
	
	#region Mystic Beam
	i = 0;
	dialogue[1][9][i][languages.english] = "The power of flux has turned our Beam into Mystic Beam! The beam shield doubles as an attack!";
	dialogue[1][9][i][languages.turkish] = "The power of flux has turned our Beam into Mystic Beam! The beam shield doubles as an attack!";
	dialogue[1][9][i][languages.german] = "Die Kraft des Flusses hat unseren Strahl in einen mystischen Strahl verwandelt! Der Strahlschild dient auch als Angriff!";
	dialogue[1][9][i][languages.italian] = "Il potere del flusso mistico ha trasformato la tua abilità Raggio nella nuova abilità Raggio Mistico! Lo scudo di raggio funziona anche come attacco!";
	dialogue[1][9][i][languages.french] = " Le pouvoir du flux a transformé le Rayon en Rayon Mystique! Le bouclier peut être utilisé comme attaque!";
	dialogue[1][9][i][languages.polish] = "Poprzez moce Flux'a zmieniło nasz promień w Promień Mityczny! Tarcza z Promienia podwaja się jako atak!";
	dialogue[1][9][i][languages.chinese] = "”Flux“的力量把我们的光束变成了神秘的光束! 光束护盾兼作攻击！";
	dialogue[1][9][i][languages.spanish] = "¡El poder del flux ha transformado tu Rayo en un Rayo Místico! ¡La barrera eléctrica también sirve de ataque!";
	dialogue[1][9][i][languages.japanese] = "フラックスの力で「ビーム」が「ミスティックビーム」に!? ビームシールドは攻撃にもなります!";
	dialogue[1][9][i][languages.portuguese] = "O poder do fluxo transformou o nosso Raio no Raio Místico! O escudo de raio também funciona como um ataque!";
	dialogue[1][9][i][languages.norwegian] = "Fluxens makten har gjort vår stråle til Mystic Beam! Bjelkeskjoldet dobler som et angrep!";
	dialogue[1][9][i][languages.arabic] = "قوة التدفق حولت الشعاع إلى شعاع روحاني! الشعاع هذا يستخدم كدرع ايضا!";
	#endregion
	
	#region Stone
	i = 0;
	dialogue[1][10][i][languages.english] = "Turn into a rock and become impenetrable! What are these strange statues?";
	dialogue[1][10][i][languages.turkish] = "Turn into a rock and become impenetrable! What are these strange statues?";
	dialogue[1][10][i][languages.german] = "Verwandle dich in einen Felsen und werde undurchdringlich! Was sind das für seltsame Statuen?";
	dialogue[1][10][i][languages.italian] = "Trasformati in una roccia per diventare impenetrabile! Un momento... Cosa sono queste strane statue?";
	dialogue[1][10][i][languages.french] = "Transforme-toi en pierre et deviens impénétrable! Mais quelles sont ces étranges statues?";
	dialogue[1][10][i][languages.polish] = "Zmień się w głaz i stań się raktycznie nietykalny! Czym są te dziwaczne posągi?";
	dialogue[1][10][i][languages.chinese] = "变成岩石，变得坚不可摧！ 这些奇怪的是什么雕像？";
	dialogue[1][10][i][languages.spanish] = "¡Conviértete en una roca impenetrable! ¿Qué son estas estatuas tan raras?";
	dialogue[1][10][i][languages.japanese] = "岩になって不可侵になります! この不思議な像は何でしょうか?";
	dialogue[1][10][i][languages.portuguese] = "Transforme-se em uma pedra e torne-se impenetrável! Mas o que são essas estátuas estranhas?";
	dialogue[1][10][i][languages.norwegian] = "Slå om til en stein og bli ugjennomtrengelig! Hva er disse merkelige statuer?";
	dialogue[1][10][i][languages.arabic] = "تحول لحجرة وصر منيعا! ما هذه التماثيل الغريبة؟";
	#endregion
	
	#region UFO
	i = 0;
	dialogue[1][11][i][languages.english] = "Transform into an alien ship and blast enemies with lasers, pew pew!";
	dialogue[1][11][i][languages.turkish] = "Transform into an alien ship and blast enemies with lasers, pew pew!";
	dialogue[1][11][i][languages.german] = "Verwandle dich in ein außerirdisches Schiff und vernichte Feinde mit Lasern, pew pew!";
	dialogue[1][11][i][languages.italian] = "Trasformati in un veicolo alieno e spara ai nemici con un potente laser, pew pew!";
	dialogue[1][11][i][languages.french] = "Transforme-toi en vaisseau alien et détruis tes ennemis avec des lasers, Piou Piou!";
	dialogue[1][11][i][languages.polish] = "Zamień się w statek kosmiczny i rozstrzelaj złe istoty laserami, 'giń, giń, GiŃ!'";
	dialogue[1][11][i][languages.chinese] = "变身成一艘外星飞船，用激光轰击敌人，皮尤皮尤！";
	dialogue[1][11][i][languages.spanish] = "¡Transfórmate en una nave alienígena y dispara a tus enemigos! ¡Piu, piu!";
	dialogue[1][11][i][languages.japanese] = "エイリアンの船に変身してレーザーでピューピュー敵を撃ちまくり!";
	dialogue[1][11][i][languages.portuguese] = "Transforme-se em uma nave alienígena e atire em inimigos com lasers, pew pew!";
	dialogue[1][11][i][languages.norwegian] = "Gjør om til et fremmed skip og spreng fiender med lasere, pew pew!";
	dialogue[1][11][i][languages.arabic] = "تحول لسفينة فضائية واطلق على الأعداء بالليزر، بيو بيو!";
	#endregion
	
	#region Mirror
	i = 0;
	dialogue[1][12][i][languages.english] = "Use the power of reflection to send enemy attacks right back at them!";
	dialogue[1][12][i][languages.turkish] = "Use the power of reflection to send enemy attacks right back at them!";
	dialogue[1][12][i][languages.german] = "Nutze die Kraft der Reflexion, um feindliche Angriffe direkt auf sie zurückzusenden!";
	dialogue[1][12][i][languages.italian] = "Usa il potere del riflesso per rispedire i nemici da dove sono venuti!";
	dialogue[1][12][i][languages.french] = "Utilise le pouvoir des reflets et renvoie leurs attaques aux ennemis!";
	dialogue[1][12][i][languages.polish] = "Użyj mocy odzwierciedleń żeby oddać pociski przeciwników z powrotem do nadawcy!";
	dialogue[1][12][i][languages.chinese] = "使用反射的力量将敌人的攻击直接送回 他们！";
	dialogue[1][12][i][languages.spanish] = "¡Usa el poder de los reflejos para devolver los ataques a tus enemigos!";
	dialogue[1][12][i][languages.japanese] = "反射の力を使って、敵の攻撃を跳ね返します!";
	dialogue[1][12][i][languages.portuguese] = "Use o poder de reflexos para mandar ataques de inimigos de volta a eles!";
	dialogue[1][12][i][languages.norwegian] = "Bruk refleksjonskraften til å sende fiendtlige angrep rett tilbake til dem!";
	dialogue[1][12][i][languages.arabic] = "استخدم قوة الانعكاس لتعيد ضربات الأعداء عليهم";
	#endregion
	
	#region Ninja
	i = 0;
	dialogue[1][13][i][languages.english] = "Become an assassin of shadows and strike sneakily!";
	dialogue[1][13][i][languages.turkish] = "Become an assassin of shadows and strike sneakily!";
	dialogue[1][13][i][languages.german] = "Werde ein Attentäter und schlage hinterhältig zu!";
	dialogue[1][13][i][languages.italian] = "Diventa un assassino di ombre e colpisci furtivamente!";
	dialogue[1][13][i][languages.french] = "Deviens un assassin des ombres et frappe en toute discrétion!";
	dialogue[1][13][i][languages.polish] = "Stań się zabójcą cieni i uderzaj bez zauważenia!";
	dialogue[1][13][i][languages.chinese] = "成为阴影的刺客和偷偷摸摸地罢工！";
	dialogue[1][13][i][languages.spanish] = "¡Ataca rápida y sigilosamente como un asesino de las sombras!";
	dialogue[1][13][i][languages.japanese] = "影の暗殺者となって、こっそりと攻撃を仕掛けよう。";
	dialogue[1][13][i][languages.portuguese] = "Torne-se um assassino das sombras e ataque sorrateiramente!";
	dialogue[1][13][i][languages.norwegian] = "Bli en leiemorder og slå lurt!";
	dialogue[1][13][i][languages.arabic] = "صر من مقاتلي الظلال واهجم بخفة";
	#endregion
	
	#region Bomb
	i = 0;
	dialogue[1][14][i][languages.english] = "Grab a bomb and throw it, but don't hold on too long!";
	dialogue[1][14][i][languages.turkish] = "Grab a bomb and throw it, but don't hold on too long!";
	dialogue[1][14][i][languages.german] = "Schnapp dir eine Bombe und wirf sie, aber halte nicht zu lange durch!";
	dialogue[1][14][i][languages.italian] = "Afferra e lancia una granata, ma attento a non tenerla in mano per troppo tempo!";
	dialogue[1][14][i][languages.french] = "Prends une bombe et lance-la, mais ne la tiens pas trop longtemps!";
	dialogue[1][14][i][languages.polish] = "Złap bombę w ręce i wyrzuć nią ale uważaj, nie trzymaj ją za długo!";
	dialogue[1][14][i][languages.chinese] = "抓住一个炸弹扔它，但是不要坚持太久！";
	dialogue[1][14][i][languages.spanish] = "¡Agarra una bomba y lánzala! ¡Pero no la sujetes por demasiado tiempo!";
	dialogue[1][14][i][languages.japanese] = "爆弾を掴んで投げて攻撃しますが、あまり長く持たないように!";
	dialogue[1][14][i][languages.portuguese] = "Pegue uma bomba e lance ela, mas não espere por muito tempo!";
	dialogue[1][14][i][languages.norwegian] = "Ta en bombe og kaste det, men ikke holde det for lenge!";
	dialogue[1][14][i][languages.arabic] = "امسك قنبلة وارمها لتنفجر، لكن لا تمسكها طويلا";
	#endregion
	
	#region Fire
	i = 0;
	dialogue[1][15][i][languages.english] = "Burn up the competition with powerful flames, yowch!";
	dialogue[1][15][i][languages.turkish] = "Burn up the competition with powerful flames, yowch!";
	dialogue[1][15][i][languages.german] = "Verbrenne die Konkurrenz mit mächtigen Flammen, autsch!";
	dialogue[1][15][i][languages.italian] = "Incenerisci gli avversari con potenti fiamme, yowch!";
	dialogue[1][15][i][languages.french] = "Brûle la compétition avec de puissantes flammes, outch!";
	dialogue[1][15][i][languages.polish] = "Spal swoją konkurencje płomieniami gorącymi jak słońce, parzy!";
	dialogue[1][15][i][languages.chinese] = "燃烧起来的竞争与强大的火焰，哎哟！";
	dialogue[1][15][i][languages.spanish] = "¡Quema a la competencia con tus poderosas llamas! ¡Auch!";
	dialogue[1][15][i][languages.japanese] = "強力な炎で相手を焼き尽くしていくぞ。ヤッホーイ!";
	dialogue[1][15][i][languages.portuguese] = "Queime a competição com labaredas poderosas, aii!";
	dialogue[1][15][i][languages.norwegian] = "Brenn opp konkurransen med kraftige flammer, jøss!";
	dialogue[1][15][i][languages.arabic] = "احرق اعدائك بهذه النيران الملتهبة! ياوتش";
	#endregion
	
	#region Mystic Fire
	i = 0;
	dialogue[1][16][i][languages.english] = "The power of flux has made your Fire stronger! No need to aim anymore, so burn your foes to the ground!";
	dialogue[1][16][i][languages.turkish] = "The power of flux has made your Fire stronger! No need to aim anymore, so burn your foes to the ground!";
	dialogue[1][16][i][languages.german] = "Die Kraft des Flusses hat dein Feuer stärker gemacht! Man müss nicht mehr zielen, also verbrenne die Feinde zu Boden!";
	dialogue[1][16][i][languages.italian] = "Il potere del flusso mistico ha potenziato la tua abilità Fuoco! Non serve più puntare, quindi incenerisci i tuoi avversari senza fermarti!";
	dialogue[1][16][i][languages.french] = "Le pouvoir du flux a rendu ton Feu plus puissant! Plus besoin de viser, réduis tes ennemis en cendres!";
	dialogue[1][16][i][languages.polish] = "Moce Flux'a sprawiły że twój dobrze znany ogień jest teraz znacznie silniejszy! Nie trzeba teraz celować, więc wypal swoich przeciwników dopóki będzie tylko proch na ziemi!";
	dialogue[1][16][i][languages.chinese] = "”Flux“的力量使我们的火势更强! 不需要瞄准了，所以烧你的敌人在地上！";
	dialogue[1][16][i][languages.spanish] = "¡El poder del flux ha fortalecido tu Fuego! ¡Ya no necesitas apuntar, así que reduce a tus enemigos a cenizas!";
	dialogue[1][16][i][languages.japanese] = "フラックスの力でFireが強くなった！？狙いをつける必要なし、敵を焼き尽くしまくれ!";
	dialogue[1][16][i][languages.portuguese] = "O poder do fluxo fez o seu Fogo ficar mais forte! Não precisa mais mirar, então bote seus inimigos pra queimar!";
	dialogue[1][16][i][languages.norwegian] = "Fluxens makten har gjort brannen vår sterkere! Ikke nødvendig sikte lenger, så brenn fiendene dine til bakken!";
	dialogue[1][16][i][languages.arabic] = "قوة التدفق جعلت النيران أقوى! لا حاجة إلى التصويب بعد الان، فاحرق اعدائك الى الارض!";
	#endregion
	
	#region Ice
	i = 0;
	dialogue[1][17][i][languages.english] = "Skate around and freeze foes with your cold breath!";
	dialogue[1][17][i][languages.turkish] = "Skate around and freeze foes with your cold breath!";
	dialogue[1][17][i][languages.german] = "Schlittschuh herum und friere Feinde mit deinem kalten Atem ein!";
	dialogue[1][17][i][languages.italian] = "Pattina e congela i nemici con il tuo soffio di ghiaccio!";
	dialogue[1][17][i][languages.french] = "Patine et gèle tes ennemis avec ton souffle glacé!";
	dialogue[1][17][i][languages.polish] = "Ślizgaj się i zamarzaj twoje przeszkody swoim lodowatym oddechem i nie tylko!";
	dialogue[1][17][i][languages.chinese] = "溜冰,用你冰冷的呼吸冻住敌人!";
	dialogue[1][17][i][languages.spanish] = "¡Patina libremente y congela a todos con tu aliento helado!";
	dialogue[1][17][i][languages.japanese] = "スケートしながら冷たい息で敵を凍らせていこう。";
	dialogue[1][17][i][languages.portuguese] = "Patine por aí e congele adversários com seu sopro congelante!";
	dialogue[1][17][i][languages.norwegian] = "Skøyter rundt og frys fiender med ditt kalde pust!";
	dialogue[1][17][i][languages.arabic] = "";
	#endregion
	
	#region Spark
	i = 0;
	dialogue[1][18][i][languages.english] = "Mash the directional keys to charge up and zap enemies!";
	dialogue[1][18][i][languages.turkish] = "Mash the directional keys to charge up and zap enemies!";
	dialogue[1][18][i][languages.german] = "Drücke die Richtungstasten, um aufzuladen und die Feinde zu zappen!";
	dialogue[1][18][i][languages.italian] = "Schiaccia i tasti direzionali per caricare ed elettrizzare i nemici!";
	dialogue[1][18][i][languages.french] = "Appuies sur différentes directions pour charger de l’électricité et foudroie les ennemis.";
	dialogue[1][18][i][languages.polish] = "Roztrzep się na lewo i prawo żeby naelektryzować i zastrzel twoich przeciwników czystą energią elektryczną.";
	dialogue[1][18][i][languages.chinese] = "捣碎方向键，充电和电死敌人！";
	dialogue[1][18][i][languages.spanish] = "¡Machaca las flechas direccionales para cargarte y electrocutar enemigos!";
	dialogue[1][18][i][languages.japanese] = "方向キーを押しまくってチャージし、敵を倒していこう。";
	dialogue[1][18][i][languages.portuguese] = "Aperte rapidamente as setas direcionais para carregar eletricidade e eletrocutar inimigos";
	dialogue[1][18][i][languages.norwegian] = "Mash retningstastene for å lade opp og zappe fiender";
	dialogue[1][18][i][languages.arabic] = "";
	#endregion
	
	#region Yoyo
	i = 0;
	dialogue[1][19][i][languages.english] = "Slide into action and wave a yoyo with stylish power!";
	dialogue[1][19][i][languages.turkish] = "Slide into action and wave a yoyo with stylish power!";
	dialogue[1][19][i][languages.german] = "Rutsche in Aktion und winke ein Jo-Jo mit stylischer Kraft!";
	dialogue[1][19][i][languages.italian] = "Scivola nell’azione servendoti di uno stiloso Yo-Yo con poteri incredibili!";
	dialogue[1][19][i][languages.french] = "Glisse dans l’action et lance un puissant yoyo avec style!";
	dialogue[1][19][i][languages.polish] = "Wsuń się w akcje i rozmachuj swoim jojo z modną mocą!";
	dialogue[1][19][i][languages.chinese] = "滑入行动和挥动一个”Yoyo”与时尚的力量!";
	dialogue[1][19][i][languages.spanish] = "¡Deslízate a la acción con tu yoyó derrochando poder y estilo!";
	dialogue[1][19][i][languages.japanese] = "アクションをスライドさせて、スタイリッシュなパワーでヨーヨーを振ることができます。";
	dialogue[1][19][i][languages.portuguese] = "Entre em ação e agite um ioiô com poder estiloso!";
	dialogue[1][19][i][languages.norwegian] = "Dra til handling og vink en yoyo med stilig kraft!";
	dialogue[1][19][i][languages.arabic] = "";
	#endregion
	
	#region Wheel
	i = 0;
	dialogue[1][20][i][languages.english] = "Speed through crowds of enemies all while being nearly invincible, vroom vroom!";
	dialogue[1][20][i][languages.turkish] = "Speed through crowds of enemies all while being nearly invincible, vroom vroom!";
	dialogue[1][20][i][languages.german] = "Rase durch die Scharen von Feinden, während du fast unbesiegbar bist, vroom vroom!";
	dialogue[1][20][i][languages.italian] = "Corri su molti nemici mentre sei quasi invincibile, vroom vroom!";
	dialogue[1][20][i][languages.french] = "Fonce à travers tes ennemis en étant presque invincible, vroum-vroum!";
	dialogue[1][20][i][languages.polish] = "Przejeżdżaj tłumy Przeciwników podczas gdy jesteś prawie nietykalny, brum brum!";
	dialogue[1][20][i][languages.chinese] = "速度通过敌人的人群，而几乎是无敌的, Vroom!";
	dialogue[1][20][i][languages.spanish] = "¡Atropella hordas de enemigos a toda velocidad mientras eres casi invencible! ¡Brrum brrum!";
	dialogue[1][20][i][languages.japanese] = "無敵の状態で敵の群れをスピードで切り抜けていこう。ブルーンブルーーン!!";
	dialogue[1][20][i][languages.portuguese] = "Acelere por multidões de inimigos ao mesmo tempo que é quase invencível, vrum vrum!";
	dialogue[1][20][i][languages.norwegian] = "Kjør gjennom mengder fiender mens du er nesten uovervinnelig, vroom vroom!";
	dialogue[1][20][i][languages.arabic] = "";
	#endregion
	
	#region Artist
	i = 0;
	dialogue[1][21][i][languages.english] = "Slap opponents with your brush or paint up an army of drawings to fight alongside you!";
	dialogue[1][21][i][languages.turkish] = "Slap opponents with your brush or paint up an army of drawings to fight alongside you!";
	dialogue[1][21][i][languages.german] = "Schlage Gegner mit deinem Pinsel oder male eine Armee von Zeichnungen auf, um an deiner Seite zu kämpfen!";
	dialogue[1][21][i][languages.italian] = "Schiaffeggia i nemici con il tuo pennello o dipingi degli alleati per farli lottare al tuo fianco!";
	dialogue[1][21][i][languages.french] = "- Frappe tes ennemis avec ton pinceau ou peins une armée de dessins qui combattra à tes côtés!";
	dialogue[1][21][i][languages.polish] = "Uderzaj swoich przeciwników twoim magicznym pędzlem lub namaluj armię rysunków żeby walczyli po twojej stronie!";
	dialogue[1][21][i][languages.chinese] = "用你的画笔拍打对手，或者画出一大堆图画和你并肩作战！";
	dialogue[1][21][i][languages.spanish] = "¡Golpea a tus oponentes con tu pincel o pinta un ejército de dibujos que lucharán a tu lado!";
	dialogue[1][21][i][languages.japanese] = "ブラシで相手を叩いたり絵の軍隊を作って一緒に戦ったり......";
	dialogue[1][21][i][languages.portuguese] = "Bata em inimigos com seu pincel ou pinte um exército de desenhos para lutar com você!";
	dialogue[1][21][i][languages.norwegian] = "Slå motstandere med penselen din eller mal opp en hær av tegninger for å kjempe sammen med deg!";
	dialogue[1][21][i][languages.arabic] = "";
	#endregion
	
	#region Fighter
	i = 0;
	dialogue[1][22][i][languages.english] = "Turn into a master martial artist and KO your opponents. Ka-pow!";
	dialogue[1][22][i][languages.turkish] = "Turn into a master martial artist and KO your opponents. Ka-pow!";
	dialogue[1][22][i][languages.german] = "Verwandle dich in einen Meisterkampfkünstler und KO deine Gegner. Ka-pow!";
	dialogue[1][22][i][languages.italian] = "Diventa un maestro di arti marziali e metti KO i nemici! Ka-pow!";
	dialogue[1][22][i][languages.french] = "Deviens un maître des arts martiaux et mets tes adversaires à terre!";
	dialogue[1][22][i][languages.polish] = "Zmień się w mistrza sztuk walki i zadaj K.O twoim przeciwnikom. A-masz!";
	dialogue[1][22][i][languages.chinese] = "变成一个武术大师，KO你的对手。 Kapow！";
	dialogue[1][22][i][languages.spanish] = "¡Conviértete en un maestro de artes marciales y noquea a tus oponentes! ¡Kapow!";
	dialogue[1][22][i][languages.japanese] = "武道の達人になって相手をKOしよう!! ka-POW!";
	dialogue[1][22][i][languages.portuguese] = "Torne-se um mestre das artes marciais e nocauteie seus oponentes. Ka-pow!";
	dialogue[1][22][i][languages.norwegian] = "Gjør deg til en kampsportmester og KO motstanderne dine. ka-pow!";
	dialogue[1][22][i][languages.arabic] = "";
	#endregion
	
	#region Suplex
	i = 0;
	dialogue[1][23][i][languages.english] = "Channel the wrestler spirit by grappling enemies and throwing them around!";
	dialogue[1][23][i][languages.turkish] = "Channel the wrestler spirit by grappling enemies and throwing them around!";
	dialogue[1][23][i][languages.german] = "Kanalisieren Sie den Wrestler-Geist, indem Sie Feinde festhalten und sie herumschleudern!";
	dialogue[1][23][i][languages.italian] = "Ottieni lo spirito di un wrestler prendendo e lanciando via i nemici!";
	dialogue[1][23][i][languages.french] = "Manifeste l’esprit du lutteur en saisissant et lançant les ennemis!";
	dialogue[1][23][i][languages.polish] = "Wciel w sobie Duszę prawdziwego zapaśnika poprzez łapanie przeciwników i przerzucanie nimi na różne strony!";
	dialogue[1][23][i][languages.chinese] = "通过抓住敌人和投掷来引导摔跤手的精神他们周围!";
	dialogue[1][23][i][languages.spanish] = "¡Canaliza tu espíritu de luchador libre agarrando a tus enemigos y lanzándolos por ahí!";
	dialogue[1][23][i][languages.japanese] = "プロレスラーの精神を受け継いで敵を掴んで投げ飛ばせ!";
	dialogue[1][23][i][languages.portuguese] = "Canalize o espírito da luta-livre agarrando inimigos e jogando eles por aí!";
	dialogue[1][23][i][languages.norwegian] = "Kanal bryterånden ved å gripe fiender og kaste dem rundt!";
	dialogue[1][23][i][languages.arabic] = "";
	#endregion
	
	#region Wing
	i = 0;
	dialogue[1][24][i][languages.english] = "Fly through the skies with grace. dash into enemies or send volleys of feathers at them!";
	dialogue[1][24][i][languages.turkish] = "Fly through the skies with grace. dash into enemies or send volleys of feathers at them!";
	dialogue[1][24][i][languages.german] = "Fliegen Sie mit Anmut durch den Himmel. stürze dich in Feinde oder schicke Federsalven auf sie!";
	dialogue[1][24][i][languages.italian] = "Solca i cieli con grazia, scatta sui nemici o colpiscili al volo!";
	dialogue[1][24][i][languages.french] = "Vole dans les airs avec grâce. Fonce sur les ennemis ou lance une volée de plumes vers eux!";
	dialogue[1][24][i][languages.polish] = "Wznieś się swobodnie ku powietrzu i przebijaj się przez przeciwników lub wyrzucaj salwy piór ostrych jak żyletka prosto na żywe przeszkody!";
	dialogue[1][24][i][languages.chinese] = "优雅地飞过天空. 冲向敌人或向他们发射羽毛！";
	dialogue[1][24][i][languages.spanish] = "¡Vuela por los cielos con elegancia! ¡Embiste a tus enemigos o lánzales ráfagas de plumas!";
	dialogue[1][24][i][languages.japanese] = "空を優雅に飛んで、敵に向かってダッシュしたり、羽根を飛ばしたりしていこう!";
	dialogue[1][24][i][languages.portuguese] = "Voe pelos céus graciosamente. Acelere por inimigos ou mande rajadas de penas contra eles!";
	dialogue[1][24][i][languages.norwegian] = "Fly gjennom himmelen med nåde. skyte inn i fiender eller sende volleys av fjær på dem!";
	dialogue[1][24][i][languages.arabic] = "";
	#endregion
	
	#region Jet
	i = 0;
	dialogue[1][25][i][languages.english] = "Charge the engine to zoom forward at supersonic speeds!";
	dialogue[1][25][i][languages.turkish] = "Charge the engine to zoom forward at supersonic speeds!";
	dialogue[1][25][i][languages.german] = "Lade den Motor auf, um mit Überschallgeschwindigkeit vorwärts zu sausen!";
	dialogue[1][25][i][languages.italian] = "Accendi i motori e viaggia a velocità supersoniche!";
	dialogue[1][25][i][languages.french] = "Charge le moteur pour t’envoler en avant à toute vitesse!";
	dialogue[1][25][i][languages.polish] = "Załaduj silnik i przeleć w te i nazad w szybkości dźwięku!";
	dialogue[1][25][i][languages.chinese] = "为发动机充电，以超音速前进！";
	dialogue[1][25][i][languages.spanish] = "¡Carga el motor y lánzate volando a velocidades supersónicas!";
	dialogue[1][25][i][languages.japanese] = "エンジンをチャージして、超音速で突き進め!!";
	dialogue[1][25][i][languages.portuguese] = "Carregue o motor para avançar em velocidades supersônicas!";
	dialogue[1][25][i][languages.norwegian] = "Lad motoren for å zoome fremover med supersoniske hastigheter!";
	dialogue[1][25][i][languages.arabic] = "";
	#endregion
	
	#region Sword
	i = 0;
	dialogue[1][26][i][languages.english] = "Wield a sharp blade to slice and stab all sorts of things!";
	dialogue[1][26][i][languages.turkish] = "Wield a sharp blade to slice and stab all sorts of things!";
	dialogue[1][26][i][languages.german] = "Schwinge eine scharfe Klinge, um alle möglichen Dinge zu zerschneiden und zu erstechen!";
	dialogue[1][26][i][languages.italian] = "Brandisci una lama tagliente e taglia qualsiasi cosa!";
	dialogue[1][26][i][languages.french] = "Brandis une lame tranchante pour couper et percertoutes sortes de choses!";
	dialogue[1][26][i][languages.polish] = "Władaj ostrzem i rozcinaj przeciwników jak nóż przez masło!";
	dialogue[1][26][i][languages.chinese] = "挥舞着锋利的刀片来切割和刺伤各种各样的东西！";
	dialogue[1][26][i][languages.spanish] = "¡Empuña una espada afilada para cortar y atravesar todo tipo de objetos y enemigos!";
	dialogue[1][26][i][languages.japanese] = "鋭利な刃物を振り回して、いろいろなものを切ったり刺したりしてみましょう。";
	dialogue[1][26][i][languages.portuguese] = "Empunhe uma lâmina afiada para fatiar e perfurar todo tipo de coisa!";
	dialogue[1][26][i][languages.norwegian] = "Bruk et skarpt blad for å skjære og stikke alle slags ting!";
	dialogue[1][26][i][languages.arabic] = "";
	#endregion
	
	#region Parasol
	i = 0;
	dialogue[1][27][i][languages.english] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[1][27][i][languages.turkish] = "Schütze dich vor herabfallenden Gegenständen, schlage Feinde und falle sogar langsam!";
	dialogue[1][27][i][languages.german] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[1][27][i][languages.italian] = "Puoi proteggerti dagli oggetti cadenti, colpire nemici e perfino cadere lentamente!";
	dialogue[1][27][i][languages.french] = "Protège-toi des objets tombants, claque les ennemis, et ralentis les chutes!";
	dialogue[1][27][i][languages.polish] = "Broń się przed spadającymi pociskami, uderzaj przeciwników oraz spadaj powoli, jak piórko!";
	dialogue[1][27][i][languages.chinese] = "保护自己免受坠落物体，重击敌人, 甚至撑着伞慢慢落下！";
	dialogue[1][27][i][languages.spanish] = "¡Protégete de objetos que caen, golpea enemigos e incluso controla tu velocidad de caída!";
	dialogue[1][27][i][languages.japanese] = "落下物から身を守ったり、敵を叩いたり、さらにはゆっくりと落下することもできます。";
	dialogue[1][27][i][languages.portuguese] = "Proteja-se de objetos em queda, bata em inimigos e até mesmo caia lentamente com um guarda-chuva!";
	dialogue[1][27][i][languages.norwegian] = "Beskytt deg mot fallende gjenstander, slå fiender og til og med fall sakte med en paraply!";
	dialogue[1][27][i][languages.arabic] = "";
	#endregion
	
	#region Hammer
	i = 0;
	dialogue[1][28][i][languages.english] = "Smash enemies with extremely powerful swings of a hammer, ouch!";
	dialogue[1][28][i][languages.turkish] = "Smash enemies with extremely powerful swings of a hammer, ouch!";
	dialogue[1][28][i][languages.german] = "Zerschmettere Feinde mit extrem starken Hammerschlägen, autsch!";
	dialogue[1][28][i][languages.italian] = "Schiaccia i nemici agitando un martello estremamente forte, ouch!";
	dialogue[1][28][i][languages.french] = "Fracasse les ennemis en secouant violemment un marteau, aïe!";
	dialogue[1][28][i][languages.polish] = "Zgnieć przeciwników z ekstremalnie silnymi trzepnięciami młota, auć!";
	dialogue[1][28][i][languages.chinese] = "用极其强大的锤子击碎敌人, Ouch!";
	dialogue[1][28][i][languages.spanish] = "¡Aplasta enemigos con los poderosos golpes de tu martillo! ¡Ouch!";
	dialogue[1][28][i][languages.japanese] = "ハンマーの超強力なスイングで敵を粉砕しよう。いてっ";
	dialogue[1][28][i][languages.portuguese] = "Esmague inimigos com golpes extremamente poderosos de um martelo, ai!";
	dialogue[1][28][i][languages.norwegian] = "Knus fiender med ekstremt kraftige svingninger av en hammer, au!";
	dialogue[1][28][i][languages.arabic] = "";
	#endregion
	
	#region Bell
	i = 0;
	dialogue[1][29][i][languages.english] = "Ring ring! dual wield these loud instruments to compose a destructive song!";
	dialogue[1][29][i][languages.turkish] = "Ring ring! dual wield these loud instruments to compose a destructive song!";
	dialogue[1][29][i][languages.german] = "Ring ring! Benutze diese lauten Instrumente, um einen destruktiven Song zu komponieren!";
	dialogue[1][29][i][languages.italian] = "Ring ring! Brandisci questi due strumenti rumorosi per comporre una canzone con effetti devastanti!";
	dialogue[1][29][i][languages.french] = "Ding-dong! Manie ces deux bruyants instruments pour composer une chanson destructrice!";
	dialogue[1][29][i][languages.polish] = "Dzyń dzyń! Władaj dwuręcznie głośnymi dzwonkami żeby utworzyć twoją własną ode do zniszczenia!";
	dialogue[1][29][i][languages.chinese] = "Ring Ring！ 双挥这些响亮的乐器组成一个破坏性的歌曲！";
	dialogue[1][29][i][languages.spanish] = "¡Ding Dong! ¡Lleva a dos manos estos ruidosos instrumentos para componer una melodía destructiva!";
	dialogue[1][29][i][languages.japanese] = "この大音量の楽器を二つ振り回して、破壊的な曲を作っていこう!!";
	dialogue[1][29][i][languages.portuguese] = "Blim blim! Empunhe esses dois instrumentos barulhentos para compor uma música destrutiva!";
	dialogue[1][29][i][languages.norwegian] = "Ring ring! doble med disse høye instrumentene for å komponere a ødeleggende sang!";
	dialogue[1][29][i][languages.arabic] = "";
	#endregion
	
	#region Water
	i = 0;
	dialogue[1][30][i][languages.english] = "Bend water to your will to power wash enemies. surfs up!";
	dialogue[1][30][i][languages.turkish] = "Bend water to your will to power wash enemies. surfs up!";
	dialogue[1][30][i][languages.german] = "Beugen Sie Wasser nach Ihrem Willen, um Feinde zu waschen. surft auf!";
	dialogue[1][30][i][languages.italian] = "Sfrutta la potenza dell’acqua per far fuori i nemici… O surfare!";
	dialogue[1][30][i][languages.french] = "Contrôle l’eau à ta guise pour emporter les ennemis. Surfez!";
	dialogue[1][30][i][languages.polish] = "Ukształtuj wode poprzez twoją wolną wole i zrób ostateczną kąpiel twoim wrogom. Uwaga, będzie mokro!";
	dialogue[1][30][i][languages.chinese] = "弯曲水你的意志，权力洗敌人。 冲浪起来！";
	dialogue[1][30][i][languages.spanish] = "¡Controla el agua a tu antojo para lavar a tus enemigos y surfear sobre ellos!";
	dialogue[1][30][i][languages.japanese] = "水を自在に操り、敵にパワーウォッシュをかけていこう!いい波がきてるぜ!";
	dialogue[1][30][i][languages.portuguese] = "Dobre a água à sua vontade para lavar inimigos. Tá dando onda!";
	dialogue[1][30][i][languages.norwegian] = "Bøy vann til din vilje for å vaske fiender. surfer opp!";
	dialogue[1][30][i][languages.arabic] = "";
	#endregion
	
	#region Sleep
	i = 0;
	dialogue[1][31][i][languages.english] =  "Yawn... 5 more minutes... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.turkish] =  "Yawn... 5 more minutes... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.german] =  "Gähn... Noch 5 Minuten... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.italian] =  "Yamn... Altri 5 minuti... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.french] =  "Bâille... Encore 5 minutes... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.polish] =  "Chrrrrrrrr... Je-jeszcze pięć minut... chrrrrr...";
	dialogue[1][31][i][languages.chinese] =  "Yawn... 再过5分钟... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.spanish] =  "Uuuaaahhh... Solo 5 minutos más... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.japanese] =  "ふぅぁぁぁ・・・あと5分・・・zzzzzzzzzzz.....";
	dialogue[1][31][i][languages.portuguese] =  "Uaaaah! Mais cinco minutos... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.norwegian] =  "Gjesp... fem minutter til... zzzzzzzzzzz...";
	dialogue[1][31][i][languages.arabic] = "";
	#endregion
	
	#region Scan
	i = 0;
	dialogue[1][32][i][languages.english] = "Use an advanced headset to scan and copy foes abilities!";
	dialogue[1][32][i][languages.turkish] = "Use an advanced headset to scan and copy foes abilities!";
	dialogue[1][32][i][languages.german] = "Verwend ein fortschrittliches Headset, um die Fähigkeiten von Feinden zu scannen und zu kopieren!";
	dialogue[1][32][i][languages.italian] = "Usa un’avanzata attrezzatura per scannerizzare e copiare le mosse degli avversari!";
	dialogue[1][32][i][languages.french] = "Utilise un casque high-tech pour copier les capacités des ennemis!";
	dialogue[1][32][i][languages.polish] = "Użyj zaawansowanego hełmu żeby skanować i kopiować przeróżne zdolności!";
	dialogue[1][32][i][languages.chinese] = "使用先进的耳机扫描和复制敌人的能力!";
	dialogue[1][32][i][languages.spanish] = "¡Usa tu visor avanzado para escanear y copiar las habilidades de tus enemigos!";
	dialogue[1][32][i][languages.japanese] = "進化したヘッドセットを使って、敵の能力をスキャンしてコピーしよう。";
	dialogue[1][32][i][languages.portuguese] = "Use um headset avançado para escanear e copiar as habilidades de inimigos!";
	dialogue[1][32][i][languages.norwegian] = "Bruk en avansert headset og kopier fiendenes evner!";
	dialogue[1][32][i][languages.arabic] = "";
	#endregion
	
	#region Crash
	i = 0;
	dialogue[1][33][i][languages.english] = "Clear the whole screen with a single mighty boom!";
	dialogue[1][33][i][languages.turkish] = "Clear the whole screen with a single mighty boom!";
	dialogue[1][33][i][languages.german] = "Zerstöre den gesamten Bildschirm mit einer einzigen mächtigen Explosion!";
	dialogue[1][33][i][languages.italian] = "Riempi lo schermo con uno potentissimo BOOM!";
	dialogue[1][33][i][languages.french] = "Balaye tous les ennemis à l’écran avec une puissante explosion!";
	dialogue[1][33][i][languages.polish] = "Wyczyść cały ekran poprzez jeden spory wybuch!";
	dialogue[1][33][i][languages.chinese] = "用一个强大的轰隆声清除整个屏幕!";
	dialogue[1][33][i][languages.spanish] = "¡Despeja toda la pantalla con una gran explosión!";
	dialogue[1][32][i][languages.japanese] = "画面全体を豪快に一発で消し去れ!!!!";
	dialogue[1][33][i][languages.portuguese] = "Limpe a tela inteira com uma única explosão poderosa!";
	dialogue[1][33][i][languages.norwegian] = "Fjern hele skjermen med en kraftig bom!";
	dialogue[1][33][i][languages.arabic] = "";
	#endregion
	
	#region Mic
	i = 0;
	dialogue[1][34][i][languages.english] = "Use your powerful singing skill to defeat all the enemies around you! ‘CHESTO!’";
	dialogue[1][34][i][languages.turkish] = "Use your powerful singing skill to defeat all the enemies around you! ‘CHESTO!’";
	dialogue[1][34][i][languages.german] = "Nutze deine mächtigen Gesangskünste, um alle Feinde um dich herum zu besiegen! 'CHESTO!'";
	dialogue[1][34][i][languages.italian] = "Usa le tue potenti abilità canore per sconfiggere i nemici intorno a te! 'CHESTO!'";
	dialogue[1][34][i][languages.french] = "Terrasse tous les ennemis en vue à l’aide de tes talents de chanteur! 'CHESTO!'";
	dialogue[1][34][i][languages.polish] = "Użyj swoje zdolności śpiewu żeby pokonać wszystkich przeciwników dookoła ciebie! 'CZYSTO!'";
	dialogue[1][34][i][languages.chinese] = "使用你强大的歌唱技巧来击败你周围的所有敌人！’CHESTO!’";
	dialogue[1][34][i][languages.spanish] = "¡Usa tu poderosa técnica vocal para derrotar a todos los enemigos que te rodean! '¡CHESTO!'";
	dialogue[1][33][i][languages.japanese] = "パワフルな歌唱力で周りの敵を倒していきましょう!!!‘チェストォォ!!!!!’";
	dialogue[1][34][i][languages.portuguese] = "Use a sua poderosa habilidade de canto para derrotar todos os inimigos ao seu redor! ‘CHESTO!’";
	dialogue[1][34][i][languages.norwegian] = "Bruk din kraftige sangferdighet for å beseire alle fiendene rundt deg! ‘CHESTO!’";
	dialogue[1][34][i][languages.arabic] = "";
	#endregion
	
	#region Ultra Sword
	i = 0;
	dialogue[1][35][i][languages.english] = "This huge sword can devastate enemies and your terrain with pure destructive power! Slice and dice!";
	dialogue[1][35][i][languages.turkish] = "This huge sword can devastate enemies and your terrain with pure destructive power! Slice and dice!";
	dialogue[1][35][i][languages.german] = "Dieses riesige Schwert kann Feinde und dein Gelände mit purer Zerstörungskraft verwüsten! In Würfel schneiden!";
	dialogue[1][35][i][languages.italian] = "Quest’enorme spada può devastare i nemici e il terreno con puro potere distruttivo! Slice and dice!";
	dialogue[1][35][i][languages.french] = "Cette énorme épée peut anéantir les ennemis et le terrain avec une force destructrice! Tranche et hache!";
	dialogue[1][35][i][languages.polish] = "Ten Spory Miecz z łatwością przecina i niszczy przeciwników oraz twoje otoczenie z czystą mocą ZNISZCZENIA! Tnij i rozcinaj!";
	dialogue[1][35][i][languages.chinese] = "这个巨大的剑可以摧毁敌人和的地形 拥有纯粹的破坏力！ 切片和切块!";
	dialogue[1][35][i][languages.spanish] = "¡Esta espada gigante puede arrasar tanto con enemigos como con el terreno con puro poder destructivo! ¡Corta y trocea!";
	dialogue[1][35][i][languages.japanese] = "この巨大な剣は、敵と自分の地形を破壊することができる純粋な破壊力があります!";
	dialogue[1][35][i][languages.portuguese] = "Esta espada enorme pode devastar inimigos e seu terreno com puro poder destrutivo! Fatie e pique!";
	dialogue[1][35][i][languages.norwegian] = "Dette enorme sverdet kan ødelegge fiender og terrenget ditt med ren ødeleggende kraft! Skjære og kutte!";
	dialogue[1][35][i][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Bestiary Menu
	#region Characters
	var i = 0;
	dialogue[4][0][i][languages.english] = "";
	dialogue[4][0][i][languages.turkish] = "";
	dialogue[4][0][i][languages.german] = "";
	dialogue[4][0][i][languages.italian] = "";
	dialogue[4][0][i][languages.french] = "";
	dialogue[4][0][i][languages.polish] = "";
	dialogue[4][0][i][languages.chinese] = "";
	dialogue[4][0][i][languages.spanish] = "";
	dialogue[4][0][i][languages.japanese] = "";
	dialogue[4][0][i][languages.portuguese] = "";
	dialogue[4][0][i][languages.norwegian] = "";
	dialogue[4][0][i][languages.arabic] = "";
	#endregion
	
	#region Enemies
	var i = 0;
	dialogue[4][1][i][languages.english] = "The most common of Popstar residents. Many have chosen to work for King Dedede, some even choosing to wield spears or parasols.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These creatures are known to shoot a beam out of their singular large eye.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A flying foe who takes to the skies whenever someone gets near, and will try and ram into you sometimes.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A baby Tookey, never seen far from its mother. They are known to ram into others for fun.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "The adult variant of Twizzy that is always found near its chicks. It will ram into anyone who gets near its babies.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A knight of the bladed boomerang variety. By channeling his energy he can throw a larger blade.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An invincible ball of spikes, yowch! Can break ability stars upon contact.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A very angry variant of the classic Gordo. This version's horns pierce the air, and it's metal shines like a red sun.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These cannons are a staple of the Halberd and Castle Dedede's arsenals. Can come in single shot and 3 round burst flavors.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A Waddle Doo warped by the power of Flux. By utilizing its new power it can create a beam barrier, which can also be launched forward.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Such a pleasant little friend! Bouncies bounce up and down. A simple life, but a happy one. That little face looks familiar...";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "It's a sentient booger that seems to walk aimlessly, but in reality it’s looking for some tissues.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A small bomb with a face. If you get too close, it'll detonate, so steer clear.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A mining bot, built for the sole purpose of harvesting Alexandrum, a mysterious mineral.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These ghosts look oddly like Waddle Dees. It's probably a coincidence. They pop out of pots like funny genies, and fly up, up, and away!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An old candle brought to life by flux. Has a distinct dislike for sodas, as it causes it to have severe hiccups.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "One of the native residents of Popstar, these shy creatures will shoot their mushroom caps into the air when approached, and will panic if their cap is stolen.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These little guys have one goal; clean everything they can. This results in a bit of a bad habit, being ramming into people by accident. Despite their witchy appearances, they mean well.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These palm tree fruits are packed with explosives to spread the seeds inside, but only fall when you run under, so watch out!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An enemy who prefers sleeping over fighting, most commonly found near the Fountain of Dreams.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Shing! This angry fellow rolls across the ground, quick as a racecar, trying to slice up it's foes. This creature was devised by the mind of a mysterious painter, and looks a bit like a Gordo.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "This deceiving enemy looks cute at first glance, but anger it and it will become rabid and explode after a few seconds. cannot be swallowed.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A sentient boulder that tries to crush threats with its body. grants the stone ability upon swallowing.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A large bear that lives in dense forests. it can use its claws to grab onto foes and scratch them, usually when provoked.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A small pineapple sapling. Jungle Bombs will puke up bombs at threats, up to 3.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An aquatic plant who will periodically shoot water out of its mouth, up to 5 projectiles at a time.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These ancient statues spin across the land, ramming into whoever is unfortunate enough to be in their path.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A hotheaded creature capable of many fire based attacks, such as shooting a flame ball.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A creature that looks a lot like a juicy red vegetable. Or is it a fruit? It will forever be a mystery.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Onion, contrary to its name, is a missile like carrot creature native to egg gardens. They like to hide in the soil and ambush people passing by.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An aquatic creature with long tendrils jutting from its head. It dances back and forth to the waves of the oceans they reside in.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Gim is a fanatic of all things yoyos, and is a master of wielding them. rumor has it their collection has over 50 different yoyos!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A trouble making kid with an innate love for explosives. Nobody knows where they get all of those bombs from.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A creature that appears to be a walking fireball. Hotter than a Hothead, but doesn't seem to think very much. ";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Don't underestimate this guy by his cute appearance. This creature can fly and explode at will. It will drop out of the sky like an airstrike to explode, so look out!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "That's no door! If you try to go through these fake doors, they'll jump up and try to squish you!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Native to Grass Land, these arachnids dangle from trees, hoping someone will bump into them. This rarely happens. It's said there is a variant of this species that can walk on two legs...";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A stack of cute rocks. Very jumpy fellows. Boing!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Highly dangerous enemy. It will leap from ledges and release a big explosion, which will hurt you pretty badly.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A powerful magician, with strong mirror-oriented magic. He can create clones of himself, warp around, and more!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein mächtiger Magier mit starker spiegelorientierter Magie. Er kann Klone von sich selbst erstellen, herumwarpen und vieles mehr!";
	dialogue[4][1][i][languages.italian] = "";
	dialogue[4][1][i][languages.french] = "";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	#endregion
	#endregion
	
	#region Customize Menu
	#region Characters
	#endregion
	
	#region Skins
	#endregion
	
	#region Spray Paints
	var i = 0;
	dialogue[5][2][i][languages.english] = "Testing? Testing.";
	#endregion
	
	#region Familiars
	var i = 0;
	dialogue[5][5][i][languages.english] = "Kirby's mysterious companion! He wants to help stop the coming threat.";
	dialogue[5][5][i][languages.turkish] = "Kirby'nin gizemli dostu! Gelen tehlikeyi durdurmamıza yardım edecek.";
	dialogue[5][5][i][languages.german] = "Kirby's mysteriöser Gefährte! Er will helfen, die kommende Bedrohung zu stoppen.";
	dialogue[5][5][i][languages.italian] = "Le mystérieux compagnon de Kirby, il cherche à stopper une menace imminente.";
	dialogue[5][5][i][languages.french] = "Il misterioso compagno di Kirby! Vuole aiutarlo a fermare una vicina minaccia...";
	dialogue[5][5][i][languages.polish] = "Skryty kamrat Kirby'iego! jego cel to powstrzymanie niedalekiego zła";
	dialogue[5][5][i][languages.chinese] = "'Kirby'的神秘同伴！他想帮助阻止到来的威胁。";
	dialogue[5][5][i][languages.spanish] = "";
	dialogue[5][5][i][languages.japanese] = "";
	dialogue[5][5][i][languages.portuguese] = "";
	dialogue[5][5][i][languages.norwegian] = "";
	dialogue[5][5][i][languages.arabic] = "";
	#endregion
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
	var i = 0;
	dialogue[7][6][i][languages.english] = "Why sell to us?";
	i += 1;
	dialogue[7][6][i][languages.english] = "About yourself";
	i += 1;
	dialogue[7][6][i][languages.english] = "The Boss";
	i += 1;
	dialogue[7][6][i][languages.english] = "The Depths";
	i += 1;
	dialogue[7][6][i][languages.english] = "Why Are You Still Here?";
	i += 1;
	dialogue[7][6][i][languages.english] = "Old Boss";
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
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}