///@description Localization - Player Spray Paints
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_PlayerSprayPaints(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region Spray Paint Titles
	#region Friendly Pink
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.english] = "Friendly Pink";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.turkish] = "Dost Pembesi";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.german] = "Freundliches Rosa";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.italian] = "Rosa Amichevole";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.french] = "Rose amical";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.polish] = "Przyjazna róż";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.chinese] = "友好的粉红色";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.spanish] = "Rosa Amistoso";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.japanese] = "フレンドリーピンク";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.portuguese] = "Rosa Amigável";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.norwegian] = "Vennelig Rosa";
	dialogue[stringAttributes.playerSprayPaints_friendlyPink][stringAttributes.title][0][languages.arabic] = "وردي لطيف";
	#endregion
	
	#region Yellow
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.english] = "Yellow";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.turkish] = "Sarı";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.german] = "Gelb";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.italian] = "Giallo";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.french] = "Jaune";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.polish] = "Żółty";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.chinese] = "黄色";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.spanish] = "Amarillo";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.japanese] = "黄色";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.portuguese] = "Amarelo";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.norwegian] = "Gul";
	dialogue[stringAttributes.playerSprayPaints_yellow][stringAttributes.title][0][languages.arabic] = "اصفر";
	#endregion
	
	#region Red
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.english] = "Red";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.turkish] = "Kırmızı";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.german] = "Rot";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.italian] = "Rosso";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.french] = "Rouge";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.polish] = "Czerwony";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.chinese] = "红色";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.spanish] = "Rojo";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.japanese] = "赤";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.portuguese] = "Vermelho";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.norwegian] = "Rød";
	dialogue[stringAttributes.playerSprayPaints_red][stringAttributes.title][0][languages.arabic] = "احمر";
	#endregion
	
	#region Green
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.english] = "Green";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.turkish] = "Yeşil";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.german] = "Grün";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.italian] = "Verde";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.french] = "Vert";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.polish] = "Zielony";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.chinese] = "绿色";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.spanish] = "Verde";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.japanese] = "緑";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.portuguese] = "Verde";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.norwegian] = "Grønn";
	dialogue[stringAttributes.playerSprayPaints_green][stringAttributes.title][0][languages.arabic] = "اخضر";
	#endregion
	
	#region Dreamy Blueberry
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.english] = "Dreamy Blueberry";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.turkish] = "Rüya Yabanmersini";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.german] = "Verträumte Blaubeere";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.italian] = "Mirtillo Meraviglioso";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.french] = "Myrtille onirique";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.polish] = "Senna jagoda";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.chinese] = "梦幻般的蓝莓色";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.spanish] = "Arándano de Ensueño";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.japanese] = "ドリーミーブルーベリー";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.portuguese] = "Mirtilo Sonhador";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.norwegian] = "Drømmene Blåbær";
	dialogue[stringAttributes.playerSprayPaints_dreamyBlueberry][stringAttributes.title][0][languages.arabic] = "عنبي حالم";
	#endregion
	
	#region Carbon
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.english] = "Carbon";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.turkish] = "Karbon";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.german] = "Kohlenstoff";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.italian] = "Carbone";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.french] = "Carbone";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.polish] = "Węgiel";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.spanish] = "Carbón";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.japanese] = "墨色";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.portuguese] = "Carbono";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_carbon][stringAttributes.title][0][languages.arabic] = "كاربون";
	#endregion
	
	#region Cherry
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.english] = "Cherry";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.turkish] = "Kiraz";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.german] = "Kirsche";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.italian] = "Ciliegia";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.french] = "Cerise";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.polish] = "Wisienka";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.spanish] = "Cereza";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.japanese] = "サクランボ";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.portuguese] = "Cereja";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_cherry][stringAttributes.title][0][languages.arabic] = "كرز";
	#endregion
	
	#region Deep Fried Kirb
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.english] = "Deep Fried Kirb";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.turkish] = "Kızarmış Kirb";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.german] = "Frittiertes Kirb";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.italian] = "Kirby Fritto";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.french] = "Kirby frit";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.polish] = "Głęboko-Smażony";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.spanish] = "Kirb Frito";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.japanese] = "唐揚げカービィ";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.portuguese] = "Kirb Frito";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_deepFriedKirb][stringAttributes.title][0][languages.arabic] = "كيرب مقلي";
	#endregion
	
	#region Emerald
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.english] = "Emerald";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.turkish] = "Zümrüt";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.german] = "Smaragd";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.italian] = "Smeraldo";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.french] = "Émeraude";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.polish] = "Szmaragdowy";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.spanish] = "Esmeralda";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.japanese] = "エメラルド";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.portuguese] = "Esmeralda";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_emerald][stringAttributes.title][0][languages.arabic] = "زمرد";
	#endregion
	
	#region GameKirb
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.english] = "GameKirb";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.turkish] = "GameKirb";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.german] = "Gamekrib";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.italian] = "Kirby Game Boy";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.french] = "Kirby Game Boy";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.polish] = "Growy Kirby";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.spanish] = "GameKirb";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.japanese] = "ゲームカービィ";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.portuguese] = "GameKirb";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_gameKirb][stringAttributes.title][0][languages.arabic] = "قيم كيرب";
	#endregion
	
	#region Haunting Purple
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.english] = "Haunting Purple";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.turkish] = "Hayalet Moru";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.german] = "Eindringliches Lila";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.italian] = "Viola Ossessionante";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.french] = "Violet hanteur";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.polish] = "Nawiedzający fiolet";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.spanish] = "Morado Encantado";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.japanese] = "ハンティングパープル";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.portuguese] = "Roxo Assustador";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_hauntingPurple][stringAttributes.title][0][languages.arabic] = "البنفسجي المطارد";
	#endregion
	
	#region Invis Sprinkle
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.english] = "Invis Sprinkle";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.turkish] = "Görünmez Serpinti";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.german] = "Unsichtbares streuen";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.italian] = "Pizzico Invisibile";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.french] = "Paillettes invisibles";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.polish] = "Niewidoczny rozprysk";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.spanish] = "Polvos Invisibles";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.japanese] = "インビススプリンクル";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.portuguese] = "Borrifada Invis";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_invisSprinkle][stringAttributes.title][0][languages.arabic] = "الرش الخفي";
	#endregion
	
	#region Monochrome Kirb
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.english] = "Monochrome Kirb";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.turkish] = "Siyah-Beyaz Kirb";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.german] = "Monochromer Kirb";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.italian] = "Kirby Monocromatico";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.french] = "Kirby Monochrome";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.polish] = "Czarno-na-białym";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.spanish] = "Kirb Monocromático";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.japanese] = "Monochrome-カービィ";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.portuguese] = "Kirb Monocromático";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_monochromeKirb][stringAttributes.title][0][languages.arabic] = "كيربي احادي اللون";
	#endregion
	
	#region Yolk Temple
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.english] = "Yolk Temple";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.turkish] = "Yumurta Tapınağı";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.german] = "Eigelb-Tempel";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.italian] = "Tempio Color Tuorlo";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.french] = "Temple Vitellus";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.polish] = "Prehistoryczne żółtko";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.spanish] = "Yema del Templo";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.japanese] = "黄泉の寺";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.portuguese] = "Templo Gema";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_yolkTemple][stringAttributes.title][0][languages.arabic] = "معبد الصفار";
	#endregion
	
	#region Plump Tomato
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.english] = "Plump Tomato";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.turkish] = "Tombul Domates";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.german] = "Pralle Tomate";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.italian] = "Pomodoro Paffuto";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.french] = "Tomate dodue";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.polish] = "Pulchny pomidor";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.spanish] = "Tomate Rechoncho";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.japanese] = "ふっくらトマト";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.portuguese] = "Tomate Gorducho";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_plumpTomato][stringAttributes.title][0][languages.arabic] = "طماطم ممتلئة";
	#endregion
	
	#region Waddle Waddle
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.english] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.turkish] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.german] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.italian] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.french] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.polish] = "Kaczy";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.chinese] = "蹒跚学步";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.spanish] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.japanese] = "ワドルワドル";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.portuguese] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.norwegian] = "Waddle Waddle";
	dialogue[stringAttributes.playerSprayPaints_waddleWaddle][stringAttributes.title][0][languages.arabic] = "وادل وادل";
	#endregion
	
	#region Mystic
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.english] = "Mystic";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.turkish] = "Mistik";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.german] = "Mythisch";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.italian] = "Mistico";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.french] = "Mystique";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.polish] = "Mityczny";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.chinese] = "神秘的";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.spanish] = "Místico";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.japanese] = "ミスティック";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.portuguese] = "Místico";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.norwegian] = "mystikk";
	dialogue[stringAttributes.playerSprayPaints_mystic][stringAttributes.title][0][languages.arabic] = "صوفي";
	#endregion
	
	#region Shadow of the Mirror
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.english] = "Shadow of the Mirror";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.turkish] = "Ayna'nın Gölgesi";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.german] = "Schatten des Spiegels";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.italian] = "Ombra dello Specchio";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.french] = "L'ombre du miroir";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.polish] = "Cień lustra";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.chinese] = "镜子的阴影";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.spanish] = "Sombra del Espejo";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.japanese] = "鏡の中のシャドウ";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.portuguese] = "Sombra do Espelho";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.norwegian] = "Skyggen av Speilet";
	dialogue[stringAttributes.playerSprayPaints_shadowOfTheMirror][stringAttributes.title][0][languages.arabic] = "ظل المرآة";
	#endregion
	
	#region Delirious
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.english] = "Delirious";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.turkish] = "Delirmiş";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.german] = "Phantasierend";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.italian] = "Delirante";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.french] = "Délirant";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.polish] = "Bezpamiętny"
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.spanish] = "Delirante";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.japanese] = "狂";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.portuguese] = "Delirante";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_delirious][stringAttributes.title][0][languages.arabic] = "هذياني";
	#endregion
	
	#region Greenjolt
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.english] = "Greenjolt";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.turkish] = "Greenjolt";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.german] = "Greenjolt";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.italian] = "Greenjolt";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.french] = "Greenjolt";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.polish] = "Zielony wstrząs";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.chinese] = "绿色颠簸";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.spanish] = "Descarga Verde";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.japanese] = "グリーンジョルト";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.portuguese] = "Verdejolt";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.norwegian] = "Grænnjolt";
	dialogue[stringAttributes.playerSprayPaints_greenjolt][stringAttributes.title][0][languages.arabic] = "جرينجولت";
	#endregion
	
	#region Butter Knife
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.english] = "Butter Knife";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.turkish] = "Tereyağ Bıçağı";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.german] = "Buttermesser";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.italian] = "Lama imburrata";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.french] = "Couteau à beurre";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.polish] = "Nóż kuchenny";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.chinese] = "黄油刀";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.spanish] = "Cuchillo de Mantequilla";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.japanese] = "バターナイフ";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.portuguese] = "Faca de Manteiga";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.norwegian] = "Smør Kniv";
	dialogue[stringAttributes.playerSprayPaints_butterKnife][stringAttributes.title][0][languages.arabic] = "سكين الزبدة";
	#endregion
	
	#region Blurple
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.english] = "Blurple";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.turkish] = "Blurple";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.german] = "Blau-Lila";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.italian] = "Discord";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.french] = "Bleu-violet";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.polish] = "Niebiesko-Fioletowy";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.chinese] = "模糊的";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.spanish] = "Azulila";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.japanese] = "青紫";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.portuguese] = "Azoxo";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_blurple][stringAttributes.title][0][languages.arabic] = "بلوربل*";
	#endregion
	
	#region Beam
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.english] = "Beam";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.turkish] = "Işın";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.german] = "Beam";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.italian] = "Raggio";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.french] = "Rayon";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.polish] = "Napromienowany";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.chinese] = "光束";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.spanish] = "Rayo";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.japanese] = "ビーム";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.portuguese] = "Raio";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.norwegian] = "Stråle";
	dialogue[stringAttributes.playerSprayPaints_beam][stringAttributes.title][0][languages.arabic] = "شعاع";
	#endregion
	
	#region Stone
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.english] = "Stone";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.turkish] = "Taş";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.german] = "Stein";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.italian] = "Pietra";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.french] = "Rocher";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.polish] = "Kamienny";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.chinese] = "石头";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.spanish] = "Piedra";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.japanese] = "ストーン";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.portuguese] = "Pedra";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.norwegian] = "Stein";
	dialogue[stringAttributes.playerSprayPaints_stone][stringAttributes.title][0][languages.arabic] = "حجر";
	#endregion
	
	#region Mirror
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.english] = "Mirror";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.turkish] = "Ayna";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.german] = "Spiegel";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.italian] = "Specchio";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.french] = "Miroir";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.polish] = "Lustrzany";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.chinese] = "镜子";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.spanish] = "Espejo";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.japanese] = "ミラー";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.portuguese] = "Espelho";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.norwegian] = "Speil";
	dialogue[stringAttributes.playerSprayPaints_mirror][stringAttributes.title][0][languages.arabic] = "مرآة";
	#endregion
	
	#region Ninja
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.english] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.turkish] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.german] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.italian] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.french] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.polish] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.spanish] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.japanese] = "忍者";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.portuguese] = "Ninja";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_ninja][stringAttributes.title][0][languages.arabic] = "";
	#endregion
	
	#region Fire
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.english] = "Fire";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.turkish] = "Ateş";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.german] = "Feuer";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.italian] = "Fuoco";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.french] = "Feu";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.polish] = "Ognisty";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.chinese] = "火";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.spanish] = "Fuego";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.japanese] = "ファイアー";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.portuguese] = "Fogo";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.norwegian] = "Ild";
	dialogue[stringAttributes.playerSprayPaints_fire][stringAttributes.title][0][languages.arabic] = "نار";
	#endregion
	
	#region Ice
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.english] = "Ice";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.turkish] = "Buz";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.german] = "Eis";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.italian] = "Ghiaccio";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.french] = "Glace";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.polish] = "Lodowy";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.chinese] = "冰";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.spanish] = "Hielo";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.japanese] = "アイス";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.portuguese] = "Gelo";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.norwegian] = "Is";
	dialogue[stringAttributes.playerSprayPaints_ice][stringAttributes.title][0][languages.arabic] = "ثلج";
	#endregion
	
	#region Plasma
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.english] = "Plasma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.turkish] = "Plazma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.german] = "Plasma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.italian] = "Plasma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.french] = "Plasma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.polish] = "Plazmatyczny";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.chinese] = "等离子体";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.spanish] = "Plasma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.japanese] = "プラズマ";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.portuguese] = "Plasma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.norwegian] = "Plasma";
	dialogue[stringAttributes.playerSprayPaints_plasma][stringAttributes.title][0][languages.arabic] = "بلازما";
	#endregion
	
	#region Unearthly Hand
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.english] = "Unearthly Hand";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.turkish] = "Yabancı Bir El";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.german] = "Überirdische Hand";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.italian] = "Mano Spettrale";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.french] = "Tour de main surnaturel";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.polish] = "Nieziemska Ręka";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.chinese] = "不寻常的手";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.spanish] = "Mano Sobrenatural";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.japanese] = "不気味な手";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.portuguese] = "Mão Sobrenatural";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.norwegian] = "Ujordisk hånd";
	dialogue[stringAttributes.playerSprayPaints_unearthlyHand][stringAttributes.title][0][languages.arabic] = "untranslateable";
	#endregion
	
	#region So Meta
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.english] = "So Meta";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.turkish] = "Çok Meta";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.german] = "So Meta";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.italian] = "Mediocre";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.french] = "Méta";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.polish] = "Monotonny" ;
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.spanish] = "Muy Meta";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.japanese] = "ソ・メタ";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.portuguese] = "Tão Meta";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_soMeta][stringAttributes.title][0][languages.arabic] = "حقا ميتا";
	#endregion
	
	#region Gooey Blue
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.english] = "Gooey Blue";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.turkish] = "Gooey Mavisi";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.german] = "Gooey Blau";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.italian] = "Blu Gooey";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.french] = "Bleu Gooey";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.polish] = "Glutowo niebieski";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.spanish] = "Azul Gooey";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.japanese] = "グーイー ブルー";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.portuguese] = "Azul Gooey";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_gooeyBlue][stringAttributes.title][0][languages.arabic] = "ازرق قووي";
	#endregion
	
	#region Egg Brown
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.english] = "Egg Brown";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.turkish] = "Yumurta Kahvesi";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.german] = "Ei Braun";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.italian] = "Marrone Uovo";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.french] = "Marron Œuf";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.polish] = "Brązowe jajo";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.spanish] = "Marrón Huevo";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.japanese] = "エッグブラウン";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.portuguese] = "Marrom Ovo";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_eggBrown][stringAttributes.title][0][languages.arabic] = "بيض بني";
	#endregion
	
	#region Telltale Keeby
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.english] = "Telltale Keeby";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.turkish] = "Sahte Keeby";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.german] = "Verräterischer Keeby";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.italian] = "Keeby Spia";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.french] = "Keeby imposteur";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.polish] = "Sztuczny Keeby";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.chinese] = "骗子Keeby";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.spanish] = "Keeby Impostor";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.japanese] = "密告キービィ";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.portuguese] = "Keeby Denunciador";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_telltaleKeeby][stringAttributes.title][0][languages.arabic] = "تيلتيل كيربي";
	#endregion
	
	#region Royal Yarn
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.english] = "Royal Yarn";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.turkish] = "Soylu İplik";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.german] = "Königliches Garn";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.italian] = "Stoffa Reale";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.french] = "Fil royal";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.polish] = "Królewskie włókno";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.chinese] = "皇家纱线";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.spanish] = "Lana Real";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.japanese] = "糸王子";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.portuguese] = "Fio Real";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.norwegian] = "Royalt Garn";
	dialogue[stringAttributes.playerSprayPaints_royalYarn][stringAttributes.title][0][languages.arabic] = "الغزل الملكي";
	#endregion
	
	#region Smiley White
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.english] = "Smiley White";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.turkish] = "Beyaz Gülücük";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.german] = "Smiley weiß";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.italian] = "Bianco Sorridente";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.french] = "Blanc souriant";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.polish] = "Radosna biel";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.chinese] = "笑脸白";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.spanish] = "Blanco Sonriente";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.japanese] = "スマイリーホワイト";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.portuguese] = "Branco Risonho";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.norwegian] = "Smilete Hvit";
	dialogue[stringAttributes.playerSprayPaints_smileyWhite][stringAttributes.title][0][languages.arabic] = "المبتسم الابيض";
	#endregion
	
	#region Edd
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.english] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.turkish] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.german] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.italian] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.french] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.polish] = "Dziwaczny";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.chinese] = "艾德";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.spanish] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.japanese] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.portuguese] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.norwegian] = "Edd";
	dialogue[stringAttributes.playerSprayPaints_edd][stringAttributes.title][0][languages.arabic] = "ايد";
	#endregion
	
	#region Musician's Light
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.english] = "Musician's Light";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.turkish] = "Müzisyenin Işığı";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.german] = "Das Licht des Musikers";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.italian] = "Luce del Musicista";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.french] = "Lumière du musicien";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.polish] = "Światło Muzyka" ;
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.spanish] = "Luz de Músico";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.japanese] = "ミュージシャンライト";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.portuguese] = "Luz do Músico";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerSprayPaints_musiciansLight][stringAttributes.title][0][languages.arabic] = "ضوء الموسيقار";
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
	dialogue[stringAttributes.playerSprayPaints_aege][stringAttributes.description][0][languages.english] = "From 'Kirby Battle Blitz'!";
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
	dialogue[stringAttributes.playerSprayPaints_stray][stringAttributes.description][0][languages.english] = "From 'Kirby Battle Blitz'!";
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
	dialogue[stringAttributes.playerSprayPaints_glitch][stringAttributes.description][0][languages.english] = "From 'Kirby Battle Blitz'!";
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
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}