///@description Localization - Familiars
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_Familiars(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region Familiar Titles
	#region Gamble
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.english] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.turkish] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.german] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.italian] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.french] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.polish] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.spanish] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.japanese] = "ギャンブル";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.portuguese] = "Gamble";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.title][0][languages.arabic] = "غامبل";
	#endregion
	
	#region Happy Pea
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.english] = "Happy Pea";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.turkish] = "Mutlu Bezelye";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.german] = "Glückliche Erbse";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.italian] = "Faciolo Felice";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.french] = "Joyeux Pois";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.polish] = "Szczęśliwy groszek";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.spanish] = "Guisante Sonriente";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.japanese] = "Happy Pea";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.portuguese] = "Ervilha Feliz";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.title][0][languages.arabic] = "الفاصولياء السعيدة";
	#endregion
	
	#region Epic Jar
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.english] = "Epic Jar";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.turkish] = "Destansı Kavanoz";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.german] = "Episches Glas";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.italian] = "Epic Jar";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.french] = "Jarre épique";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.polish] = "Epicki słój";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.spanish] = "Tarro Épico";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.japanese] = "Epic Jar";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.portuguese] = "Jarro Épico";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.title][0][languages.arabic] = "العلبة الاسطورية";
	#endregion
	
	#region Krackle
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.english] = "Krackle";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.turkish] = "Krackle";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.german] = "Krackel";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.italian] = "Krackle";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.french] = "Krackle";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.polish] = "Kraklik";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.spanish] = "Krackle";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.japanese] = "Krackle";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.portuguese] = "Krackle";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.title][0][languages.arabic] = "كراكل";
	#endregion
	
	#region Omega Matter
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.english] = "Omega Matter";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.turkish] = "Omega Madde";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.german] = "Omega Matter";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.italian] = "Omega Matter";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.french] = "Matière Oméga";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.polish] = "Materia ostateczna";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.spanish] = "Materia Omega";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.japanese] = "Omega Matter";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.portuguese] = "Matéria Omega";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.title][0][languages.arabic] = "مادة أوميغا";
	#endregion
	#endregion
	
	#region Familiar Description
	#region Gamble
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.english] = "Kirby's mysterious companion! He wants to help stop the coming threat.";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.turkish] = "Kirby'nin gizemli yardımcısı! Kötülükleri durdurmana yardım etmek istiyor.";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.german] = "Kirbys mysteriöser Begleiter! Er will helfen, die kommende Bedrohung zu stoppen.";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.italian] = "Il misterioso compagno di Kirby! Vuole aiutarlo a fermare una vicina minaccia...";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.french] = "Le compagnon mystérieux de Kirby ! Il veut l'aider à arrêter la menace approchante.";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.polish] = "Tajemniczy kompan Kirby'ego! chce mu pomóc żeby zatrzymać nadciągające zagrożenie!";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.spanish] = "¡El misterioso compañero de Kirby! Quiere ayudar a detener una amenaza inminente.";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.japanese] = "カービィの謎の仲間! 彼は来る脅威を止める手助けをしたい。";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.portuguese] = "O misterioso companheiro de Kirby! Ele quer ajudar a parar a ameaça que se aproxima.";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_gamble][stringAttributes.description][0][languages.arabic] = "رفيق كيربي الغامض! انه يريد ان يوقف الخطر القادم.";
	#endregion
	
	#region Happy Pea
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.english] = "A plant has come to help?! He can keep foes away from Kirby!";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.turkish] = "Bir çiçek mi?! Düşmanları Kirby'den uzak tutabilir!";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.german] = "Eine Pflanze kommt zu Hilfe?! Er kann Feinde von Kirby fernhalten!";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.italian] = "Una pianta vuole dare una mano?! Può tenere Kirby lontano dai nemici!";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.french] = "Une plante est venue en aide? Elle peut repousser les ennemis loin de Kirby !";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.polish] = "Roślina przyszła pomóc zwalczać zło? W rzeczy samej! Potrafi trzymać przeciwników z dala od postaci";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.spanish] = "¡¿Una planta ha venido a ayudar?! ¡Puede mantener a raya a los enemigos de Kirby!";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.japanese] = "植物が助けに来てくれたのか！？カービィから敵を遠ざけることができる!";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.portuguese] = "Uma planta veio ajudar?! Ele pode fazer inimigos ficarem longe de Kirby!";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_happyPea][stringAttributes.description][0][languages.arabic] = "Uma planta veio ajudar?! Ele pode fazer inimigos ficarem longe de Kirby!";
	#endregion
	
	#region Epic Jar
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.english] = "This scientist brings his inventions to help blow up nearby foes!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.turkish] = "Bu bilim adamı icatlarıyla tüm düşmanları patlatabilir!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.german] = "Dieser Wissenschaftler bringt seine Erfindungen mit, um Feinde in der Nähe in die Luft zu jagen!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.italian] = "Questo scienziato porta le sue invenzioni per neutralizzare i nemici vicini!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.french] = "Questo scienziato porta le sue invenzioni per neutralizzare i nemici vicini!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.polish] = "Ten naukowiec posiada swoje wynalazki pomagające w wysadzeniu przeciwników w powietrze!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.spanish] = "¡Este científico ha traído sus inventos para hacer volar a todo el que se acerque!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.japanese] = "この科学者は自分の発明品を持って近くの敵を吹き飛ばすのに役立つ!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.portuguese] = "Este cientista traz suas invenções para ajudar a explodir inimigos próximos!";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_epicJar][stringAttributes.description][0][languages.arabic] = "هذا العالم يجلب اختراعاته لمساعدة تفجير الاعداء من مكان قريب!";
	#endregion
	
	#region Krackle
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.english] = "This little cloud wants to help pursue the violet menace!";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.turkish] = "Ufak bir bulut mor kötülüğü püskürtmek istiyor!";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.german] = "Diese kleine Wolke will helfen, die violette Bedrohung zu verfolgen!";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.italian] = "Questa piccola nuvoletta vuole aiutare nella ricerca della minaccia viola.";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.french] = "Ce petit nuage veut pourchasser la menace violette !";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.polish] = "Ta malutka chmurka chce pomóc zniszczyć fioletowego złola!";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.spanish] = "¡Esta pequeña nube quiere ayudar en la persecución de la amenaza violeta!";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.japanese] = "この小さな雲は、スミレの脅威を追うのを手伝いたい。";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.portuguese] = "Esta pequena nuvem quer ajudar a perseguir a ameaça violeta!";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_krackle][stringAttributes.description][0][languages.arabic] = "هذه السحابة الصغيرة تريد المساعدة في ملاحقة الخطر البنفسجي!";
	#endregion
	
	#region Omega Matter
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.english] = "Hello I am Subsandwich";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.turkish] = "Merhaba ben Subsandwich.";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.german] = "Hallo ich bin Subsandwich.";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.italian] = "Ciao, sono Subsandwich.";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.french] = "Salut, je suis Subsandwich";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.polish] = "Dobry wieczór, jestem Subsandwich";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.spanish] = "Hola soy Subsandwich";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.japanese] = "こんにちは　Subsandwichだよ";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.portuguese] = "Olá eu sou o Subsandwich";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.familiars_omegaMatter][stringAttributes.description][0][languages.arabic] = "مرحبا انا سبساندويش";
	#endregion
	#endregion
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}