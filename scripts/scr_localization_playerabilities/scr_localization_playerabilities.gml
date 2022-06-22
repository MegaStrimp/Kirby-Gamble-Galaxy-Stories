///@description Localization - Player Abilities
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_PlayerAbilities(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region Ability Titles
	#region Cutter
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.english] = "Cutter";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.turkish] = "Bıçak";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.german] = "Beam";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.italian] = "Lama";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.french] = "Trancheur";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.polish] = "Krajacz";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.chinese] = "Cutter";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.spanish] = "Cuchillo";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.japanese] = "カッター";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.portuguese] = "Bumerangue";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.norwegian] = "Kutter";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.title][0][languages.arabic] = "القاطع";
	#endregion
	
	#region Beam
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.english] = "Beam";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.turkish] = "Işın";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.german] = "Beam";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.italian] = "Raggio";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.french] = "Rayon";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.polish] = "Promień";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.chinese] = "Beam";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.spanish] = "Rayo";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.japanese] = "ビーム";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.portuguese] = "Raio";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.norwegian] = "Stråle";
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.title][0][languages.arabic] = "الشعاع";
	#endregion
	
	#region Mystic Beam
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.english] = "Mystic Beam";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.turkish] = "Mistik Işın";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.german] = "Mystischer Beam";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.italian] = "Raggio Mistico";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.french] = "Rayon Mystique";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.polish] = "Mityczny Promień";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.chinese] = "Mystic Beam";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.spanish] = "Rayo Místico";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.japanese] = "ミスティックビーム";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.portuguese] = "Raio Místico";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.norwegian] = "Mystic Stråle";
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.title][0][languages.arabic] = "الشعاع الروحاني";
	#endregion
	
	#region Stone
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.english] = "Stone";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.turkish] = "Taş";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.german] = "Stein";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.italian] = "Pietra";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.french] = "Rocher";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.polish] = "Głaz";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.chinese] = "Stone";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.spanish] = "Piedra";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.japanese] = "ストーン";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.portuguese] = "Pedra";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.norwegian] = "Stein";
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.title][0][languages.arabic] = "حجر";
	#endregion
	
	#region UFO
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.english] = "UFO";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.turkish] = "Ufo";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.german] = "Ufo";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.italian] = "UFO";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.french] = "OVNI";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.polish] = "UFO";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.chinese] = "UFO";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.spanish] = "Ovni";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.japanese] = "UFO";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.portuguese] = "OVNI";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.norwegian] = "Ufo";
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.title][0][languages.arabic] = "سفينة فضائية";
	#endregion
	
	#region Mirror
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.english] = "Mirror";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.turkish] = "Ayna";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.german] = "Spiegel";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.italian] = "Specchio";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.french] = "Miroir";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.polish] = "Lustro";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.chinese] = "Mirror";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.spanish] = "Espejo";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.japanese] = "ミラー";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.portuguese] = "Espelho";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.norwegian] = "Speil";
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.title][0][languages.arabic] = "المرآة";
	#endregion
	
	#region Ninja
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.english] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.turkish] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.german] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.italian] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.french] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.polish] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.chinese] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.spanish] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.japanese] = "ニンジャ";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.portuguese] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.norwegian] = "Ninja";
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.title][0][languages.arabic] = "نينجا";
	#endregion
	
	#region Bomb
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.english] = "Bomb";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.turkish] = "Bomba";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.german] = "Bombe";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.italian] = "Granata";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.french] = "Bombe";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.polish] = "Bomba";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.chinese] = "Bomb";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.spanish] = "Bomba";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.japanese] = "ボム";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.portuguese] = "Bomba";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.norwegian] = "Bombe";
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.title][0][languages.arabic] = "قنبلة";
	#endregion
	
	#region Fire
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.english] = "Fire";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.turkish] = "Ateş";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.german] = "Feuer";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.italian] = "Fuoco";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.french] = "Feu";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.polish] = "Ogień";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.chinese] = "Fire";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.spanish] = "Fuego";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.japanese] = "ファイア";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.portuguese] = "Fogo";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.norwegian] = "Ild";
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.title][0][languages.arabic] = "نار";
	#endregion
	
	#region Mystic Fire
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.english] = "Mystic Fire";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.turkish] = "Mistik Ateş";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.german] = "Mystisches Feuer";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.italian] = "Fuoco Mistico";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.french] = "Feu Mystique";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.polish] = "Mityczny Ogień";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.chinese] = "Mystic Fire";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.spanish] = "Fuego Místico";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.japanese] = "ミスティック";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.portuguese] = "Fogo Místico";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.norwegian] = "Mystic Ild";
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.title][0][languages.arabic] = "النار الروحانية";
	#endregion
	
	#region Ice
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.english] = "Ice";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.turkish] = "Buz";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.german] = "Eis";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.italian] = "Ghiaccio";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.french] = "Glace";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.polish] = "Lód";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.chinese] = "Ice";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.spanish] = "Hielo";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.japanese] = "アイス";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.portuguese] = "Gelo";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.norwegian] = "Is";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.title][0][languages.arabic] = "ثلج";
	#endregion
	
	#region Spark
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.english] = "Spark";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.turkish] = "Elektrik";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.german] = "Plasma";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.italian] = "Plasma";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.french] = "Étincelle";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.polish] = "Iskra";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.chinese] = "Spark";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.spanish] = "Chispazo";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.japanese] = "スパーク";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.portuguese] = "Faísca";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.norwegian] = "Gnist";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.title][0][languages.arabic] = "شرارة";
	#endregion
	
	#region Yoyo
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.english] = "Yoyo";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.turkish] = "Yoyo";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.german] = "Jo-Jo";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.italian] = "Yo-Yo";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.french] = "Yoyo";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.polish] = "JoJo";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.chinese] = "Yoyo";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.spanish] = "Yoyó";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.japanese] = "ヨーヨー";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.portuguese] = "Ioiô";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.norwegian] = "Yoyo";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.title][0][languages.arabic] = "Yoyo";
	#endregion
	
	#region Wheel
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.english] = "Wheel";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.turkish] = "Tekerlek";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.german] = "Rad";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.italian] = "Ruota";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.french] = "Roue";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.polish] = "Koło";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.chinese] = "Wheel";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.spanish] = "Rueda";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.japanese] = "ホイール";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.portuguese] = "Roda";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.norwegian] = "Hjul";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.title][0][languages.arabic] = "اطار";
	#endregion
	
	#region Artist
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.english] = "Artist";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.turkish] = "Ressam";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.german] = "Künstler";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.italian] = "Artista";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.french] = "Artiste";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.polish] = "Malarz";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.chinese] = "Artist";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.spanish] = "Artista";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.japanese] = "アーティスト";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.portuguese] = "Artista";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.norwegian] = "Artist";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.title][0][languages.arabic] = "رسام";
	#endregion
	
	#region Fighter
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.english] = "Fighter";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.turkish] = "Dövüşçü";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.german] = "Kämpfer";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.italian] = "Lottatore";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.french] = "Combat";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.polish] = "Wojownik";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.chinese] = "Fighter";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.spanish] = "Luchador";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.japanese] = "ファイター";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.portuguese] = "Lutador";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.norwegian] = "Fighter";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.title][0][languages.arabic] = "محارب";
	#endregion
	
	#region Suplex
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.english] = "Suplex";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.turkish] = "Güreşçi";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.german] = "Wrestler";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.italian] = "Wrestler";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.french] = "Lutteur";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.polish] = "Supleks";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.chinese] = "Suplex";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.spanish] = "Suplex";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.japanese] = "スープレックス";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.portuguese] = "Suplex";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.norwegian] = "Suplex";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.title][0][languages.arabic] = "سوبليكس";
	#endregion
	
	#region Wing
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.english] = "Wing";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.turkish] = "Kanat";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.german] = "Wing";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.italian] = "Volo";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.french] = "Aile";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.polish] = "Skrzydła";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.chinese] = "Wing";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.spanish] = "Alas";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.japanese] = "ウィング";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.portuguese] = "Asas";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.norwegian] = "Vinge";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.title][0][languages.arabic] = "جناح";
	#endregion
	
	#region Jet
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.english] = "Jet";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.turkish] = "Jet";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.german] = "Jet";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.italian] = "Jet";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Sword
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.english] = "Sword";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.turkish] = "Kılıç";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.german] = "Schwert";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Parasol
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.english] = "Parasol";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Hammer
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.english] = "Hammer";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Bell
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.english] = "Bell";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Water
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.english] = "Water";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Sleep
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.english] = "Sleep";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Scan
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.english] = "Scan";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Crash
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.english] = "Crash";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Mic
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.english] = "Mic";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Ultra Sword
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.english] = "Ultra Sword";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.turkish] = "Ultra Kılıç";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.german] = "Ultra Schwert";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.italian] = "Ultra Spada";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.french] = "Super Épée";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.polish] = "Miecz Ultra";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.chinese] = "Ultra Sword";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.spanish] = "Gran Espada";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.japanese] = "ウルトラソード";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.portuguese] = "Ultra Espada";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.norwegian] = "Ultra Sverd";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.title][0][languages.arabic] = "السيف الاقوى";
	#endregion
	#endregion
	
	#region Ability Descriptions
	#region Cutter
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.english] = "Wield a sharp boomerang to slash and dash through enemies!";
	dialogue[stringAttributes.playerAbilities_cutter][stringAttributes.description][0][languages.turkish] = "Keskin bir bumerangla düşmanları parçala!";
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
	dialogue[stringAttributes.playerAbilities_beam][stringAttributes.description][0][languages.turkish] = "Etrafında elektrik ışınları çevir. Uzağa ateşlemek için şarj et!";
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
	dialogue[stringAttributes.playerAbilities_mysticBeam][stringAttributes.description][0][languages.turkish] = "Flux'ın gücü Işınımızı Mistik Işın'a çevirdi! Işın kalkanı düşmanlara zarar verir!";
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
	dialogue[stringAttributes.playerAbilities_stone][stringAttributes.description][0][languages.turkish] = "Yenilmez bir taşa dönüş! Bu garip heykeller de ne böyle?";
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
	dialogue[stringAttributes.playerAbilities_ufo][stringAttributes.description][0][languages.turkish] = "Bir uzay gemisine dönüş ve düşmanları lazerlerle alt et!";
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
	dialogue[stringAttributes.playerAbilities_mirror][stringAttributes.description][0][languages.turkish] = "Yansımanın gücü ile düşman saldırılarını geri gönder!";
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
	dialogue[stringAttributes.playerAbilities_ninja][stringAttributes.description][0][languages.turkish] = "Gölge bir suikastçi ol ve gizlice saldır!";
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
	dialogue[stringAttributes.playerAbilities_bomb][stringAttributes.description][0][languages.turkish] = "Bir bomba al ve fırlat, ama sakın elinde çok uzun tutma!";
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
	dialogue[stringAttributes.playerAbilities_fire][stringAttributes.description][0][languages.turkish] = "Tüm rakiplerini güçlü alevlerle yak!";
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
	dialogue[stringAttributes.playerAbilities_mysticFire][stringAttributes.description][0][languages.turkish] = "Flux'ın gücü ateşini daha da güçlendirdi! Artık nişan almana gerek yok, düşmanlarını daha kolay kızart!";
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
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.turkish] = "Kayak yap ve soğuk nefesinle düşmanları dondur!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.german] = "Schlittschuh herum und friere Feinde mit deinem kalten Atem ein!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.italian] = "Pattina e congela i nemici con il tuo soffio di ghiaccio!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.french] = "Patine et gèle tes ennemis avec ton souffle glacé!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.polish] = "Ślizgaj się i zamarzaj twoje przeszkody swoim lodowatym oddechem i nie tylko!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.chinese] = "溜冰,用你冰冷的呼吸冻住敌人!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.spanish] = "¡Patina libremente y congela a todos con tu aliento helado!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.japanese] = "スケートしながら冷たい息で敵を凍らせていこう。";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.portuguese] = "Patine por aí e congele adversários com seu sopro congelante!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.norwegian] = "Skøyter rundt og frys fiender med ditt kalde pust!";
	dialogue[stringAttributes.playerAbilities_ice][stringAttributes.description][0][languages.arabic] = "!جمد اعدائك وتزلج حولهم بنفسك البارد";
	#endregion
	
	#region Spark
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.english] = "Mash the directional keys to charge up and zap enemies!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.turkish] = "Yön tuşlarına basıp şarj edebilir ve düşmanları çarpabilirsin!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.german] = "Drücke die Richtungstasten, um aufzuladen und die Feinde zu zappen!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.italian] = "Schiaccia i tasti direzionali per caricare ed elettrizzare i nemici!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.french] = "Appuies sur différentes directions pour charger de l’électricité et foudroie les ennemis.";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.polish] = "Roztrzep się na lewo i prawo żeby naelektryzować i zastrzel twoich przeciwników czystą energią elektryczną.";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.chinese] = "捣碎方向键，充电和电死敌人！";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.spanish] = "¡Machaca las flechas direccionales para cargarte y electrocutar enemigos!";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.japanese] = "方向キーを押しまくってチャージし、敵を倒していこう。";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.portuguese] = "Aperte rapidamente as setas direcionais para carregar eletricidade e eletrocutar inimigos";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.norwegian] = "Mash retningstastene for å lade opp og zappe fiender";
	dialogue[stringAttributes.playerAbilities_spark][stringAttributes.description][0][languages.arabic] = "!اضغط على ازرار الاتجاه بسرعة لتشحن الشرارة وتلذع الاعداء";
	#endregion
	
	#region Yoyo
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.english] = "Slide into action and wave a yoyo with stylish power!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.turkish] = "Yoyonun şık gücüyle düşmalarını korkut!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.german] = "Rutsche in Aktion und winke ein Jo-Jo mit stylischer Kraft!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.italian] = "Scivola nell’azione servendoti di uno stiloso Yo-Yo con poteri incredibili!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.french] = "Glisse dans l’action et lance un puissant yoyo avec style!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.polish] = "Wsuń się w akcje i rozmachuj swoim jojo z modną mocą!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.chinese] = "滑入行动和挥动一个”Yoyo”与时尚的力量!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.spanish] = "¡Deslízate a la acción con tu yoyó derrochando poder y estilo!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.japanese] = "アクションをスライドさせて、スタイリッシュなパワーでヨーヨーを振ることができます。";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.portuguese] = "Entre em ação e agite um ioiô com poder estiloso!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.norwegian] = "Dra til handling og vink en yoyo med stilig kraft!";
	dialogue[stringAttributes.playerAbilities_yoyo][stringAttributes.description][0][languages.arabic] = "انطلق إلى العمل ولوح اليويو بقوة أنيقة!";
	#endregion
	
	#region Wheel
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.english] = "Speed through crowds of enemies all while being nearly invincible, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.turkish] = "Neredeyse yenilmez olarak kalabalık düşmanlarına doğru hız yap, vın vın!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.german] = "Rase durch die Scharen von Feinden, während du fast unbesiegbar bist, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.italian] = "Corri su molti nemici mentre sei quasi invincibile, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.french] = "Fonce à travers tes ennemis en étant presque invincible, vroum-vroum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.polish] = "Przejeżdżaj tłumy Przeciwników podczas gdy jesteś prawie nietykalny, brum brum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.chinese] = "速度通过敌人的人群，而几乎是无敌的, Vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.spanish] = "¡Atropella hordas de enemigos a toda velocidad mientras eres casi invencible! ¡Brrum brrum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.japanese] = "無敵の状態で敵の群れをスピードで切り抜けていこう。ブルーンブルーーン!!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.portuguese] = "Acelere por multidões de inimigos ao mesmo tempo que é quase invencível, vrum vrum!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.norwegian] = "Kjør gjennom mengder fiender mens du er nesten uovervinnelig, vroom vroom!";
	dialogue[stringAttributes.playerAbilities_wheel][stringAttributes.description][0][languages.arabic] = "!امشي بسرعة حول اعدائك مع تخفي لبعض الوقت، فروم فروم";
	#endregion
	
	#region Artist
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.english] = "Slap opponents with your brush or paint up an army of drawings to fight alongside you!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.turkish] = "Düşmanlarını fırçanla tokatla veya seninle birlikte savaşmaları için bir resim ordusu yarat!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.german] = "Schlage Gegner mit deinem Pinsel oder male eine Armee von Zeichnungen auf, um an deiner Seite zu kämpfen!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.italian] = "Schiaffeggia i nemici con il tuo pennello o dipingi degli alleati per farli lottare al tuo fianco!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.french] = "- Frappe tes ennemis avec ton pinceau ou peins une armée de dessins qui combattra à tes côtés!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.polish] = "Uderzaj swoich przeciwników twoim magicznym pędzlem lub namaluj armię rysunków żeby walczyli po twojej stronie!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.chinese] = "用你的画笔拍打对手，或者画出一大堆图画和你并肩作战！";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.spanish] = "¡Golpea a tus oponentes con tu pincel o pinta un ejército de dibujos que lucharán a tu lado!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.japanese] = "ブラシで相手を叩いたり絵の軍隊を作って一緒に戦ったり......";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.portuguese] = "Bata em inimigos com seu pincel ou pinte um exército de desenhos para lutar com você!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.norwegian] = "Slå motstandere med penselen din eller mal opp en hær av tegninger for å kjempe sammen med deg!";
	dialogue[stringAttributes.playerAbilities_artist][stringAttributes.description][0][languages.arabic] = "!اضرب الاعداء بفرشاتك او ارسم جيشا من الرسوم ليحاربو معك";
	#endregion
	
	#region Fighter
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.english] = "Turn into a master martial artist and KO your opponents. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.turkish] = "Bir dövüş sanatçısına dönüş ve düşmanlarını KO'la. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.german] = "Verwandle dich in einen Meisterkampfkünstler und KO deine Gegner. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.italian] = "Diventa un maestro di arti marziali e metti KO i nemici! Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.french] = "Deviens un maître des arts martiaux et mets tes adversaires à terre!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.polish] = "Zmień się w mistrza sztuk walki i zadaj K.O twoim przeciwnikom. A-masz!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.chinese] = "变成一个武术大师，KO你的对手。 Kapow！";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.spanish] = "¡Conviértete en un maestro de artes marciales y noquea a tus oponentes! ¡Kapow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.japanese] = "武道の達人になって相手をKOしよう!! ka-POW!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.portuguese] = "Torne-se um mestre das artes marciais e nocauteie seus oponentes. Ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.norwegian] = "Gjør deg til en kampsportmester og KO motstanderne dine. ka-pow!";
	dialogue[stringAttributes.playerAbilities_fighter][stringAttributes.description][0][languages.arabic] = "!تحول الى محترف بالفنون القتالية واقض على اعدائك! كا-باو";
	#endregion
	
	#region Suplex
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.english] = "Channel the wrestler spirit by grappling enemies and throwing them around!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.turkish] = "Güreşçi ruhunu canlandır ve düşmanları tutup etrafa fırlat!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.german] = "Kanalisieren Sie den Wrestler-Geist, indem Sie Feinde festhalten und sie herumschleudern!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.italian] = "Ottieni lo spirito di un wrestler prendendo e lanciando via i nemici!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.french] = "Manifeste l’esprit du lutteur en saisissant et lançant les ennemis!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.polish] = "Wciel w sobie Duszę prawdziwego zapaśnika poprzez łapanie przeciwników i przerzucanie nimi na różne strony!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.chinese] = "通过抓住敌人和投掷来引导摔跤手的精神他们周围!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.spanish] = "¡Canaliza tu espíritu de luchador libre agarrando a tus enemigos y lanzándolos por ahí!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.japanese] = "プロレスラーの精神を受け継いで敵を掴んで投げ飛ばせ!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.portuguese] = "Canalize o espírito da luta-livre agarrando inimigos e jogando eles por aí!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.norwegian] = "Kanal bryterånden ved å gripe fiender og kaste dem rundt!";
	dialogue[stringAttributes.playerAbilities_suplex][stringAttributes.description][0][languages.arabic] = "!بمصارعة اعدائك ورميهم حول المكان";
	#endregion
	
	#region Wing
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.english] = "Fly through the skies with grace. dash into enemies or send volleys of feathers at them!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.turkish] = "Gökyüzünde asil bir şekilde uç. Düşmanlara hücum et ve onlara tüy fırlat!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.german] = "Fliegen Sie mit Anmut durch den Himmel. stürze dich in Feinde oder schicke Federsalven auf sie!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.italian] = "Solca i cieli con grazia, scatta sui nemici o colpiscili al volo!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.french] = "Vole dans les airs avec grâce. Fonce sur les ennemis ou lance une volée de plumes vers eux!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.polish] = "Wznieś się swobodnie ku powietrzu i przebijaj się przez przeciwników lub wyrzucaj salwy piór ostrych jak żyletka prosto na żywe przeszkody!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.chinese] = "优雅地飞过天空. 冲向敌人或向他们发射羽毛！";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.spanish] = "¡Vuela por los cielos con elegancia! ¡Embiste a tus enemigos o lánzales ráfagas de plumas!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.japanese] = "空を優雅に飛んで、敵に向かってダッシュしたり、羽根を飛ばしたりしていこう!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.portuguese] = "Voe pelos céus graciosamente. Acelere por inimigos ou mande rajadas de penas contra eles!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.norwegian] = "Fly gjennom himmelen med nåde. skyte inn i fiender eller sende volleys av fjær på dem!";
	dialogue[stringAttributes.playerAbilities_wing][stringAttributes.description][0][languages.arabic] = "حلِّق في السماء برشاقة.  اندفع نحو الأعداء أو أرسل وابل من الريش عليهم!";
	#endregion
	
	#region Jet
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.english] = "Charge the engine to zoom forward at supersonic speeds!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.turkish] = "Motorunu çalıştır ve düşmanlarını süper hızla ez!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.german] = "Lade den Motor auf, um mit Überschallgeschwindigkeit vorwärts zu sausen!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.italian] = "Accendi i motori e viaggia a velocità supersoniche!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.french] = "Charge le moteur pour t’envoler en avant à toute vitesse!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.polish] = "Załaduj silnik i przeleć w te i nazad w szybkości dźwięku!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.chinese] = "为发动机充电，以超音速前进！";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.spanish] = "¡Carga el motor y lánzate volando a velocidades supersónicas!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.japanese] = "エンジンをチャージして、超音速で突き進め!!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.portuguese] = "Carregue o motor para avançar em velocidades supersônicas!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.norwegian] = "Lad motoren for å zoome fremover med supersoniske hastigheter!";
	dialogue[stringAttributes.playerAbilities_jet][stringAttributes.description][0][languages.arabic] = "!اشحن المحرك لتذهب بسرعات تفوق الصوت";
	#endregion
	
	#region Sword
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.english] = "Wield a sharp blade to slice and stab all sorts of things!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.turkish] = "Keskin bir kılıç ile herşeyi kes ve doğra!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.german] = "Schwinge eine scharfe Klinge, um alle möglichen Dinge zu zerschneiden und zu erstechen!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.italian] = "Brandisci una lama tagliente e taglia qualsiasi cosa!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.french] = "Brandis une lame tranchante pour couper et percertoutes sortes de choses!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.polish] = "Władaj ostrzem i rozcinaj przeciwników jak nóż przez masło!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.chinese] = "挥舞着锋利的刀片来切割和刺伤各种各样的东西！";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.spanish] = "¡Empuña una espada afilada para cortar y atravesar todo tipo de objetos y enemigos!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.japanese] = "鋭利な刃物を振り回して、いろいろなものを切ったり刺したりしてみましょう。";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.portuguese] = "Empunhe uma lâmina afiada para fatiar e perfurar todo tipo de coisa!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.norwegian] = "Bruk et skarpt blad for å skjære og stikke alle slags ting!";
	dialogue[stringAttributes.playerAbilities_sword][stringAttributes.description][0][languages.arabic] = "استخدم شفرة حادة لتقطيع كل أنواع الأشياء وطعنها!";
	#endregion
	
	#region Parasol
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.english] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.turkish] = "Kendini düşen nesnelerden koru, canavarları püskürt ve havada yavaşça süzül!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.german] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.italian] = "Puoi proteggerti dagli oggetti cadenti, colpire nemici e perfino cadere lentamente!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.french] = "Protège-toi des objets tombants, claque les ennemis, et ralentis les chutes!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.polish] = "Broń się przed spadającymi pociskami, uderzaj przeciwników oraz spadaj powoli, jak piórko!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.chinese] = "保护自己免受坠落物体，重击敌人, 甚至撑着伞慢慢落下！";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.spanish] = "¡Protégete de objetos que caen, golpea enemigos e incluso controla tu velocidad de caída!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.japanese] = "落下物から身を守ったり、敵を叩いたり、さらにはゆっくりと落下することもできます。";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.portuguese] = "Proteja-se de objetos em queda, bata em inimigos e até mesmo caia lentamente com um guarda-chuva!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.norwegian] = "Beskytt deg mot fallende gjenstander, slå fiender og til og med fall sakte med en paraply!";
	dialogue[stringAttributes.playerAbilities_parasol][stringAttributes.description][0][languages.arabic] = "!احمي نفسك من الاشياء اللتي تقع، اضرب الاعداء، او حتى الهبوط بخفة";
	#endregion
	
	#region Hammer
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.english] = "Smash enemies with extremely powerful swings of a hammer, ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.turkish] = "Düşmanları güçlü bir çekiç hamlesiyle ezip geç!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.german] = "Zerschmettere Feinde mit extrem starken Hammerschlägen, autsch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.italian] = "Schiaccia i nemici agitando un martello estremamente forte, ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.french] = "Fracasse les ennemis en secouant violemment un marteau, aïe!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.polish] = "Zgnieć przeciwników z ekstremalnie silnymi trzepnięciami młota, auć!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.chinese] = "用极其强大的锤子击碎敌人, Ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.spanish] = "¡Aplasta enemigos con los poderosos golpes de tu martillo! ¡Ouch!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.japanese] = "ハンマーの超強力なスイングで敵を粉砕しよう。いてっ";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.portuguese] = "Esmague inimigos com golpes extremamente poderosos de um martelo, ai!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.norwegian] = "Knus fiender med ekstremt kraftige svingninger av en hammer, au!";
	dialogue[stringAttributes.playerAbilities_hammer][stringAttributes.description][0][languages.arabic] = "!حطم الاعداء بضربات المطرقة القوية! اوتش";
	#endregion
	
	#region Bell
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.english] = "Ring ring! dual wield these loud instruments to compose a destructive song!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.turkish] = "Çın çın! Bu iki gürültülü ensturmanı alıp yok edici bir müzik bestele!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.german] = "Ring ring! Benutze diese lauten Instrumente, um einen destruktiven Song zu komponieren!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.italian] = "Ring ring! Brandisci questi due strumenti rumorosi per comporre una canzone con effetti devastanti!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.french] = "Ding-dong! Manie ces deux bruyants instruments pour composer une chanson destructrice!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.polish] = "Dzyń dzyń! Władaj dwuręcznie głośnymi dzwonkami żeby utworzyć twoją własną ode do zniszczenia!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.chinese] = "Ring Ring！ 双挥这些响亮的乐器组成一个破坏性的歌曲！";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.spanish] = "¡Ding Dong! ¡Lleva a dos manos estos ruidosos instrumentos para componer una melodía destructiva!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.japanese] = "この大音量の楽器を二つ振り回して、破壊的な曲を作っていこう!!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.portuguese] = "Blim blim! Empunhe esses dois instrumentos barulhentos para compor uma música destrutiva!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.norwegian] = "Ring ring! doble med disse høye instrumentene for å komponere a ødeleggende sang!";
	dialogue[stringAttributes.playerAbilities_bell][stringAttributes.description][0][languages.arabic] = "!رينق رينق! احمل هذين الجرسين واطلق اغنية مدمرة";
	#endregion
	
	#region Water
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.english] = "Bend water to your will to power wash enemies. surfs up!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.turkish] = "Suyu dilediğin gibi büküp düşmanlarını yıka. Sörf zamanı!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.german] = "Beugen Sie Wasser nach Ihrem Willen, um Feinde zu waschen. surft auf!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.italian] = "Sfrutta la potenza dell’acqua per far fuori i nemici… O surfare!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.french] = "Contrôle l’eau à ta guise pour emporter les ennemis. Surfez!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.polish] = "Ukształtuj wode poprzez twoją wolną wole i zrób ostateczną kąpiel twoim wrogom. Uwaga, będzie mokro!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.chinese] = "弯曲水你的意志，权力洗敌人。 冲浪起来！";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.spanish] = "¡Controla el agua a tu antojo para lavar a tus enemigos y surfear sobre ellos!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.japanese] = "水を自在に操り、敵にパワーウォッシュをかけていこう!いい波がきてるぜ!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.portuguese] = "Dobre a água à sua vontade para lavar inimigos. Tá dando onda!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.norwegian] = "Bøy vann til din vilje for å vaske fiender. surfer opp!";
	dialogue[stringAttributes.playerAbilities_water][stringAttributes.description][0][languages.arabic] = "!اجعل الماء ينثني لارادتك لتغسل به الاعداء! الامواج عالية";
	#endregion
	
	#region Sleep
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.english] =  "Yawn... 5 more minutes... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.turkish] =  "zzzzz... lütfen 5 dakika daha... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.german] =  "Gähn... Noch 5 Minuten... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.italian] =  "Yamn... Altri 5 minuti... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.french] =  "Bâille... Encore 5 minutes... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.polish] =  "Chrrrrrrrr... Je-jeszcze pięć minut... chrrrrr...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.chinese] =  "Yawn... 再过5分钟... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.spanish] =  "Uuuaaahhh... Solo 5 minutos más... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.japanese] =  "ふぅぁぁぁ・・・あと5分・・・zzzzzzzzzzz.....";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.portuguese] =  "Uaaaah! Mais cinco minutos... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.norwegian] =  "Gjesp... fem minutter til... zzzzzzzzzzz...";
	dialogue[stringAttributes.playerAbilities_sleep][stringAttributes.description][0][languages.arabic] = ".....ياون.....٥ دقائق اخرى.....خخخخخخ";
	#endregion
	
	#region Scan
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.english] = "Use an advanced headset to scan and copy foes abilities!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.turkish] = "Düşmanlarının özelliklerini kopyalayan özel bir başlık kullan!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.german] = "Verwend ein fortschrittliches Headset, um die Fähigkeiten von Feinden zu scannen und zu kopieren!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.italian] = "Usa un’avanzata attrezzatura per scannerizzare e copiare le mosse degli avversari!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.french] = "Utilise un casque high-tech pour copier les capacités des ennemis!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.polish] = "Użyj zaawansowanego hełmu żeby skanować i kopiować przeróżne zdolności!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.chinese] = "使用先进的耳机扫描和复制敌人的能力!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.spanish] = "¡Usa tu visor avanzado para escanear y copiar las habilidades de tus enemigos!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.japanese] = "進化したヘッドセットを使って、敵の能力をスキャンしてコピーしよう。";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.portuguese] = "Use um headset avançado para escanear e copiar as habilidades de inimigos!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.norwegian] = "Bruk en avansert headset og kopier fiendenes evner!";
	dialogue[stringAttributes.playerAbilities_scan][stringAttributes.description][0][languages.arabic] = "!استخدم خوذة خارقة لمسح الاعداء ونسخ مهاراتهم";
	#endregion
	
	#region Crash
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.english] = "Clear the whole screen with a single mighty boom!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.turkish] = "Tek bir patlamayle tüm ekranı temizle!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.german] = "Zerstöre den gesamten Bildschirm mit einer einzigen mächtigen Explosion!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.italian] = "Riempi lo schermo con uno potentissimo BOOM!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.french] = "Balaye tous les ennemis à l’écran avec une puissante explosion!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.polish] = "Wyczyść cały ekran poprzez jeden spory wybuch!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.chinese] = "用一个强大的轰隆声清除整个屏幕!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.spanish] = "¡Despeja toda la pantalla con una gran explosión!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.japanese] = "画面全体を豪快に一発で消し去れ!!!!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.portuguese] = "Limpe a tela inteira com uma única explosão poderosa!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.norwegian] = "Fjern hele skjermen med en kraftig bom!";
	dialogue[stringAttributes.playerAbilities_crash][stringAttributes.description][0][languages.arabic] = "!امسح الشاشة كلها بانفجار عظيم واحد";
	#endregion
	
	#region Mic
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.english] = "Use your powerful singing skill to defeat all the enemies around you! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.turkish] = "Güçlü sesinle etrafındaki tüm düşmanları yok et! CHESTO!";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.german] = "Nutze deine mächtigen Gesangskünste, um alle Feinde um dich herum zu besiegen! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.italian] = "Usa le tue potenti abilità canore per sconfiggere i nemici intorno a te! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.french] = "Terrasse tous les ennemis en vue à l’aide de tes talents de chanteur! 'CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.polish] = "Użyj swoje zdolności śpiewu żeby pokonać wszystkich przeciwników dookoła ciebie! 'CZYSTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.chinese] = "使用你强大的歌唱技巧来击败你周围的所有敌人！’CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.spanish] = "¡Usa tu poderosa técnica vocal para derrotar a todos los enemigos que te rodean! '¡CHESTO!'";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.japanese] = "パワフルな歌唱力で周りの敵を倒していきましょう!!!‘チェストォォ!!!!!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.portuguese] = "Use a sua poderosa habilidade de canto para derrotar todos os inimigos ao seu redor! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.norwegian] = "Bruk din kraftige sangferdighet for å beseire alle fiendene rundt deg! ‘CHESTO!’";
	dialogue[stringAttributes.playerAbilities_mic][stringAttributes.description][0][languages.arabic] = "!استخدم مهارتك في الغناء لكي تهزم الاعداء! تشيستو";
	#endregion
	
	#region Ultra Sword
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.english] = "This huge sword can devastate enemies and your terrain with pure destructive power! Slice and dice!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.turkish] = "Bu dev kılıç düşmanları ve etrafı paramparça eder! Lime lime et!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.german] = "Dieses riesige Schwert kann Feinde und dein Gelände mit purer Zerstörungskraft verwüsten! In Würfel schneiden!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.italian] = "Quest’enorme spada può devastare i nemici e il terreno con puro potere distruttivo! Slice and dice!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.french] = "Cette énorme épée peut anéantir les ennemis et le terrain avec une force destructrice! Tranche et hache!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.polish] = "Ten Spory Miecz z łatwością przecina i niszczy przeciwników oraz twoje otoczenie z czystą mocą ZNISZCZENIA! Tnij i rozcinaj!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.chinese] = "这个巨大的剑可以摧毁敌人和的地形 拥有纯粹的破坏力！ 切片和切块!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.spanish] = "¡Esta espada gigante puede arrasar tanto con enemigos como con el terreno con puro poder destructivo! ¡Corta y trocea!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.japanese] = "この巨大な剣は、敵と自分の地形を破壊することができる純粋な破壊力があります!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.portuguese] = "Esta espada enorme pode devastar inimigos e seu terreno com puro poder destrutivo! Fatie e pique!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.norwegian] = "Dette enorme sverdet kan ødelegge fiender og terrenget ditt med ren ødeleggende kraft! Skjære og kutte!";
	dialogue[stringAttributes.playerAbilities_ultraSword][stringAttributes.description][0][languages.arabic] = "!هذا السيف الضخم يستطيع تدمير اعدائك والارض بقوة تدميرية كبيرة! قطع وارمي";
	#endregion
	#endregion
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}