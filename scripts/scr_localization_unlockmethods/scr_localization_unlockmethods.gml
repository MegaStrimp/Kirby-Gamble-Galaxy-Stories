///@description Localization - Unlock Methods
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_UnlockMethods(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region Unlock Methods
	#region Default
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.english] = "Default";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.turkish] = "Varsayılan";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.german] = "Standard";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.italian] = "Di default";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.french] = "Par défaut";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.polish] = "Domyślny";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.chinese] = "默认";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.spanish] = "Predeterminado";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.japanese] = "デフォルト";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.portuguese] = "Padrão";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.norwegian] = "Standard";
	dialogue[stringAttributes.unlockMethods_Default][stringAttributes.description][0][languages.arabic] = "افتراضي";
	#endregion
	
	#region Beat Stage Missions
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.english] = "Beat Stage Missions";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.turkish] = "Bölüm görevlerini geç";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.german] = "Schaffe Stage Missionen";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.italian] = "Supera le missioni del livello";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.french] = "Accomplis les missions de stage";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.polish] = "Pokonaj misje poziomów";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.spanish] = "Completa misiones de niveles";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.japanese] = "ステージミッションをクリアする";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.portuguese] = "Complete Missões de Fases";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_beatStageMissions][stringAttributes.description][0][languages.arabic] = "انهي مهمات المرحلة";
	#endregion
	
	#region Tomatoo Catch 3 Stars
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.english] = "Get 3 Stars on Tomatoo Catch";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.turkish] = "Tomatoo Yakalama'da 3 Yıldız al";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.german] = "Holle 3 Sterne auf Tomaten fangen";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.italian] = "Ottieni 3 stelle su Prendi il pomodoro";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.french] = "Obtiens trois étoiles sur Attrape-Tomatee";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.polish] = "Zdobądź trzy gwiazdki na Łapacz pomidorów";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.spanish] = "Consigue 3 Estrellas en Atrapa el Tomatee";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.japanese] = "トマトキャッチで3個のスターをゲットする";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.portuguese] = "Consiga 3 Estrelas em Pega Tomatee";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_tomatooCatch3Stars][stringAttributes.description][0][languages.arabic] = "احصل على ٣ نجوم في التقاط توماتزو";
	#endregion
	
	#region Fill 10 Bestiary
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.english] = "Fill 10 entries in the Bestiary";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.turkish] = "Rehberde 10 kayıt doldur";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.german] = "Fülle 10 einträge im Bestiarium aus";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.italian] = "Riempi 10 caselle nel bestiario";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.french] = "Remplis 10 éléments du bestiaire";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.polish] = "Wypełnij 10 wpisów w bestiariuszu";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.chinese] = "在兽皮书中填写10条目";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.spanish] = "Llena 10 entradas en el Bestiario";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.japanese] = "ベスティアリーの10項目を埋める";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.portuguese] = "Preencha 10 registros no Bestiário";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_fill10Bestiary][stringAttributes.description][0][languages.arabic] = "املأ 10 ادخال في الوحشي";
	#endregion
	
	#region Fill 25 Bestiary
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.english] = "Fill 25 entries in the Bestiary";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.turkish] = "Rehberde 25 kayıt doldur";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.german] = "Fülle 25 einträge im Bestiarium aus";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.italian] = "Riempi 25 caselle nel bestiario";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.french] = "Remplis 25 éléments du bestiaire";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.polish] = "Wypełnij 25 wpisów w bestiariuszu";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.chinese] = "在兽皮书中填写25条目";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.spanish] = "Llena 25 entradas en el Bestiario";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.japanese] = "ベスティアリーの25項目を埋める";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.portuguese] = "Preencha 25 registros no Bestiário";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_fill25Bestiary][stringAttributes.description][0][languages.arabic] = "املأ 25 ادخال في الوحشي";
	#endregion
	
	#region Fill 50 Bestiary
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.english] = "Fill 50 entries in the Bestiary";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.turkish] = "Rehberde 5 kayıt doldur";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.german] = "Fülle 5 einträge im Bestiarium aus";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.italian] = "Riempi 5 caselle nel bestiario";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.french] = "Remplis 5 éléments du bestiaire";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.polish] = "Wypełnij 5 wpisów w bestiariuszu";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.chinese] = "在兽皮书中填写5条目";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.spanish] = "Llena 5 entradas en el Bestiario";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.japanese] = "ベスティアリーの5項目を埋める";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.portuguese] = "Preencha 5 registros no Bestiário";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_fill50Bestiary][stringAttributes.description][0][languages.arabic] = "املأ 5 ادخال في الوحشي";
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
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.turkish] = "Gamejolt'ta oturum aç";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.german] = "Bei Gamejolt einloggen";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.italian] = "Accedi a Gamejollt";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.french] = "Connecte-toi à Gamejolt";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.polish] = "Zaloguj się do Gamejolta";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.chinese] = "登录到Gamejolt";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.spanish] = "Inicia sesión en Gamejolt";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.japanese] = "Gamejoltにログインする";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.portuguese] = "Faça login no Gamejolt";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.norwegian] = "Logg inn på Gamejolt";
	dialogue[stringAttributes.unlockMethods_logIntoGamejolt][stringAttributes.description][0][languages.arabic] = "سجل في Gamejolt";
	#endregion
	
	#region Log Into Discord
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.english] = "Log Into Discord";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.turkish] = "Discord'ta oturum aç";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.german] = "Bei Discord einloggen";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.italian] = "Accedi a Discord";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.french] = "Connecte-toi à Discord";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.polish] = "Zaloguj się do Discorda";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.spanish] = "Inicia sesión en Discord";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.japanese] = "ディスコードにログインする";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.portuguese] = "Faça login no Discord";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.norwegian] = "Logg in på Discord";
	dialogue[stringAttributes.unlockMethods_logIntoDiscord][stringAttributes.description][0][languages.arabic] = "سجل في Discord";
	#endregion
	
	#region Beam Gold Medal
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Beam Ability Challenge";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.turkish] = "Işın Meydan Okumasında Altın Madalya al";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.german] = "Holle eine Goldmedaille bei der Beam Fähigkeitsherausforderung";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.italian] = "Ottieni una Medaglia d'Oro nella Sfida Abilità Raggio";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.french] = "Obtiens une médaille d'or au défi de Rayon";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.polish] = "Zdobądź Złoty medal na Promień wyzwaniu zdolności";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.chinese] = "在Beam能力挑战中获得金奖";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.spanish] = "Consigue una Medalla de Oro en el Desafío de Rayo";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.japanese] = "ビームアビリティチャレンジで金メダルを獲得";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.portuguese] = "Ganhe uma Medalha de Ouro no Desafio da Habilidade Raio";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.norwegian] = "Få ett gull medaljie på Stråle evner utfordringer";
	dialogue[stringAttributes.unlockMethods_beamGoldMedal][stringAttributes.description][0][languages.arabic] = "احصل على ميدالية ذهبية في تحدي القدرة الشعاع";
	#endregion
	
	#region Stone Gold Medal
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Stone Ability Challenge";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.turkish] = "Taş Meydan Okumasında Altın Madalya al";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.german] = "Holle eine Goldmedaille bei der Stein Fähigkeitsherausforderung";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.italian] = "Ottieni una Medaglia d'Oro nella Sfida Abilità Pietra";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.french] = "Obtiens une médaille d'or au défi de Rocher";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.polish] = "Zdobądź Złoty medal na Głaz wyzwaniu zdolności";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.chinese] = "在Stone能力挑战中获得金奖";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.spanish] = "Consigue una Medalla de Oro en el Desafío de Piedra";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.japanese] = "ストーンアビリティチャレンジで金メダルを獲得";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.portuguese] = "Ganhe uma Medalha de Ouro no Desafio da Habilidade Pedra";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.norwegian] = "Få ett gull medaljie på Stein evner utfordringer";
	dialogue[stringAttributes.unlockMethods_stoneGoldMedal][stringAttributes.description][0][languages.arabic] = "احصل على ميدالية ذهبية في تحدي القدرة حجر";
	#endregion
	
	#region Mirror Gold Medal
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Mirror Ability Challenge";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.turkish] = "Ayna Meydan Okumasında Altın Madalya al";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.german] = "Holle eine Goldmedaille bei der Spiegel Fähigkeitsherausforderung";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.italian] = "Ottieni una Medaglia d'Oro nella Sfida Abilità Specchio";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.french] = "Obtiens une médaille d'or au défi de Miroir";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.polish] = "Zdobądź Złoty medal na Lustro wyzwaniu zdolności";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.chinese] = "在Mirror能力挑战中获得金奖";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.spanish] = "Consigue una Medalla de Oro en el Desafío de Espejo";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.japanese] = "ミラーアビリティチャレンジで金メダルを獲得";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.portuguese] = "Ganhe uma Medalha de Ouro no Desafio da Habilidade Espelho";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.norwegian] = "Få ett gull medaljie på Speil evner utfordringer";
	dialogue[stringAttributes.unlockMethods_mirrorGoldMedal][stringAttributes.description][0][languages.arabic] = "احصل على ميدالية ذهبية في تحدي القدرة المرآة";
	#endregion
	
	#region Ninja Gold Medal
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Ninja Ability Challenge";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.turkish] = "Ninja Meydan Okumasında Altın Madalya al";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.german] = "Holle eine Goldmedaille bei der Ninja Fähigkeitsherausforderung";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.italian] = "Ottieni una Medaglia d'Oro nella Sfida Abilità Ninja";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.french] = "Obtiens une médaille d'or au défi de Ninja";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.polish] = "Zdobądź Złoty medal na Ninja wyzwaniu zdolności";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.chinese] = "在Ninja能力挑战中获得金奖";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.spanish] = "Consigue una Medalla de Oro en el Desafío de Ninja";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.japanese] = "ニンジャアビリティチャレンジで金メダルを獲得";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.portuguese] = "Ganhe uma Medalha de Ouro no Desafio da Habilidade Ninja";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.norwegian] = "Få ett gull medaljie på Ninja evner utfordringer";
	dialogue[stringAttributes.unlockMethods_ninjaGoldMedal][stringAttributes.description][0][languages.arabic] = "احصل على ميدالية ذهبية في تحدي القدرة نينجا";
	#endregion
	
	#region Fire Gold Medal
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Fire Ability Challenge";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.turkish] = "Ateş Meydan Okumasında Altın Madalya al";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.german] = "Holle eine Goldmedaille bei der Feuer Fähigkeitsherausforderung";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.italian] = "Ottieni una Medaglia d'Oro nella Sfida Abilità Fuoco";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.french] = "Obtiens une médaille d'or au défi de Feu";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.polish] = "Zdobądź Złoty medal na Ogień wyzwaniu zdolności";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.chinese] = "在Fire能力挑战中获得金奖";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.spanish] = "Consigue una Medalla de Oro en el Desafío de Fuego";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.japanese] = "ファイアアビリティチャレンジで金メダルを獲得";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.portuguese] = "Ganhe uma Medalha de Ouro no Desafio da Habilidade Fogo";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.norwegian] = "Få ett gull medaljie på Ild evner utfordringer";
	dialogue[stringAttributes.unlockMethods_fireGoldMedal][stringAttributes.description][0][languages.arabic] = "احصل على ميدالية ذهبية في تحدي القدرة نار";
	#endregion
	
	#region Ice Gold Medal
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Ice Ability Challenge";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.turkish] = "Buz Meydan Okumasında Altın Madalya al";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.german] = "Holle eine Goldmedaille bei der Eis Fähigkeitsherausforderung";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.italian] = "Ottieni una Medaglia d'Oro nella Sfida Abilità Ghiaccio";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.french] = "Obtiens une médaille d'or au défi de Glace";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.polish] = "Zdobądź Złoty medal na Lód wyzwaniu zdolności";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.chinese] = "在Ice能力挑战中获得金奖";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.spanish] = "Consigue una Medalla de Oro en el Desafío de Hielo";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.japanese] = "アイスアビリティチャレンジで金メダルを獲得";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.portuguese] = "Ganhe uma Medalha de Ouro no Desafio da Habilidade Gelo";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.norwegian] = "Få ett gull medaljie på Is evner utfordringer";
	dialogue[stringAttributes.unlockMethods_iceGoldMedal][stringAttributes.description][0][languages.arabic] = "احصل على ميدالية ذهبية في تحدي القدرة ثلج";
	#endregion
	
	#region Spark Gold Medal
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.english] = "Get a Gold Medal on Spark Ability Challenge";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.turkish] = "Elektrik Meydan Okumasında Altın Madalya al";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.german] = "Holle eine Goldmedaille bei der Plasma Fähigkeitsherausforderung";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.italian] = "Ottieni una Medaglia d'Oro nella Sfida Abilità Plasma";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.french] = "Obtiens une médaille d'or au défi de Étincelle";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.polish] = "Zdobądź Złoty medal na Iskra wyzwaniu zdolności";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.chinese] = "在Spark能力挑战中获得金奖";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.spanish] = "Consigue una Medalla de Oro en el Desafío de Chispazo";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.japanese] = "スパークアビリティチャレンジで金メダルを獲得";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.portuguese] = "Ganhe uma Medalha de Ouro no Desafio da Habilidade Faísca";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.norwegian] = "Få ett gull medaljie på Gnist evner utfordringer";
	dialogue[stringAttributes.unlockMethods_sparkGoldMedal][stringAttributes.description][0][languages.arabic] = "احصل على ميدالية ذهبية في تحدي القدرة شرارة";
	#endregion
	
	#region Unlock Gamble
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.english] = "Unlock ??????";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.turkish] = "??????'ı aç";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.german] = "Schalte ?????? frei";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.italian] = "Sblocca ??????";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.french] = "Débloque ??????";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.polish] = "Odblokuj ??????";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.chinese] = "解锁XXX"; // "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.spanish] = "Desbloquea ??????";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.japanese] = "?????をアンロックする";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.portuguese] = "Destranque ??????";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockGamble][stringAttributes.description][0][languages.arabic] = "افتح ?????";
	#endregion
	
	#region Unlock Meta Knight
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.english] = "Unlock ???? ??????";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.turkish] = "???? ??????'ı aç";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.german] = "Schalte ???? ?????? frei";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.italian] = "Sblocca ???? ??????";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.french] = "Débloque ???? ??????";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.polish] = "Odblokuj ?????? ????";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.chinese] = "解锁XXX"; // "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.spanish] = "Desbloquea ???? ??????";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.japanese] = "?????をアンロックする";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.portuguese] = "Destranque ???? ??????";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockMetaKnight][stringAttributes.description][0][languages.arabic] = "افتح ????? ????";
	#endregion
	
	#region Unlock Gooey
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.english] = "Unlock ?????";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.turkish] = "?????'i aç";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.german] = "Schalte ????? frei";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.italian] = "Sblocca ?????";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.french] = "Débloque ?????";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.polish] = "Odblokuj ?????";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.chinese] = "解锁XXX"; // "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.spanish] = "Desbloquea ?????";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.japanese] = "???をアンロックする";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.portuguese] = "Destranque ?????";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockGooey][stringAttributes.description][0][languages.arabic] = "افتح ????";
	#endregion
	
	#region Unlock Magolor
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.english] = "Unlock ???????";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.turkish] = "???????'u aç";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.german] = "Schalte ??????? frei";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.italian] = "Sblocca ???????";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.french] = "Débloque ???????";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.polish] = "Odblokuj ???????";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.chinese] = "解锁XXX"; // "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.spanish] = "Desbloquea ??????";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.japanese] = "????をアンロックする";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.portuguese] = "Destranque ???????";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockMagolor][stringAttributes.description][0][languages.arabic] = "افتح ???????";
	#endregion
	
	#region Unlock Keeby
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.english] = "Unlock ?????";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.turkish] = "?????'i aç";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.german] = "Schalte ????? frei";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.italian] = "Sblocca ?????";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.french] = "Débloque ?????";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.polish] = "Odblokuj ?????";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.chinese] = "解锁XXX"; // "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.spanish] = "Desbloquea ?????";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.japanese] = "????をアンロックする";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.portuguese] = "Destranque ?????";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockKeeby][stringAttributes.description][0][languages.arabic] = "افتح ?????";
	#endregion
	
	#region Unlock Prince Fluff
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.english] = "Unlock ?????? ?????";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.turkish] = "XXX'i aç";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.german] = "Schalte XXX frei";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.italian] = "Sblocca XXX";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.french] = "Débloque XXX";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.polish] = "Odblokuj XXX";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.chinese] = "解锁XXX"; // "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.spanish] = "Desbloquea XXX";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.japanese] = "XXXをアンロックする";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.portuguese] = "Destranque XXX";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.unlockMethods_unlockPrinceFluff][stringAttributes.description][0][languages.arabic] = "افتح XXX";
	#endregion
	
	#region Secret
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.english] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.turkish] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.german] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.italian] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.french] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.polish] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.chinese] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.spanish] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.japanese] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.portuguese] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.norwegian] = "...";
	dialogue[stringAttributes.unlockMethods_secret][stringAttributes.description][0][languages.arabic] = "...";
	#endregion
	#endregion
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}