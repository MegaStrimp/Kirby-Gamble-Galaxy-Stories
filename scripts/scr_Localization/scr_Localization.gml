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
		5 - Gooey
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
	dialogue[0][2][i][languages.german] = "Waddle Dee";
	dialogue[0][2][i][languages.italian] = "Waddle Dee";
	dialogue[0][2][i][languages.french] = "Waddle Dee";
	dialogue[0][2][i][languages.polish] = "Waddle Dee";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Waddle Dee";
	dialogue[0][2][i][languages.japanese] = "ワドルディ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Waddle Doo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Waddle Doo";
	dialogue[0][2][i][languages.italian] = "Waddle Doo";
	dialogue[0][2][i][languages.french] = "Waddle Doo";
	dialogue[0][2][i][languages.polish] = "Waddle Doo";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Waddle Doo";
	dialogue[0][2][i][languages.japanese] = "ワドルドゥ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Bronto Burt";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Rammse";
	dialogue[0][2][i][languages.italian] = "Brontottero";
	dialogue[0][2][i][languages.french] = "Buzzy Brut";
	dialogue[0][2][i][languages.polish] = "Muszka Owocowa";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Bronto";
	dialogue[0][2][i][languages.japanese] = "ブロンドバード";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Twizzy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Twizzy";
	dialogue[0][2][i][languages.italian] = "Piopio";
	dialogue[0][2][i][languages.french] = "Pioupiou";
	dialogue[0][2][i][languages.polish] = "Kurrrczątko";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Twizzy";
	dialogue[0][2][i][languages.japanese] = "ツイジー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Tookey";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Tookey";
	dialogue[0][2][i][languages.italian] = "Cluck";
	dialogue[0][2][i][languages.french] = "Tookey";
	dialogue[0][2][i][languages.polish] = "Kurrrczak";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Tookey";
	dialogue[0][2][i][languages.japanese] = "トゥーキー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Sir Kibble";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Sir Kibble";
	dialogue[0][2][i][languages.italian] = "Duc de' Zac";
	dialogue[0][2][i][languages.french] = "Duc Hache Viande";
	dialogue[0][2][i][languages.polish] = "Sir Kibble";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Sir Kibble";
	dialogue[0][2][i][languages.japanese] = "サーキブル";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Gordo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Gordow";
	dialogue[0][2][i][languages.italian] = "Bombospino";
	dialogue[0][2][i][languages.french] = "Minérisson";
	dialogue[0][2][i][languages.polish] = "Jeżowiec";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Gordo";
	dialogue[0][2][i][languages.japanese] = "ゴルドー";
	dialogue[0][2][i][languages.portuguese] = "Goldo";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Blood Gordo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Blut Gordow";
	dialogue[0][2][i][languages.italian] = "Bombospino Insanguinato";
	dialogue[0][2][i][languages.french] = "Minérisson sanglant";
	dialogue[0][2][i][languages.polish] = "Krwawy Jeżowiec";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Gordo sangriento";
	dialogue[0][2][i][languages.japanese] = "ブルードゴルドー";
	dialogue[0][2][i][languages.portuguese] = "Goldo Sangrento";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Shotzo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Kanonor";
	dialogue[0][2][i][languages.italian] = "Shotzo";
	dialogue[0][2][i][languages.french] = "Shotzo";
	dialogue[0][2][i][languages.polish] = "Armata Strzelecka";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Shotzo";
	dialogue[0][2][i][languages.japanese] = "シャッツオ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Mystic Doo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Mytischer Doo";
	dialogue[0][2][i][languages.italian] = "Waddle Doo Mistico";
	dialogue[0][2][i][languages.french] = "Waddle Doo mystique";
	dialogue[0][2][i][languages.polish] = "Mityczny Doo";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Doo Místico";
	dialogue[0][2][i][languages.japanese] = "ミスティックドゥ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Bouncy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Bouncy";
	dialogue[0][2][i][languages.italian] = "Bouncy";
	dialogue[0][2][i][languages.french] = "Bouncy";
	dialogue[0][2][i][languages.polish] = "Sprężystka";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Bouncy";
	dialogue[0][2][i][languages.japanese] = "バウンシー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Mr. Boogie";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Mr. Boogie";
	dialogue[0][2][i][languages.italian] = "Mr. Boogie";
	dialogue[0][2][i][languages.french] = "Mr. Boogie";
	dialogue[0][2][i][languages.polish] = "Glutowiec";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Sr. Boogie";
	dialogue[0][2][i][languages.japanese] = "Mr.Boogie";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Search";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Search";
	dialogue[0][2][i][languages.italian] = "Search";
	dialogue[0][2][i][languages.french] = "Search";
	dialogue[0][2][i][languages.polish] = "Wyszukiwarka";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Search";
	dialogue[0][2][i][languages.japanese] = "サーチ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Hive Drone";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Bienenstock Drohne";
	dialogue[0][2][i][languages.italian] = "Hive Drone";
	dialogue[0][2][i][languages.french] = "Drone Ruche";
	dialogue[0][2][i][languages.polish] = "Rój Dronów";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Hive Drone";
	dialogue[0][2][i][languages.japanese] = "ハイブドローン";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Wapod";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Wapod";
	dialogue[0][2][i][languages.italian] = "Wampolla";
	dialogue[0][2][i][languages.french] = "Warpot";
	dialogue[0][2][i][languages.polish] = "Waddle'owy Strąk";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Wapod";
	dialogue[0][2][i][languages.japanese] = "ワポッド";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Flamebelch";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Flamenbelch";
	dialogue[0][2][i][languages.italian] = "Flamebelch";
	dialogue[0][2][i][languages.french] = "Flamebelch";
	dialogue[0][2][i][languages.polish] = "Ognisty Ziew";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Flamebelch";
	dialogue[0][2][i][languages.japanese] = "フレイムベルチ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Cappy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Cozy";
	dialogue[0][2][i][languages.italian] = "Cozy";
	dialogue[0][2][i][languages.french] = "Cappenois";
	dialogue[0][2][i][languages.polish] = "Trzonek";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Cozy";
	dialogue[0][2][i][languages.japanese] = "キャピィ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Broom Hatter";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Blitzi Blank";
	dialogue[0][2][i][languages.italian] = "Maga Spazzolina";
	dialogue[0][2][i][languages.french] = "Chabalai";
	dialogue[0][2][i][languages.polish] = "Sprzątający Kapelusznik";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Sombrescoba";
	dialogue[0][2][i][languages.japanese] = "ブルームハッター";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Coconut";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Kokosnuss";
	dialogue[0][2][i][languages.italian] = "Noce di Cocco";
	dialogue[0][2][i][languages.french] = "Noix de coco";
	dialogue[0][2][i][languages.polish] = "Kokos";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Coco";
	dialogue[0][2][i][languages.japanese] = "ココナッツ";
	dialogue[0][2][i][languages.portuguese] = "Coco";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Noddy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Noddy";
	dialogue[0][2][i][languages.italian] = "Noddy";
	dialogue[0][2][i][languages.french] = "Noddy";
	dialogue[0][2][i][languages.polish] = "Śpioch";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Noddy";
	dialogue[0][2][i][languages.japanese] = "ノディ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Blado";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Blado";
	dialogue[0][2][i][languages.italian] = "Hachi";
	dialogue[0][2][i][languages.french] = "Hachi";
	dialogue[0][2][i][languages.polish] = "Siekierowiec";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Filo";
	dialogue[0][2][i][languages.japanese] = "ブレドー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Scarfy";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Scarfy";
	dialogue[0][2][i][languages.italian] = "Scarfy";
	dialogue[0][2][i][languages.french] = "Scarfy";
	dialogue[0][2][i][languages.polish] = "Upiór";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Scarfy";
	dialogue[0][2][i][languages.japanese] = "スカーフィ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Rocky";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Feinstein";
	dialogue[0][2][i][languages.italian] = "Rocky";
	dialogue[0][2][i][languages.french] = "Choiroc";
	dialogue[0][2][i][languages.polish] = "Głazik";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Pedroso";
	dialogue[0][2][i][languages.japanese] = "ロッキー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Grizzo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Grizzo";
	dialogue[0][2][i][languages.italian] = "Grizzo";
	dialogue[0][2][i][languages.french] = "Grizzlee";
	dialogue[0][2][i][languages.polish] = "Pizzly";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Grizzo";
	dialogue[0][2][i][languages.japanese] = "グリゾー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Jungle Bomb";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Jungle Bomb";
	dialogue[0][2][i][languages.italian] = "Jungle Bomb";
	dialogue[0][2][i][languages.french] = "Jungle Bomb";
	dialogue[0][2][i][languages.polish] = "Bombowiec Dżunglowy";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Jungle Bomb";
	dialogue[0][2][i][languages.japanese] = "ジャングルボム";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Glunk";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Spuckwatt";
	dialogue[0][2][i][languages.italian] = "Glunk";
	dialogue[0][2][i][languages.french] = "Crachémone";
	dialogue[0][2][i][languages.polish] = "Ukwiał";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Anemonia";
	dialogue[0][2][i][languages.japanese] = "グランク";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Kabu";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Kabu";
	dialogue[0][2][i][languages.italian] = "Kabu";
	dialogue[0][2][i][languages.french] = "Kabu";
	dialogue[0][2][i][languages.polish] = "Kabu";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Kabu";
	dialogue[0][2][i][languages.japanese] = "カブー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Burning Leo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Leo Loder";
	dialogue[0][2][i][languages.italian] = "Fiammelleo";
	dialogue[0][2][i][languages.french] = "Léo Laflam";
	dialogue[0][2][i][languages.polish] = "Płonący Lew";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Leo Flama";
	dialogue[0][2][i][languages.japanese] = "バーニンレオ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Tomatoo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Tomate";
	dialogue[0][2][i][languages.italian] = "Tomatoo";
	dialogue[0][2][i][languages.french] = "Tomatee";
	dialogue[0][2][i][languages.polish] = "Pomidor";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Tomatee";
	dialogue[0][2][i][languages.japanese] = "トマト";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "'Onion'";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Zwiebel";
	dialogue[0][2][i][languages.italian] = "Onion";
	dialogue[0][2][i][languages.french] = "Oignon";
	dialogue[0][2][i][languages.polish] = "Cebulak";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Onión";
	dialogue[0][2][i][languages.japanese] = "オニオン";
	dialogue[0][2][i][languages.portuguese] = "Cebola";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Anemonee";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Anemone";
	dialogue[0][2][i][languages.italian] = "Anemòn";
	dialogue[0][2][i][languages.french] = "Anémona";
	dialogue[0][2][i][languages.polish] = "Włukwiał";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Anemonito";
	dialogue[0][2][i][languages.japanese] = "イソキンチャク";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Gim";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Jim";
	dialogue[0][2][i][languages.italian] = "Gim";
	dialogue[0][2][i][languages.french] = "Jim";
	dialogue[0][2][i][languages.polish] = "Dżim";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Gim";
	dialogue[0][2][i][languages.japanese] = "ギム";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Poppy Bros Jr.";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Pippo Peng";
	dialogue[0][2][i][languages.italian] = "Bomby Bros Jr.";
	dialogue[0][2][i][languages.french] = "Bébépoppy";
	dialogue[0][2][i][languages.polish] = "Makowy Brat Jr.";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Bomby Bros Jr.";
	dialogue[0][2][i][languages.japanese] = "ポピーブロスJr.";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Bobo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Bobo";
	dialogue[0][2][i][languages.italian] = "Bobo";
	dialogue[0][2][i][languages.french] = "Bobo";
	dialogue[0][2][i][languages.polish] = "Bobo";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Bobo";
	dialogue[0][2][i][languages.japanese] = "ボボ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Foley";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Fallnit";
	dialogue[0][2][i][languages.italian] = "Granado";
	dialogue[0][2][i][languages.french] = "Grenady";
	dialogue[0][2][i][languages.polish] = "Listo-Pad";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Fruma";
	dialogue[0][2][i][languages.japanese] = "フォーリー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Nidoo";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Nidoo";
	dialogue[0][2][i][languages.italian] = "Nidoo";
	dialogue[0][2][i][languages.french] = "Nidoo";
	dialogue[0][2][i][languages.polish] = "Współlokator";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Nidoo";
	dialogue[0][2][i][languages.japanese] = "ニドー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Como";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Como";
	dialogue[0][2][i][languages.italian] = "Racno";
	dialogue[0][2][i][languages.french] = "Como";
	dialogue[0][2][i][languages.polish] = "Ptasznik";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Como";
	dialogue[0][2][i][languages.japanese] = "コモ";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Cairn";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Cairn";
	dialogue[0][2][i][languages.italian] = "Cairn";
	dialogue[0][2][i][languages.french] = "Cairn";
	dialogue[0][2][i][languages.polish] = "Żwirek";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Cairn";
	dialogue[0][2][i][languages.japanese] = "ゴロピョン";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Bomber";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Bombio";
	dialogue[0][2][i][languages.italian] = "Bomber";
	dialogue[0][2][i][languages.french] = "Bombinet";
	dialogue[0][2][i][languages.polish] = "Bombowiec";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Bomber";
	dialogue[0][2][i][languages.japanese] = "ボンバー";
	dialogue[0][2][i][languages.portuguese] = "";
	dialogue[0][2][i][languages.norwegian] = "";
	dialogue[0][2][i][languages.arabic] = "";
	i += 1;
	dialogue[0][2][i][languages.english] = "Simirror";
	dialogue[0][2][i][languages.turkish] = "";
	dialogue[0][2][i][languages.german] = "Reflexi";
	dialogue[0][2][i][languages.italian] = "Magospecchio";
	dialogue[0][2][i][languages.french] = "Simiroir";
	dialogue[0][2][i][languages.polish] = "Lustrzany";
	dialogue[0][2][i][languages.chinese] = "";
	dialogue[0][2][i][languages.spanish] = "Espejín";
	dialogue[0][2][i][languages.japanese] = "シミラ";
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
	dialogue[1][0][i][languages.turkish] = "";
	dialogue[1][0][i][languages.german] = "";
	dialogue[1][0][i][languages.italian] = "";
	dialogue[1][0][i][languages.french] = "";
	dialogue[1][0][i][languages.polish] = "";
	dialogue[1][0][i][languages.chinese] = "";
	dialogue[1][0][i][languages.spanish] = "";
	dialogue[1][0][i][languages.japanese] = "";
	dialogue[1][0][i][languages.portuguese] = "";
	dialogue[1][0][i][languages.norwegian] = "";
	dialogue[1][0][i][languages.arabic] = "";
	#endregion
	
	#region Gamble
	i = 0;
	dialogue[1][1][i][languages.english] = "This new friend from outer space came to Popstar to ask Kirby for a hand in defeating the Cosmic Fluxbender! Gamble wields dice, cards, roulettes, and magical energy to take down the enemy. Make them fold!";
	dialogue[1][1][i][languages.turkish] = "";
	dialogue[1][1][i][languages.german] = "";
	dialogue[1][1][i][languages.italian] = "";
	dialogue[1][1][i][languages.french] = "";
	dialogue[1][1][i][languages.polish] = "";
	dialogue[1][1][i][languages.chinese] = "";
	dialogue[1][1][i][languages.spanish] = "";
	dialogue[1][1][i][languages.japanese] = "";
	dialogue[1][1][i][languages.portuguese] = "";
	dialogue[1][1][i][languages.norwegian] = "";
	dialogue[1][1][i][languages.arabic] = "";
	#endregion
	
	#region Meta Knight
	i = 0;
	dialogue[1][2][i][languages.english] = "The mysterious masked knight from Kirby's Adventure is here! He is chivalrous and always willing to fight any source of evil. All of Dream Land fears his sword!";
	dialogue[1][2][i][languages.turkish] = "";
	dialogue[1][2][i][languages.german] = "";
	dialogue[1][2][i][languages.italian] = "";
	dialogue[1][2][i][languages.french] = "";
	dialogue[1][2][i][languages.polish] = "";
	dialogue[1][2][i][languages.chinese] = "";
	dialogue[1][2][i][languages.spanish] = "";
	dialogue[1][2][i][languages.japanese] = "";
	dialogue[1][2][i][languages.portuguese] = "";
	dialogue[1][2][i][languages.norwegian] = "";
	dialogue[1][2][i][languages.arabic] = "";
	#endregion
	
	#region Keeby
	i = 0;
	dialogue[1][3][i][languages.english] = "";
	dialogue[1][3][i][languages.turkish] = "";
	dialogue[1][3][i][languages.german] = "";
	dialogue[1][3][i][languages.italian] = "";
	dialogue[1][3][i][languages.french] = "";
	dialogue[1][3][i][languages.polish] = "";
	dialogue[1][3][i][languages.chinese] = "";
	dialogue[1][3][i][languages.spanish] = "";
	dialogue[1][3][i][languages.japanese] = "";
	dialogue[1][3][i][languages.portuguese] = "";
	dialogue[1][3][i][languages.norwegian] = "";
	dialogue[1][3][i][languages.arabic] = "";
	#endregion
	
	#region Helper
	i = 0;
	dialogue[1][4][i][languages.english] = "";
	dialogue[1][4][i][languages.turkish] = "";
	dialogue[1][4][i][languages.german] = "";
	dialogue[1][4][i][languages.italian] = "";
	dialogue[1][4][i][languages.french] = "";
	dialogue[1][4][i][languages.polish] = "";
	dialogue[1][4][i][languages.chinese] = "";
	dialogue[1][4][i][languages.spanish] = "";
	dialogue[1][4][i][languages.japanese] = "";
	dialogue[1][4][i][languages.portuguese] = "";
	dialogue[1][4][i][languages.norwegian] = "";
	dialogue[1][4][i][languages.arabic] = "";
	#endregion
	
	#region Gooey
	i = 0;
	dialogue[1][5][i][languages.english] = "";
	dialogue[1][5][i][languages.turkish] = "";
	dialogue[1][5][i][languages.german] = "";
	dialogue[1][5][i][languages.italian] = "";
	dialogue[1][5][i][languages.french] = "";
	dialogue[1][5][i][languages.polish] = "";
	dialogue[1][5][i][languages.chinese] = "";
	dialogue[1][5][i][languages.spanish] = "";
	dialogue[1][5][i][languages.japanese] = "";
	dialogue[1][5][i][languages.portuguese] = "";
	dialogue[1][5][i][languages.norwegian] = "";
	dialogue[1][5][i][languages.arabic] = "";
	#endregion
	
	#region Magolor
	i = 0;
	dialogue[1][6][i][languages.english] = "'Flux? I'll show you real power!' This tricky wizard hails from Kirby's Return to Dream Land. He used to be a lying cheat, but he's reformed... right? His otherworldly magic will make short work of your enemies!";
	dialogue[1][6][i][languages.turkish] = "";
	dialogue[1][6][i][languages.german] = "";
	dialogue[1][6][i][languages.italian] = "";
	dialogue[1][6][i][languages.french] = "";
	dialogue[1][6][i][languages.polish] = "";
	dialogue[1][6][i][languages.chinese] = "";
	dialogue[1][6][i][languages.spanish] = "";
	dialogue[1][6][i][languages.japanese] = "";
	dialogue[1][6][i][languages.portuguese] = "";
	dialogue[1][6][i][languages.norwegian] = "";
	dialogue[1][6][i][languages.arabic] = "";
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
	dialogue[4][1][i][languages.german] = "Der häufigste Popstar-Bewohner. Viele haben sich entschieden, für König Dedede zu arbeiten, einige haben sich sogar dafür entschieden, Speere oder Sonnenschirme zu tragen.";
	dialogue[4][1][i][languages.italian] = "I più comuni abitanti del Pianeta Pop. Molti hanno deciso di lavorare per King Dedede, altri di branidre lance o parasoli.";
	dialogue[4][1][i][languages.french] = "Les habitants de la planète Pop les plus nombreux. Beaucoup ont choisi de travailler pour le Roi DaDiDou, certains portent une lance ou un parasol.";
	dialogue[4][1][i][languages.polish] = "Jedni z najbardziej zwyczajnych mieszkańców planety Popstar. Sporo wybrało prace dla Króla Dedede, niektórzy nawet potrafią dobrze władać włóczniami lub parasolkami.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "El ciudadano más común del Planeta Pop. Muchos deciden trabajar para el Rey Dedede, algunos incluso empuñando lanzas o sombrillas.";
	dialogue[4][1][i][languages.japanese] = "ポップスターの住人の中で最も一般的な存在。デデデ王のために働くことを選んだ者が多く、中には槍やパラソルを振り回す者もいる。";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These creatures are known to shoot a beam out of their singular large eye.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Diese Kreaturen sind dafür bekannt, einen Strahl aus ihrem einzigartigen großen Auge zu schießen.";
	dialogue[4][1][i][languages.italian] = "Queste creature sono note per sparare un raggio con il loro unico grande occhio.";
	dialogue[4][1][i][languages.french] = "Ces créatures sont connues pour lancer des rayons avec leur grand œil.";
	dialogue[4][1][i][languages.polish] = "Te stworzenia są dobrze znane z wystrzeliwania promieni elektrycznych z ich jedynego, sporego, oka.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Estas criaturas son conocidas por lanzar un rayo a través de su único gran ojo.";
	dialogue[4][1][i][languages.japanese] = "大きな目からビームを発射することで知られる。";
	dialogue[4][1][i][languages.portuguese] = "Essas criaturas são conhecidas por atirar um raio de seu único olho.";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A flying foe who takes to the skies whenever someone gets near, and will try and ram into you sometimes.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein fliegender Feind, der sich in die Lüfte erhebt, wenn sich jemand nähert, und manchmal versucht, dich zu rammen.";
	dialogue[4][1][i][languages.italian] = "Un nemico volante che scende dai cieli quando qualcuno gli si avvicina per poi attaccarlo.";
	dialogue[4][1][i][languages.french] = "Un ennemi ailé qui s'envole dès que quelqu'un s'approche, et qui s'attaque parfois aux autres.";
	dialogue[4][1][i][languages.polish] = "Latający przeciwnik, który unosi się kiedy ktoś podejdzie za blisko, wtem zacznie czasami próbować się w ciebie wbić.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un enemigo volador que echa a volar cuando alguien se acerca, y a veces tratará de estrellarse contra ti.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A baby Tookey, never seen far from its mother. They are known to ram into others for fun.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein Baby Tookey, nie weit von seiner Mutter entfernt gesehen. Sie sind dafür bekannt, andere zum Spaß zu rammen.";
	dialogue[4][1][i][languages.italian] = "Un piccolo Cluck che non si è mai separato dalla mamma. Di solito attaccano per divertimento.";
	dialogue[4][1][i][languages.french] = "Un Tookey nourrisson qui n'est jamais loin de sa mère. Il s'attaque aux autres pour s'amuser.";
	dialogue[4][1][i][languages.polish] = "Młody Kurrrczak, nigdy nie widziana z dala od jej własnej matki. Są znane z taranowania siebie nawzajem dla zabawy.";
	dialogue[4][1][i][languages.chinese] = "Un Tookey bebé, nunca visto lejos de su madre. Son famosos por chocarse contra otros por diversión.";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "The adult variant of Twizzy that is always found near its chicks. It will ram into anyone who gets near its babies.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Die erwachsene Variante von Twizzy, die immer in der Nähe ihrer Küken zu finden ist. Es wird jeden rammen, der sich seinen Babys nähert.";
	dialogue[4][1][i][languages.italian] = "La variante adulta del Piopio che attaccherà chiunque si avvicini ai suoi piccoli.";
	dialogue[4][1][i][languages.french] = "La version adulte des Pioupiou qui se trouve toujours près de ses poussins. Il s'attaque à quiconque s'en approche.";
	dialogue[4][1][i][languages.polish] = "Starsze Kurrrczątko, które jest zawsze spotykane blisko jej dzieci. Staranuje każdego, kto będzie blisko jej rodziny.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "La versión adulta de Twizzy que siempre está junto a sus polluelos. Atacará a quien sea que se acerque a sus pequeños.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A knight of the bladed boomerang variety. By channeling his energy he can throw a larger blade.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein Ritter der Klingen-Bumerang-Variante. Indem er seine Energie kanalisiert, kann er eine größere Klinge werfen.";
	dialogue[4][1][i][languages.italian] = "Un cavaliere con una lama a forma di boomerang, che diventa più grande se viene usata più energia.";
	dialogue[4][1][i][languages.french] = "Un chevalier se spécialisant dans les lames boomerang. Il peut lancer des lames plus grandes en concentrant son énergie.";
	dialogue[4][1][i][languages.polish] = "Rycerz z odmiennym ostrzem bumerangowym. Poprzez przekierowanie jego energii, może wyrzucić większe ostrze.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un caballero de la clase de los cuchillos bumerán. Concentrando su energía, puede lanzar una cuchilla más grande.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An invincible ball of spikes, yowch! Can break ability stars upon contact.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein unbesiegbarer Spießball, autsch! Kann Fähigkeitssterne bei Kontakt brechen.";
	dialogue[4][1][i][languages.italian] = "Un'invincibile palla di spine, yowch! Può distruggere la stella di un'abilità al primo contatto.";
	dialogue[4][1][i][languages.french] = "Une boule de pointes invulnérable. Il peut casser les étoiles des dons d'imitation qui le touchent.";
	dialogue[4][1][i][languages.polish] = "Nieśmiertelna kula kolców, auć! Tylko podejdź do niej, a twoja gwiazda zdolności jest zniszczona.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "¡Una bola de pinchos invencible! Puede romper estrellas de habilidad al tocarlas.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A very angry variant of the classic Gordo. This version's horns pierce the air, and it's metal shines like a red sun.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Eine sehr böse Variante des klassischen Gordow. Die Hörner dieser Version durchbohren die Luft und ihr Metall glänzt wie eine rote Sonne.";
	dialogue[4][1][i][languages.italian] = "Una variante molto aggressiva del classico Bombospino.";
	dialogue[4][1][i][languages.french] = "Une variante en colère du Minérisson de base. Ses cornes transpercent l'air, et son métal brille comme un soleil rouge.";
	dialogue[4][1][i][languages.polish] = "Bardzo nerwowy gatunek oryginalnego Jeżowca. Rogi tej odmiany przebijają niebo, oraz ich metalowy materiał świeci się jak czerwone słońce.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una variante muy agresiva del clásico Gordo. Sus pinchos cortan el aire y su metal brilla como un Sol rojizo.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These cannons are a staple of the Halberd and Castle Dedede's arsenals. Can come in single shot and 3 round burst flavors.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Diese Kanonen sind ein fester Bestandteil der Arsenale der Hellebarden und der Burg Dedede. Kann in Einzelschuss- und 3 runden Burst-Aromen erhältlich sein.";
	dialogue[4][1][i][languages.italian] = "Questi cannoni sono un classico della Halberd e dell'arsenale del castello di Dedede. Con un solo sparo possono uscire tre palle di cannone.";
	dialogue[4][1][i][languages.french] = "Ces canons sont souvent utilisés par le Halberd et l'arsenal du château DaDiDou. Certains ne tirent qu'un boulet à la fois, d'autres trois à la suite.";
	dialogue[4][1][i][languages.polish] = "Te armaty są podstawą Halberdu oraz arsenału Zamka Dedede. Czasem wystrzelą jeden pocisk, a czasem wystrzelą serie trzech.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Estos cañones son habituales en la Hal Abarda y en el Castillo Dedede. Vienen en dos sabores: tiro simple y tiro triple.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A Waddle Doo warped by the power of Flux. By utilizing its new power it can create a beam barrier, which can also be launched forward.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein Waddle Doo, verzerrt durch die Macht des Flux. Durch die Nutzung seiner neuen Kraft kann es eine Strahlbarriere erzeugen, die auch nach vorne gestartet werden kann";
	dialogue[4][1][i][languages.italian] = "Un Waddle Doo alterato dal potere del Flusso Mistico. Con i suoi nuovi poteri può creare una barriera che può anche essere lanciata.";
	dialogue[4][1][i][languages.french] = "Un Waddle Doo transformé par le pouvoir du flux. En utilisant son nouveau pouvoir, il peut créer une barrière de rayons qu'il peut aussi lancer vers l'avant.";
	dialogue[4][1][i][languages.polish] = "Waddle Doo obdarowany mocami Flux'a. Wykorzystując jego nowe zdolności, potrafi stworzyć bariere z jego promieni elektrycznych, które może wystrzelić poziomo.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un Waddle Doo corrompido por el Flux. Su nuevo poder le permite crear una barrera de rayos que puede disparar hacia delante.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Such a pleasant little friend! Bouncies bounce up and down. A simple life, but a happy one. That little face looks familiar...";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "So ein angenehmer kleiner Freund! Bouncies hüpfen auf und ab. Ein einfaches Leben, aber ein glückliches. Das kleine Gesicht kommt mir bekannt vor...";
	dialogue[4][1][i][languages.italian] = "Un amico così piacevole! Va su e giù. Una vita semplice, ma felice. Quella piccola faccia sembra familiare...";
	dialogue[4][1][i][languages.french] = "Comme il est adorable ! Les Bouncy bondissent sans arrêt. Une vie simple, mais joyeuse. Ce visage ressemble à celui d'un autre...";
	dialogue[4][1][i][languages.polish] = "Cóż za miły-mały koleżka! Odbić-odbija się z góry na dół. Proste życie, ale miłe..... Poznaje tą mimike......";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "¡Un amiguito muy adorable! Bouncy bota y rebota sin parar. Una vida simple pero feliz. Esa carita resulta familiar...";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "It's a sentient booger that seems to walk aimlessly, but in reality it’s looking for some tissues.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Es ist ein empfindungsfähiger Popel, der scheinbar ziellos herumläuft, aber in Wirklichkeit nach Taschentüchern sucht.";
	dialogue[4][1][i][languages.italian] = "Una caccoletta senziente che cammina a zonzo, anche se a dire il vero un obiettivo non gli manca.";
	dialogue[4][1][i][languages.french] = "Une morve vivante qui semble errer sans but, mais qui cherche en réalité un mouchoir.";
	dialogue[4][1][i][languages.polish] = "Jest to żyjący glut nosowy, który z chodzeniem za bardzo się nie zna, ale w rzeczywistości chodzi obłąkany, szukając chusteczek higienicznych.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un moco viviente que parece vagar sin rumbo, pero en realidad está buscando algún pañuelo.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A small bomb with a face. If you get too close, it'll detonate, so steer clear.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Eine kleine Bombe mit Gesicht. Wenn Sie zu nahe kommen, wird es explodieren, also halten dich fern.";
	dialogue[4][1][i][languages.italian] = "Una piccola bomba che esplode se ti avvicini troppo ad essa, attento!";
	dialogue[4][1][i][languages.french] = "Une petite bombe qui possède un visage. Elle explose lorsque l'on s'en approche trop.";
	dialogue[4][1][i][languages.polish] = "Mała bomba z twarzą. Jeśli podejdziesz za blisko, wybuchie, więc omijaj jak ognia jeśli ci życie miłe.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una pequeña bomba con cara. Si te acercas demasiado, explotará, así que mantente bien lejos.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A mining bot, built for the sole purpose of harvesting Alexandrum, a mysterious mineral.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein Mining-Bot, der ausschließlich zum Abbau von Alexandrum, einem mysteriösen Mineral, gebaut wurde.";
	dialogue[4][1][i][languages.italian] = "Un robot minatore che ha il solo di scopo di trovare un minerale misterioso: l'Alexandrum.";
	dialogue[4][1][i][languages.french] = "Un robot minier, construit dans le but de collecter de l'Alexandrum, un minéral mystérieux.";
	dialogue[4][1][i][languages.polish] = "Robot kopiący, zbudowany dla jedynego celu, zbiór Alexandrium, tajemniczego minerału.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un robot minero cuyo único propósito es extraer un misterioso mineral llamado Alexandrum.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These ghosts look oddly like Waddle Dees. It's probably a coincidence. They pop out of pots like funny genies, and fly up, up, and away!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Diese Geister sehen seltsamerweise aus wie Waddle Dees. Es ist wahrscheinlich ein Zufall. Sie springen wie lustige Geister aus Töpfen und fliegen hoch, hoch und davon!";
	dialogue[4][1][i][languages.italian] = "Questi fantasmi somigliano leggermente ai Waddle Dee. Forse è una coincidenza. Escono come dei buffi geni e poi volano via.";
	dialogue[4][1][i][languages.french] = "Ces fantômes ressemblent curieusement aux Waddle Dee. Probablement une coincidence. Ils sortent de jarres comme des génies, et s'envolent vers le haut dans les airs !";
	dialogue[4][1][i][languages.polish] = "Te duchy wyglądają 1:1 jak Waddle Dee. Pewnie to tylko przypadek. Wychodzą z doniczek jak ci śmieszni dżinowie, i wznoszą się, wysoko, wyżej i najwyżej!";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Estos fantasmas se parecen extrañamente a los Waddle Dees, pero seguro que es pura casualidad. Salen de jarrones y ascienden hacia el infinito.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An old candle brought to life by flux. Has a distinct dislike for sodas, as it causes it to have severe hiccups.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Eine alte Kerze, die durch das Flux zum Leben erweckt wurde. Hat eine ausgeprägte Abneigung gegen Limonaden, da es zu starkem Schluckauf führt.";
	dialogue[4][1][i][languages.italian] = "Una vecchia candela nata dal Flusso Mistico. Odia particolarmente le bibite che gli fanno venire il singhiozzo.";
	dialogue[4][1][i][languages.french] = "Une vieille bougie animée par le flux. Il méprise particulièrement les boissons gazeuses, qui lui donne des hoquets graves.";
	dialogue[4][1][i][languages.polish] = "Stara świeca przywrócona do życia przez Flux'a. Posiada sporą nienawiść do coli, z racji że powoduje u niego sporo czkawek.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una antigua vela que ha cobrado vida gracias al Flux. Detesta los refrescos gaseosos; siempre le dan hipo.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "One of the native residents of Popstar, these shy creatures will shoot their mushroom caps into the air when approached, and will panic if their cap is stolen.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Diese schüchternen Kreaturen, die zu den Ureinwohnern von Popstar gehören, schießen ihre Pilzkappen in die Luft, wenn sie sich nähern, und geraten in Panik, wenn ihre Kappe gestohlen wird.";
	dialogue[4][1][i][languages.italian] = "Tra i primi abitanti del Pianeta Pop, queste timide creature lanciano in aria il loro cappello quando qualcuno si avvicina, e appena questo viene rubato vanno in pannico.";
	dialogue[4][1][i][languages.french] = "L'un des habitants indigènes de la planète Pop. Ces êtres timides lancent leur bonnet en forme de champignon dans les airs quand on s'en approche, et paniquent quand leur bonnet se fait voler.";
	dialogue[4][1][i][languages.polish] = "Jedni z najbardziej zaludnionych mieszkańców planety popstar, te nieśmiałe stworzenia wystrzelą swoje trzony w powietrze gdy blisko nich, wtem spanikują jeśli ich trzon zostanie porwany.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Uno de los habitantes nativos del Planeta Pop. Estos tímidos seres lanzan su sombrero champiñón al aire cuando te acercas, y entran en pánico si se lo roban.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These little guys have one goal; clean everything they can. This results in a bit of a bad habit, being ramming into people by accident. Despite their witchy appearances, they mean well.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Diese kleinen Kerle haben ein Ziel; sauber machen, was sie können. Dies führt zu einer kleinen schlechten Angewohnheit, Menschen aus Versehen zu rammen. Trotz ihres hexenhaften Aussehens meinen sie es gut.";
	dialogue[4][1][i][languages.italian] = "Questi piccoletti hanno un solo scopo: pulire tutto quello che possono. Ogni tanto colpiscono qualcuno, ma non farti ingannare dalle apparenze: hanno la testa sulle spalle.";
	dialogue[4][1][i][languages.french] = "Ces petits êtres ne jurent que par le ménage. Cela leur donne une manie de percuter les gens par accident. Malgré leur apparence de sorcière, ils n'ont que de bonnes intentions.";
	dialogue[4][1][i][languages.polish] = "Ci koledzy mają jedną robote; wysprzątać wszystko co się da. Wynikuje to złym przyzwyczajeniom, często potykają się o inne istoty żyjące przez przypadek. Nawet jeśli wyglądają jak wiedźmy, nie chcieli na złość.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Estos pequeñines tienen un objetivo; limpiar todo lo que puedan, lo cual se convierte en un mal hábito que les hace estrellarse con cualquiera que se ponga delante. Aunque parezcan brujos, no son malos.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These palm tree fruits are packed with explosives to spread the seeds inside, but only fall when you run under, so watch out!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Diese Palmenfrüchte sind mit Sprengstoff gefüllt, um die Samen im Inneren zu verteilen, aber fallen nur, wenn Sie darunter laufen, also passen Sie auf!";
	dialogue[4][1][i][languages.italian] = "Questi frutti di palma sono dotati di un potente esplsivo e cadono se ci passi sotto, attenzione!";
	dialogue[4][1][i][languages.french] = "Ces fruits de palmiers contiennent des explosifs pour répandre leurs graines contenues à l'intérieur, mais ne tombent que lorsque l'on passe en dessous, prudence !";
	dialogue[4][1][i][languages.polish] = "Te owoce palmowca są pełne materiału wybuchowego który rozprzestrzenia nasiona z wewnątrz, ale spadają gdy będziesz pod nimi, więc uważaj!";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Estos frutos de palmeras están llenos de explosivos que esparcen las semillas de su interior, pero solo caen cuando pasas por debajo, ¡así que ten cuidado!";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An enemy who prefers sleeping over fighting, most commonly found near the Fountain of Dreams.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein Feind, der lieber schläft als zu kämpfen, am häufigsten in der Nähe des Brunnens der Träume anzutreffen.";
	dialogue[4][1][i][languages.italian] = "Un nemico che al posto di combattere preferisce schiacciare un pisolino. Lo trovi soprattutto vicino alla Fontana dei Sogni.";
	dialogue[4][1][i][languages.french] = "Un ennemi qui préfère dormir que se battre, se trouvant le plus souvent près de la Fontaine des Rêves.";
	dialogue[4][1][i][languages.polish] = "Przeciwnik który raczej woli sobie zdrzemnąć niż walczyć, często widywany blisko Fontanny Marzeń.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un enemigo que prefiere dormir antes que luchar. Se le suele ver cerca de la Fuente de los Sueños.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Shing! This angry fellow rolls across the ground, quick as a racecar, trying to slice up it's foes. This creature was devised by the mind of a mysterious painter, and looks a bit like a Gordo.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Sching! Dieser wütende Bursche rollt schnell wie ein Rennwagen über den Boden und versucht, seine Feinde in Scheiben zu schneiden. Diese Kreatur wurde von einem mysteriösen Maler entworfen und sieht ein bisschen wie ein Gordo aus.";
	dialogue[4][1][i][languages.italian] = "Shing! Questa palletta è veloce come una macchina da corsa ed è capace di ferire tutti i suoi avversari. Questa creatura è stata colpita da un pittore misterioso e somiglia ad un Bombospino.";
	dialogue[4][1][i][languages.french] = "Cet individu énervé roule sur le sol, rapide comme une voiture de course, en essayant de découper ses ennemis. Il a été conçu par l'esprit d'un peintre mystérieux, et ressemble à un Minérisson.";
	dialogue[4][1][i][languages.polish] = "Szing! Ten poddenerwowany kolega toczy sie po ziemi, tak szybko jak wyścigowiec, tnąc wszystko co zajdzie w jego droge. To stworzenie było stworzone przez umysł nieznajomego malarza, troche przypomina Jeżowca.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "¡Shing! Este airado personaje rueda por el suelo veloz como un coche de carreras, tratando de cortar a sus enemigos. Fue creado por la mente de una misteriosa pintora, y su aspecto recuerda al de los Gordo.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "This deceiving enemy looks cute at first glance, but anger it and it will become rabid and explode after a few seconds. cannot be swallowed.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Dieser täuschende Feind sieht auf den ersten Blick niedlich aus, aber wenn Sie ihn verärgern, wird er tollwütig und explodiert nach ein paar Sekunden. Kann nicht verschluckt werden.";
	dialogue[4][1][i][languages.italian] = "Questo nemico all'apparenza è innocuo, ma poi si arrabbierà e dopo qualche secondo esploderà! Non può essere risucchiato.";
	dialogue[4][1][i][languages.french] = "Cet ennemi semble amical à première vue, mais devient fou de rage lorsqu'on le dérange, et finit par exploser quelques secondes plus tard. Il ne peut pas être avalé.";
	dialogue[4][1][i][languages.polish] = "Ten przeciwnik może wydawać się słodki, ale gdy wnerwiony, stanie się szybki i wybuchnie po paru sekundach. NIE MOŻE być pochłonięty.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Este engañoso enemigo parece adorable, pero si lo enfadas se pondrá hecho una furia y explotará tras unos segundos. No se puede absorber.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A sentient boulder that tries to crush threats with its body. grants the stone ability upon swallowing.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein empfindungsfähiger Felsbrocken, der versucht, Bedrohungen mit seinem Körper zu vernichten. Gewährt beim Schlucken die Stein-Fähigkeit.";
	dialogue[4][1][i][languages.italian] = "Un macigno senziente che attacca i nemici con il suo corpo. Dà l'Abilità Pietra se risucchiato.";
	dialogue[4][1][i][languages.french] = "Un rocher vivant qui essaie de démolir les menaces avec son corps. Il confère la capacité Rocher quand il est avalé.";
	dialogue[4][1][i][languages.polish] = "Świadomy głaz który próbuje zgnieść zagrożenie swoim ciężkim ciałem. Daje ci kamienną moc po pochłonięciu.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una roca viviente que intentará aplastar a sus enemigos con su cuerpo. Otorga la habilidad Piedra al absorberlo.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A large bear that lives in dense forests. it can use its claws to grab onto foes and scratch them, usually when provoked.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein großer Bär, der in dichten Wäldern lebt. Es kann mit seinen Klauen nach Feinden greifen und sie zerkratzen, normalerweise wenn es provoziert wird.";
	dialogue[4][1][i][languages.italian] = "Un grande orso che vive nelle foreste. Attacca i nemici con i suoi artigli.";
	dialogue[4][1][i][languages.french] = "Un ours imposant vivant dans les forêts denses. Il peut utiliser ses griffes pour s'agripper à ses ennemis et les griffer, généralement lorsqu'on le provoque.";
	dialogue[4][1][i][languages.polish] = "Spory niedźwiedź który żyje w gęstych lasach. Może użyć swoich szponów żeby złapać i poszarpać swoich wrogów, szczególnie gdy sprowokowany. ";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un gran oso que vive en densos bosques. Si se le provoca, usará sus zarpas para agarrar a los enemigos y arañarles.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A small pineapple sapling. Jungle Bombs will puke up bombs at threats, up to 3.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein kleiner Ananas-Bäumchen. Dschungelbomben spucken Bomben bei Bedrohungen aus, bis zu 3.";
	dialogue[4][1][i][languages.italian] = "Un piccolo ananas a forma di alberello. I Jungle Bomb possono lanciare fino a tre bombe.";
	dialogue[4][1][i][languages.french] = "Une pousse d'ananas. Les Jungle Bomb peuvent lancer jusqu'à trois bombes à ses ennemis.";
	dialogue[4][1][i][languages.polish] = "Młode drzewko ananasa. Bombowiec dżunglowy wypluje z siebie maksymalnie 3 bomby na wrogów, nie musze ci mówić kim dla niego jesteś.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un pequeño brote de piña que puede escupir bombas, pudiendo lanzar hasta 3.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An aquatic plant who will periodically shoot water out of its mouth, up to 5 projectiles at a time.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Eine Wasserpflanze, die regelmäßig Wasser aus ihrem Mund schießt, bis zu 5 Projektile gleichzeitig.";
	dialogue[4][1][i][languages.italian] = "Una pianta acquatica che lancerà fino a cinque proiettili alla volta.";
	dialogue[4][1][i][languages.french] = "Une plante aquatique qui tire des projectiles d'eau à intervalles réguliers, jusqu'à cinq à la fois.";
	dialogue[4][1][i][languages.polish] = "Egzotyczna roślina wodna która wystrzeli z siebie aż 5 bąbelków powietrza, albo wody.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una planta acuática que lanza proyectiles de agua por la boca, disparando hasta 5 cada vez.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "These ancient statues spin across the land, ramming into whoever is unfortunate enough to be in their path.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Diese uralten Statuen wirbeln über das Land und rammen jeden, der das Pech hat, sich ihnen in den Weg zu stellen.";
	dialogue[4][1][i][languages.italian] = "Queste antiche statue roteano e colpiscono gli sprovveduti che si trovano sulla loro strada.";
	dialogue[4][1][i][languages.french] = "Ces statues antiques tournoient sur la terre, percutant tout ceux qui se trouvent sur son chemin.";
	dialogue[4][1][i][languages.polish] = "Te starożytne posągi kręcą się wokół własnej osi, wrzucająć się w każdego, kto stoi im na drodze.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Estas estatuas ancestrales giran a través de las tierras, chocandose contra quien sea tan desafortunado como para encontrarse en su camino.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A hotheaded creature capable of many fire based attacks, such as shooting a flame ball.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Eine hitzköpfige Kreatur, die zu vielen feuerbasierten Angriffen fähig ist, wie z. B. das Schießen eines Flammenballs.";
	dialogue[4][1][i][languages.italian] = "Una creatura dalla testa infuocata che usa potenti attacchi di fuoco come delle palle di fuoco.";
	dialogue[4][1][i][languages.french] = "Une tête brûlée capable d'utiliser un grand nombre d'attaques de feu, comme lancer une boule de feu par exemple.";
	dialogue[4][1][i][languages.polish] = "Gorącogłowe stworzenie posiadające zdolność władania nad ogniem, przykładem może być wystrzeliwanie kul ognia.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una criatura cabezona capaz de hacer muchos ataques de fuego, como disparar una bola de llamas.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A creature that looks a lot like a juicy red vegetable. Or is it a fruit? It will forever be a mystery.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Eine Kreatur, die einem saftigen roten Gemüse sehr ähnlich sieht. Oder ist es eine Frucht? Es wird für immer ein Rätsel bleiben.";
	dialogue[4][1][i][languages.italian] = "Una creatura che somiglia tanto ad una succosissima verdura. O un frutto? Sarà per sempre un mistero...";
	dialogue[4][1][i][languages.french] = "Une créature qui ressemble à un légume rouge juteux. Ou est-ce un fruit ? Personne ne le sait.";
	dialogue[4][1][i][languages.polish] = "Stworzenie wyglądające bardzo jak soczysty czerwony owoc. A może jest to warzywo? Nigdy się nie dowiemy.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una criatura que se parece mucho a un delicioso vegetal rojo. ¿O es una fruta? Siempre será un misterio.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Onion, contrary to its name, is a missile like carrot creature native to egg gardens. They like to hide in the soil and ambush people passing by.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Die Zwiebel ist im Gegensatz zu ihrem Namen eine raketenartige Karottenkreatur, die in Eiergärten beheimatet ist. Sie verstecken sich gerne im Boden und überfallen Passanten.";
	dialogue[4][1][i][languages.italian] = "Onion, seppur con un nome ingannevole, è un missile a forma di carota nato nei Giardini delle Uova.";
	dialogue[4][1][i][languages.french] = "L'Oignon, contrairement à ce que son nom indique, est une carotte en forme de missile provenant de la Vallée des œufs. Ils aiment se cacher dans le sol et embusquer les passants.";
	dialogue[4][1][i][languages.polish] = "Cebulak, ironicznie względem nazwy, jest to marchewkowy pocisk, często występujący w ogrodach jajecznych. Lubią się chować w ziemi i straszyć ludzi przechodzących nieopodal.";
	dialogue[4][1][i][languages.chinese] = "Onión, al contrario de su nombre, es una especie de zanahoria misil nativa de los Jardines Ovalados. Les gusta esconderse en la tierra y emboscar a cualquiera que pase por delante.";
	dialogue[4][1][i][languages.spanish] = "";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "An aquatic creature with long tendrils jutting from its head. It dances back and forth to the waves of the oceans they reside in.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein Wasserlebewesen mit langen Ranken, die aus seinem Kopf herausragen. Es tanzt hin und her zu den Wellen der Ozeane, in denen sie leben.";
	dialogue[4][1][i][languages.italian] = "Una creatura acquatica con lunghi viticci che sporgono dalla sua testa. Balla avanti e indietro sulle onde degli oceani in cui risiede.";
	dialogue[4][1][i][languages.french] = "Une créature aquatique possédant de longues vrilles sortant de sa tête. Il dance selon les vagues des océans dans lesquels il réside.";
	dialogue[4][1][i][languages.polish] = "Morskie stworzenie z długimi mackami wychodzącymi z jego głowy. Tańczą w rytm fali oceanu które zamieszkują.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una criatura acuática con largos pelos sobresaliendo de su cabeza. Va Bailando de un lado a otro siguiendo las olas de los océanos en los que residen.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Gim is a fanatic of all things yoyos, and is a master of wielding them. rumor has it their collection has over 50 different yoyos!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Gim ist ein Fanatiker aller Yoyos und ein Meister darin, sie einzusetzen. Gerüchten zufolge umfasst ihre Sammlung über 50 verschiedene Jojos!";
	dialogue[4][1][i][languages.italian] = "Gim è un fanatico di tutto ciò che riguarda gli yo-yo, nonché maestro nel brandirli. Voci di corridoio dicono che abbia collezionato più di 50 yo-yo!";
	dialogue[4][1][i][languages.french] = "Jim est un fanatique de tout ce qui concerne les yoyos, et en maîtrise le contrôle parfaitement. Il aurait plus de cinquante yoyos différents dans sa collection !";
	dialogue[4][1][i][languages.polish] = "Dżim to weterani obsługi nad yoyo, więdzą o nich prawie wszystko. Krąży plotka że posiadają w kolekcji pondad 50 różnych yoyo!";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Gim es un fanático de los yo-yós y también es un maestro usándolos. Se rumorea que tiene una colección de más de 50 yo-yós diferentes.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A trouble making kid with an innate love for explosives. Nobody knows where they get all of those bombs from.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein Ärger machendes Kind mit einer angeborenen Liebe zu Sprengstoff. Niemand weiß, woher sie all diese Bomben bekommen.";
	dialogue[4][1][i][languages.italian] = "Una peste con una passione innata per gli esplosivi. Nessuno sa dove riesca a prendere tutte quelle granate.";
	dialogue[4][1][i][languages.french] = "Un garnement qui adore les explosifs. Personne ne sait d'où il sort toutes ces bombes.";
	dialogue[4][1][i][languages.polish] = "Stworzenie które wygląda na chodzącą kule ognia. Gorący jak słońce, chyba przez to ciepło mózg mu się prawie wypalił.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un niño que solo da problemas y tiene un amor innato por las explosiones. Nadie sabe de donde saca todas esas bombas.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A creature that appears to be a walking fireball. Hotter than a Hothead, but doesn't seem to think very much. ";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Eine Kreatur, die wie ein wandelnder Feuerball aussieht. Heißer als ein Hitzkopf, scheint aber nicht viel zu denken.";
	dialogue[4][1][i][languages.italian] = "Una palla di fuoco che sa camminare anche se non sembra avere molti altri pensieri in testa.";
	dialogue[4][1][i][languages.french] = "Une créature ressemblant à une boule de feu ambulante. Plus chaud qu'un Brultête, mais ne semble pas très futé.";
	dialogue[4][1][i][languages.polish] = "Nie oceniaj tego gościa po słodkiej okładce. To stworzenie może latać i wybuchać na zawołanie. Zrzuci się z niebios jak nalot żeby na ciebie wybuchnąć, więc uważaj!";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una criatura que parece una bola de fuego andante. Es más caliente que un Hot Head, pero no parece que piense mucho.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Don't underestimate this guy by his cute appearance. This creature can fly and explode at will. It will drop out of the sky like an airstrike to explode, so look out!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Unterschätze diesen Kerl nicht wegen seines süßen Aussehens. Diese Kreatur kann nach Belieben fliegen und explodieren. Es wird wie ein Luftangriff vom Himmel fallen, um zu explodieren, also pass auf!";
	dialogue[4][1][i][languages.italian] = "Non sottovalutare questo piccoletto solo perché sembra tenero. Sa volare e persino esplodere. Cadrà dal cielo e ti attaccherà, attento!";
	dialogue[4][1][i][languages.french] = "Ne sous-estimez pas cet ennemi avec une tête mignonne. Cette créature peut voler et se faire exploser lorsqu'elle le souhaite. Il tombe du ciel pour exploser, prenez garde !";
	dialogue[4][1][i][languages.polish] = "To nie są drzwi! Jeśli przez nie przejdziesz, podskoczą i spróbują cie zgnieść!";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "No te dejes engañar por su apariencia. Esta criatura puede volar y explotar a voluntad. Se dejará caer desde el cielo como un misil para hacerte explotar. ¡Ten cuidado!";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "That's no door! If you try to go through these fake doors, they'll jump up and try to squish you!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Das ist keine Tür! Wenn du versuchst, durch diese falschen Türen zu gehen, springen sie auf und versuchen, dich zu zerquetschen!";
	dialogue[4][1][i][languages.italian] = "No, non è una porta! Se cerchi di entrarci dentro ti salterà addosso e ti farà molto male.";
	dialogue[4][1][i][languages.french] = "Ce n'est pas une porte ! Si vous essayez d'y entrer, ils vont tenter de vous aplatir !";
	dialogue[4][1][i][languages.polish] = "Często zamieszkujące Trawiaste Niziny, te pajęczaki zwisają z drzew, mając nadzieje żeby ktoś w nich się wbił. To się rzadko zdarza. Mówi się, że istnieje rodzaj Ptasznika, który chodzi na dwóch nogach...";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "¡Eso no es una puerta! Si intentas entrar por una de estas, te asaltará e intentará aplastarte.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Native to Grass Land, these arachnids dangle from trees, hoping someone will bump into them. This rarely happens. It's said there is a variant of this species that can walk on two legs...";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Diese im Grasland beheimateten Spinnentiere baumeln an Bäumen und hoffen, dass jemand sie anstößt. Dies kommt selten vor. Es soll eine Variante dieser Art geben, die auf zwei Beinen laufen kann...";
	dialogue[4][1][i][languages.italian] = "Nato a Grass Land, questo ragno scende dagli alberi e attacca gli indesiderati, anche se non sempre ha successo. Si dice che ci sia una variante bipede.";
	dialogue[4][1][i][languages.french] = "Originaires de Grass Land, ces arachnides pendent depuis les arbres, en espérant blesser quelqu'un. Cela n'arrive presque jamais. Il y aurait apparemment une variante de cette espèce capable de marcher sur deux pieds...";
	dialogue[4][1][i][languages.polish] = "Górka żwiru. Bardzo skoczni przyjaciele. Boing!";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Nativos de Grass Land, estos arácnidos se balancean desde los árboles, esperando chocarse con alguien. Aunque no suele ocurrir. Se dice que hay una versión alternativa de esta especie que camina a dos patas...";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A stack of cute rocks. Very jumpy fellows. Boing!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein Stapel süßer Steine. Sehr nervöse Burschen. Boing!";
	dialogue[4][1][i][languages.italian] = "Una piccola colonna di pietre a cui piace saltare. Boing!";
	dialogue[4][1][i][languages.french] = "Une pile de petites pierres. Ils sautillent très souvent. Boing !";
	dialogue[4][1][i][languages.polish] = "Bardzo niebezpieczny przeciwnik. Będzie skakał w te i nazad, wypuszczając spory wybuch, to zaboli i jeszcze bardziej.";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Una bonita pila de piedras. Salta un montón. ¡Boing!";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "Highly dangerous enemy. It will leap from ledges and release a big explosion, which will hurt you pretty badly.";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Hochgefährlicher Feind. Es wird von Felsvorsprüngen springen und eine große Explosion auslösen, die dich ziemlich schwer verletzen wird.";
	dialogue[4][1][i][languages.italian] = "Un nemico estremamente pericoloso che, pur di colpirti, si precipiterà dalle sporgenze. Non abbassare la guardia, fa malissimo. ";
	dialogue[4][1][i][languages.french] = "Un ennemi très dangereux. Il saute depuis des rebords et déclenche une grosse explosion, qui peut causer de lourds dégâts.";
	dialogue[4][1][i][languages.polish] = "Wspaniały czarodziej, władający silną magią lustrzaną. Może stworzyć klony samego siebie, teleportować się i jeszcze więcej!";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Enemigo extremadamente peligroso. Saltará de sitios altos y creará grandes explosiones que te dejarán frito.";
	dialogue[4][1][i][languages.japanese] = "";
	dialogue[4][1][i][languages.portuguese] = "";
	dialogue[4][1][i][languages.norwegian] = "";
	dialogue[4][1][i][languages.arabic] = "";
	i += 1;
	dialogue[4][1][i][languages.english] = "A powerful magician, with strong mirror-oriented magic. He can create clones of himself, warp around, and more!";
	dialogue[4][1][i][languages.turkish] = "";
	dialogue[4][1][i][languages.german] = "Ein mächtiger Magier mit starker spiegelorientierter Magie. Er kann Klone von sich selbst erstellen, herumwarpen und vieles mehr!";
	dialogue[4][1][i][languages.italian] = "Un potente mago in grado di clonarsi, di teletrasportarsi e di fare molte altre cose.";
	dialogue[4][1][i][languages.french] = "Une puissant magicien, dont la specialité est la magie des miroirs. Il peut créer des clones de lui-même, se téléporter, et faire bien d'autres choses encore !";
	dialogue[4][1][i][languages.polish] = "";
	dialogue[4][1][i][languages.chinese] = "";
	dialogue[4][1][i][languages.spanish] = "Un poderoso mago con poderes de espejo. ¡Puede crear clones de sí mismo, desaparecer y mucho más!";
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