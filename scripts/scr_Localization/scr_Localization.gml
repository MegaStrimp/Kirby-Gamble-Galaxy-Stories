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
	dialogue[0][0][i][0] = "BUY";
	i += 1;
	dialogue[0][0][i][0] = "TALK";
	i += 1;
	dialogue[0][0][i][0] = "LEAVE";
	i += 1;
	dialogue[0][0][i][0] = "NEXT";
	i += 1;
	dialogue[0][0][i][0] = "BACK";
	i += 1;
	dialogue[0][0][i][0] = "'Why sell to us?'";
	i += 1;
	dialogue[0][0][i][0] = "'About yourself'";
	i += 1;
	dialogue[0][0][i][0] = "'The Boss'";
	i += 1;
	dialogue[0][0][i][0] = "'The Depths'";
	i += 1;
	dialogue[0][0][i][0] = "'Why are you still here?'";
	i += 1;
	dialogue[0][0][i][0] = "'Old Boss'";
	#endregion
	#endregion
	
	#region Ability Pause Descriptions
	#region Kirby
	i = 0;
	dialogue[1][0][i][0] = "Riding in on the spring breeze, it's Kirby! Inhale enemies and copy their powers. A galaxy stretches beyond your wildest dreams, so it's time to get going!";
	#endregion
	
	#region Gamble
	i = 0;
	dialogue[1][1][i][0] = "This new friend from outer space came to Popstar to ask Kirby for a hand in defeating the Cosmic Fluxbender! Gamble wields dice, cards, roulettes, and magical energy to take down the enemy. Make them fold!";
	#endregion
	
	#region Meta Knight
	i = 0;
	dialogue[1][2][i][0] = "The mysterious masked knight from Kirby's Adventure is here! He is chivalrous and always willing to fight any source of evil. All of Dream Land fears his sword!";
	#endregion
	
	i = 0;
	dialogue[1][3][i][0] = "";
	
	i = 0;
	dialogue[1][4][i][0] = "";
	
	i = 0;
	dialogue[1][5][i][0] = "";
	
	#region Magolor
	i = 0;
	dialogue[1][6][i][0] = "'Flux? I'll show you real power!' This tricky wizard hails from Kirby's Return to Dream Land. He used to be a lying cheat, but he's reformed... right? His otherworldly magic will make short work of your enemies!";
	#endregion
	
	#region Cutter
	i = 0;
	dialogue[1][7][i][0] = "Wield a sharp boomerang to slash and dash through enemies!";
	dialogue[1][7][i][1] = "Wield a sharp boomerang to slash and dash through enemies!";
	dialogue[1][7][i][2] = "Halte einen scharfen Bumerang, um Feinde zu zerschneiden und zu stürmen!";
	dialogue[1][7][i][3] = "Brandisci un’affilata lama per scattare attraverso i nemici o tagliarli!";
	dialogue[1][7][i][4] = "Utilise un boomerang aiguisé pour trancher et foncer à travers les ennemis!";
	dialogue[1][7][i][5] = "Władaj ostrym jak żyletka bumerangiem żeby tnąć i przecinać się przez przeszkody!";
	dialogue[1][7][i][6] = "挥动一个锋利的回旋镖砍和冲过敌人!";
	dialogue[1][7][i][7] = "¡Porta un afilado bumerán para cortar y atravesar a tus enemigos!";
	dialogue[1][7][i][8] = "鋭いブーメランを振り回して、敵を切り裂いたり、ダッシュしたりすることがで きます!";
	dialogue[1][7][i][9] = "Bruk en skarp boomerang for å kutte og stikke gjennom fiender!";
	dialogue[1][7][i][10] = "Empunhe um bumerangue afiado para cortar e atravessar os inimigos!";
	dialogue[1][7][i][11] = "إستخدم بوميرانج حاد لتقطيع الأعداء والإندفاع بينهم";
	#endregion
	
	#region Beam
	i = 0;
	dialogue[1][8][i][0] = "Conjure up rays of electricity to flail around. Charge up to shoot from a distance!";
	dialogue[1][8][i][1] = "Conjure up rays of electricity to flail around. Charge up to shoot from a distance!";
	dialogue[1][8][i][2] = "Beschwöre Elektrizitätsstrahlen, um herumzuschleudern. Aufladen, um aus der Ferne zu schießen!";
	dialogue[1][8][i][3] = "Fai apparire raggi di elettricità! Carica per lanciarli da lontano!";
	dialogue[1][8][i][4] = "Projette des rayons d’énergie aux alentours, ou lance une attaque chargée à distance!";
	dialogue[1][8][i][5] = "Wyczaruj elektryczne promienie żeby trzepać nimi dookoła. załaduj atak żeby wystrzelić z daleka!";
	dialogue[1][8][i][6] = "召唤出一束束电来四处链枷. 充电射击从远处！";
	dialogue[1][8][i][7] = "¡Crea un rayo de electricidad y agítalo! ¡Cárgalo para disparar a distancia!";
	dialogue[1][8][i][8] = "電気の光線を出します。チャージすると遠くから飛ばすことができます!";
	dialogue[1][8][i][9] = "Tryll frem stråler av elektrisitet for å svinge rundt. Lad opp for å skyte Fra avstand!";
	dialogue[1][8][i][10] = "Invoque raios de eletricidade e agite-os por aí. Carregue para atirar à distância!";
	dialogue[1][8][i][11] = "استحضر اشعة كهربائية لتدور حولها، اشحن الاشعة لتطلقها من مسافة بعيدة!";
	#endregion
	
	#region Mystic Beam
	i = 0;
	dialogue[1][9][i][0] = "The power of flux has turned our Beam into Mystic Beam! The beam shield doubles as an attack!";
	dialogue[1][9][i][1] = "The power of flux has turned our Beam into Mystic Beam! The beam shield doubles as an attack!";
	dialogue[1][9][i][2] = "Die Kraft des Flusses hat unseren Strahl in einen mystischen Strahl verwandelt! Der Strahlschild dient auch als Angriff!";
	dialogue[1][9][i][3] = "Il potere del flusso mistico ha trasformato la tua abilità Raggio nella nuova abilità Raggio Mistico! Lo scudo di raggio funziona anche come attacco!";
	dialogue[1][9][i][4] = " Le pouvoir du flux a transformé le Rayon en Rayon Mystique! Le bouclier peut être utilisé comme attaque!";
	dialogue[1][9][i][5] = "Poprzez moce Flux'a zmieniło nasz promień w Promień Mityczny! Tarcza z Promienia podwaja się jako atak!";
	dialogue[1][9][i][6] = "”Flux“的力量把我们的光束变成了神秘的光束! 光束护盾兼作攻击！";
	dialogue[1][9][i][7] = "¡El poder del flux ha transformado tu Rayo en un Rayo Místico! ¡La barrera eléctrica también sirve de ataque!";
	dialogue[1][9][i][8] = "フラックスの力で「ビーム」が「ミスティックビーム」に!? ビームシールドは攻撃にもなります!";
	dialogue[1][9][i][9] = "O poder do fluxo transformou o nosso Raio no Raio Místico! O escudo de raio também funciona como um ataque!";
	dialogue[1][9][i][10] = "Fluxens makten har gjort vår stråle til Mystic Beam! Bjelkeskjoldet dobler som et angrep!";
	dialogue[1][9][i][11] = "قوة التدفق حولت الشعاع إلى شعاع روحاني! الشعاع هذا يستخدم كدرع ايضا!";
	#endregion
	
	#region Stone
	i = 0;
	dialogue[1][10][i][0] = "Turn into a rock and become impenetrable! What are these strange statues?";
	dialogue[1][10][i][1] = "Turn into a rock and become impenetrable! What are these strange statues?";
	dialogue[1][10][i][2] = "Verwandle dich in einen Felsen und werde undurchdringlich! Was sind das für seltsame Statuen?";
	dialogue[1][10][i][3] = "Trasformati in una roccia per diventare impenetrabile! Un momento... Cosa sono queste strane statue?";
	dialogue[1][10][i][4] = "Transforme-toi en pierre et deviens impénétrable! Mais quelles sont ces étranges statues?";
	dialogue[1][10][i][5] = "Zmień się w głaz i stań się raktycznie nietykalny! Czym są te dziwaczne posągi?";
	dialogue[1][10][i][6] = "变成岩石，变得坚不可摧！ 这些奇怪的是什么雕像？";
	dialogue[1][10][i][7] = "¡Conviértete en una roca impenetrable! ¿Qué son estas estatuas tan raras?";
	dialogue[1][10][i][8] = "岩になって不可侵になります! この不思議な像は何でしょうか?";
	dialogue[1][10][i][9] = "Transforme-se em uma pedra e torne-se impenetrável! Mas o que são essas estátuas estranhas?";
	dialogue[1][10][i][10] = "Slå om til en stein og bli ugjennomtrengelig! Hva er disse merkelige statuer?";
	dialogue[1][10][i][11] = "تحول لحجرة وصر منيعا! ما هذه التماثيل الغريبة؟";
	#endregion
	
	#region UFO
	i = 0;
	dialogue[1][11][i][0] = "Transform into an alien ship and blast enemies with lasers, pew pew!";
	dialogue[1][11][i][1] = "Transform into an alien ship and blast enemies with lasers, pew pew!";
	dialogue[1][11][i][2] = "Verwandle dich in ein außerirdisches Schiff und vernichte Feinde mit Lasern, pew pew!";
	dialogue[1][11][i][3] = "Trasformati in un veicolo alieno e spara ai nemici con un potente laser, pew pew!";
	dialogue[1][11][i][4] = "Transforme-toi en vaisseau alien et détruis tes ennemis avec des lasers, Piou Piou!";
	dialogue[1][11][i][5] = "Zamień się w statek kosmiczny i rozstrzelaj złe istoty laserami, 'giń, giń, GiŃ!'";
	dialogue[1][11][i][6] = "变身成一艘外星飞船，用激光轰击敌人，皮尤皮尤！";
	dialogue[1][11][i][7] = "¡Transfórmate en una nave alienígena y dispara a tus enemigos! ¡Piu, piu!";
	dialogue[1][11][i][8] = "エイリアンの船に変身してレーザーでピューピュー敵を撃ちまくり!";
	dialogue[1][11][i][9] = "Transforme-se em uma nave alienígena e atire em inimigos com lasers, pew pew!";
	dialogue[1][11][i][10] = "Gjør om til et fremmed skip og spreng fiender med lasere, pew pew!";
	dialogue[1][11][i][11] = "تحول لسفينة فضائية واطلق على الأعداء بالليزر، بيو بيو!";
	#endregion
	
	#region Mirror
	i = 0;
	dialogue[1][12][i][0] = "Use the power of reflection to send enemy attacks right back at them!";
	dialogue[1][12][i][1] = "Use the power of reflection to send enemy attacks right back at them!";
	dialogue[1][12][i][2] = "Nutze die Kraft der Reflexion, um feindliche Angriffe direkt auf sie zurückzusenden!";
	dialogue[1][12][i][3] = "Usa il potere del riflesso per rispedire i nemici da dove sono venuti!";
	dialogue[1][12][i][4] = "Utilise le pouvoir des reflets et renvoie leurs attaques aux ennemis!";
	dialogue[1][12][i][5] = "Użyj mocy odzwierciedleń żeby oddać pociski przeciwników z powrotem do nadawcy!";
	dialogue[1][12][i][6] = "使用反射的力量将敌人的攻击直接送回 他们！";
	dialogue[1][12][i][7] = "¡Usa el poder de los reflejos para devolver los ataques a tus enemigos!";
	dialogue[1][12][i][8] = "反射の力を使って、敵の攻撃を跳ね返します!";
	dialogue[1][12][i][9] = "Use o poder de reflexos para mandar ataques de inimigos de volta a eles!";
	dialogue[1][12][i][10] = "Bruk refleksjonskraften til å sende fiendtlige angrep rett tilbake til dem!";
	dialogue[1][12][i][11] = "استخدم قوة الانعكاس لتعيد ضربات الأعداء عليهم";
	#endregion
	
	#region Ninja
	i = 0;
	dialogue[1][13][i][0] = "Become an assassin of shadows and strike sneakily!";
	dialogue[1][13][i][1] = "Become an assassin of shadows and strike sneakily!";
	dialogue[1][13][i][2] = "Werde ein Attentäter und schlage hinterhältig zu!";
	dialogue[1][13][i][3] = "Diventa un assassino di ombre e colpisci furtivamente!";
	dialogue[1][13][i][4] = "Deviens un assassin des ombres et frappe en toute discrétion!";
	dialogue[1][13][i][5] = "Stań się zabójcą cieni i uderzaj bez zauważenia!";
	dialogue[1][13][i][6] = "成为阴影的刺客和偷偷摸摸地罢工！";
	dialogue[1][13][i][7] = "¡Ataca rápida y sigilosamente como un asesino de las sombras!";
	dialogue[1][13][i][8] = "影の暗殺者となって、こっそりと攻撃を仕掛けよう。";
	dialogue[1][13][i][9] = "Torne-se um assassino das sombras e ataque sorrateiramente!";
	dialogue[1][13][i][10] = "Bli en leiemorder og slå lurt!";
	dialogue[1][13][i][11] = "صر من مقاتلي الظلال واهجم بخفة";
	#endregion
	
	#region Bomb
	i = 0;
	dialogue[1][14][i][0] = "Grab a bomb and throw it, but don't hold on too long!";
	dialogue[1][14][i][1] = "Grab a bomb and throw it, but don't hold on too long!";
	dialogue[1][14][i][2] = "Schnapp dir eine Bombe und wirf sie, aber halte nicht zu lange durch!";
	dialogue[1][14][i][3] = "Afferra e lancia una granata, ma attento a non tenerla in mano per troppo tempo!";
	dialogue[1][14][i][4] = "Prends une bombe et lance-la, mais ne la tiens pas trop longtemps!";
	dialogue[1][14][i][5] = "Złap bombę w ręce i wyrzuć nią ale uważaj, nie trzymaj ją za długo!";
	dialogue[1][14][i][6] = "抓住一个炸弹扔它，但是不要坚持太久！";
	dialogue[1][14][i][7] = "¡Agarra una bomba y lánzala! ¡Pero no la sujetes por demasiado tiempo!";
	dialogue[1][14][i][8] = "爆弾を掴んで投げて攻撃しますが、あまり長く持たないように!";
	dialogue[1][14][i][9] = "Pegue uma bomba e lance ela, mas não espere por muito tempo!";
	dialogue[1][14][i][10] = "Ta en bombe og kaste det, men ikke holde det for lenge!";
	dialogue[1][14][i][11] = "امسك قنبلة وارمها لتنفجر، لكن لا تمسكها طويلا";
	#endregion
	
	#region Fire
	i = 0;
	dialogue[1][15][i][0] = "Burn up the competition with powerful flames, yowch!";
	dialogue[1][15][i][1] = "Burn up the competition with powerful flames, yowch!";
	dialogue[1][15][i][2] = "Verbrenne die Konkurrenz mit mächtigen Flammen, autsch!";
	dialogue[1][15][i][3] = "Incenerisci gli avversari con potenti fiamme, yowch!";
	dialogue[1][15][i][4] = "Brûle la compétition avec de puissantes flammes, outch!";
	dialogue[1][15][i][5] = "Spal swoją konkurencje płomieniami gorącymi jak słońce, parzy!";
	dialogue[1][15][i][6] = "燃烧起来的竞争与强大的火焰，哎哟！";
	dialogue[1][15][i][7] = "¡Quema a la competencia con tus poderosas llamas! ¡Auch!";
	dialogue[1][15][i][8] = "強力な炎で相手を焼き尽くしていくぞ。ヤッホーイ!";
	dialogue[1][15][i][9] = "Queime a competição com labaredas poderosas, aii!";
	dialogue[1][15][i][10] = "Brenn opp konkurransen med kraftige flammer, jøss!";
	dialogue[1][15][i][11] = "احرق اعدائك بهذه النيران الملتهبة! ياوتش";
	#endregion
	
	#region Mystic Fire
	i = 0;
	dialogue[1][16][i][0] = "The power of flux has made your Fire stronger! No need to aim anymore, so burn your foes to the ground!";
	dialogue[1][16][i][1] = "The power of flux has made your Fire stronger! No need to aim anymore, so burn your foes to the ground!";
	dialogue[1][16][i][2] = "Die Kraft des Flusses hat dein Feuer stärker gemacht! Man müss nicht mehr zielen, also verbrenne die Feinde zu Boden!";
	dialogue[1][16][i][3] = "Il potere del flusso mistico ha potenziato la tua abilità Fuoco! Non serve più puntare, quindi incenerisci i tuoi avversari senza fermarti!";
	dialogue[1][16][i][4] = "Le pouvoir du flux a rendu ton Feu plus puissant! Plus besoin de viser, réduis tes ennemis en cendres!";
	dialogue[1][16][i][5] = "Moce Flux'a sprawiły że twój dobrze znany ogień jest teraz znacznie silniejszy! Nie trzeba teraz celować, więc wypal swoich przeciwników dopóki będzie tylko proch na ziemi!";
	dialogue[1][16][i][6] = "”Flux“的力量使我们的火势更强! 不需要瞄准了，所以烧你的敌人在地上！";
	dialogue[1][16][i][7] = "¡El poder del flux ha fortalecido tu Fuego! ¡Ya no necesitas apuntar, así que reduce a tus enemigos a cenizas!";
	dialogue[1][16][i][8] = "フラックスの力でFireが強くなった！？狙いをつける必要なし、敵を焼き尽くしまくれ!";
	dialogue[1][16][i][9] = "O poder do fluxo fez o seu Fogo ficar mais forte! Não precisa mais mirar, então bote seus inimigos pra queimar!";
	dialogue[1][16][i][10] = "Fluxens makten har gjort brannen vår sterkere! Ikke nødvendig sikte lenger, så brenn fiendene dine til bakken!";
	dialogue[1][16][i][11] = "قوة التدفق جعلت النيران أقوى! لا حاجة إلى التصويب بعد الان، فاحرق اعدائك الى الارض!";
	#endregion
	
	#region Ice
	i = 0;
	dialogue[1][17][i][0] = "Skate around and freeze foes with your cold breath!";
	dialogue[1][17][i][1] = "Skate around and freeze foes with your cold breath!";
	dialogue[1][17][i][2] = "Schlittschuh herum und friere Feinde mit deinem kalten Atem ein!";
	dialogue[1][17][i][3] = "Pattina e congela i nemici con il tuo soffio di ghiaccio!";
	dialogue[1][17][i][4] = "Patine et gèle tes ennemis avec ton souffle glacé!";
	dialogue[1][17][i][5] = "Ślizgaj się i zamarzaj twoje przeszkody swoim lodowatym oddechem i nie tylko!";
	dialogue[1][17][i][6] = "溜冰,用你冰冷的呼吸冻住敌人!";
	dialogue[1][17][i][7] = "¡Patina libremente y congela a todos con tu aliento helado!";
	dialogue[1][17][i][8] = "スケートしながら冷たい息で敵を凍らせていこう。";
	dialogue[1][17][i][9] = "Patine por aí e congele adversários com seu sopro congelante!";
	dialogue[1][17][i][10] = "Skøyter rundt og frys fiender med ditt kalde pust!";
	dialogue[1][17][i][11] = "Skøyter rundt og frys fiender med ditt kalde pust!";
	#endregion
	
	#region Spark
	i = 0;
	dialogue[1][18][i][0] = "Mash the directional keys to charge up and zap enemies!";
	dialogue[1][18][i][1] = "Mash the directional keys to charge up and zap enemies!";
	dialogue[1][18][i][2] = "Drücke die Richtungstasten, um aufzuladen und die Feinde zu zappen!";
	dialogue[1][18][i][3] = "Schiaccia i tasti direzionali per caricare ed elettrizzare i nemici!";
	dialogue[1][18][i][4] = "Appuies sur différentes directions pour charger de l’électricité et foudroie les ennemis.";
	dialogue[1][18][i][5] = "Roztrzep się na lewo i prawo żeby naelektryzować i zastrzel twoich przeciwników czystą energią elektryczną.";
	dialogue[1][18][i][6] = "捣碎方向键，充电和电死敌人！";
	dialogue[1][18][i][7] = "¡Machaca las flechas direccionales para cargarte y electrocutar enemigos!";
	dialogue[1][18][i][8] = "方向キーを押しまくってチャージし、敵を倒していこう。";
	dialogue[1][18][i][9] = "Aperte rapidamente as setas direcionais para carregar eletricidade e eletrocutar inimigos";
	dialogue[1][18][i][10] = "Mash retningstastene for å lade opp og zappe fiender";
	dialogue[1][18][i][11] = "Mash retningstastene for å lade opp og zappe fiender";
	#endregion
	
	#region Yoyo
	i = 0;
	dialogue[1][19][i][0] = "Slide into action and wave a yoyo with stylish power!";
	dialogue[1][19][i][1] = "Slide into action and wave a yoyo with stylish power!";
	dialogue[1][19][i][2] = "Rutsche in Aktion und winke ein Jo-Jo mit stylischer Kraft!";
	dialogue[1][19][i][3] = "Scivola nell’azione servendoti di uno stiloso Yo-Yo con poteri incredibili!";
	dialogue[1][19][i][4] = "Glisse dans l’action et lance un puissant yoyo avec style!";
	dialogue[1][19][i][5] = "Wsuń się w akcje i rozmachuj swoim jojo z modną mocą!";
	dialogue[1][19][i][6] = "滑入行动和挥动一个”Yoyo”与时尚的力量!";
	dialogue[1][19][i][7] = "¡Deslízate a la acción con tu yoyó derrochando poder y estilo!";
	dialogue[1][19][i][8] = "アクションをスライドさせて、スタイリッシュなパワーでヨーヨーを振ることができます。";
	dialogue[1][19][i][9] = "Entre em ação e agite um ioiô com poder estiloso!";
	dialogue[1][19][i][10] = "Dra til handling og vink en yoyo med stilig kraft!";
	dialogue[1][19][i][11] = "Dra til handling og vink en yoyo med stilig kraft!";
	#endregion
	
	#region Wheel
	i = 0;
	dialogue[1][20][i][0] = "Speed through crowds of enemies all while being nearly invincible, vroom vroom!";
	dialogue[1][20][i][1] = "Speed through crowds of enemies all while being nearly invincible, vroom vroom!";
	dialogue[1][20][i][2] = "Rase durch die Scharen von Feinden, während du fast unbesiegbar bist, vroom vroom!";
	dialogue[1][20][i][3] = "Corri su molti nemici mentre sei quasi invincibile, vroom vroom!";
	dialogue[1][20][i][4] = "Fonce à travers tes ennemis en étant presque invincible, vroum-vroum!";
	dialogue[1][20][i][5] = "Przejeżdżaj tłumy Przeciwników podczas gdy jesteś prawie nietykalny, brum brum!";
	dialogue[1][20][i][6] = "速度通过敌人的人群，而几乎是无敌的, Vroom!";
	dialogue[1][20][i][7] = "¡Atropella hordas de enemigos a toda velocidad mientras eres casi invencible! ¡Brrum brrum!";
	dialogue[1][20][i][8] = "無敵の状態で敵の群れをスピードで切り抜けていこう。ブルーンブルーーン!!";
	dialogue[1][20][i][9] = "Acelere por multidões de inimigos ao mesmo tempo que é quase invencível, vrum vrum!";
	dialogue[1][20][i][10] = "Kjør gjennom mengder fiender mens du er nesten uovervinnelig, vroom vroom!";
	dialogue[1][20][i][11] = "Kjør gjennom mengder fiender mens du er nesten uovervinnelig, vroom vroom!";
	#endregion
	
	#region Artist
	i = 0;
	dialogue[1][21][i][0] = "Slap opponents with your brush or paint up an army of drawings to fight alongside you!";
	dialogue[1][21][i][1] = "Slap opponents with your brush or paint up an army of drawings to fight alongside you!";
	dialogue[1][21][i][2] = "Schlage Gegner mit deinem Pinsel oder male eine Armee von Zeichnungen auf, um an deiner Seite zu kämpfen!";
	dialogue[1][21][i][3] = "Schiaffeggia i nemici con il tuo pennello o dipingi degli alleati per farli lottare al tuo fianco!";
	dialogue[1][21][i][4] = "- Frappe tes ennemis avec ton pinceau ou peins une armée de dessins qui combattra à tes côtés!";
	dialogue[1][21][i][5] = "Uderzaj swoich przeciwników twoim magicznym pędzlem lub namaluj armię rysunków żeby walczyli po twojej stronie!";
	dialogue[1][21][i][6] = "用你的画笔拍打对手，或者画出一大堆图画和你并肩作战！";
	dialogue[1][21][i][7] = "¡Golpea a tus oponentes con tu pincel o pinta un ejército de dibujos que lucharán a tu lado!";
	dialogue[1][21][i][8] = "ブラシで相手を叩いたり絵の軍隊を作って一緒に戦ったり......";
	dialogue[1][21][i][9] = "Bata em inimigos com seu pincel ou pinte um exército de desenhos para lutar com você!";
	dialogue[1][21][i][10] = "Slå motstandere med penselen din eller mal opp en hær av tegninger for å kjempe sammen med deg!";
	dialogue[1][21][i][11] = "Slå motstandere med penselen din eller mal opp en hær av tegninger for å kjempe sammen med deg!";
	#endregion
	
	#region Fighter
	i = 0;
	dialogue[1][22][i][0] = "Turn into a master martial artist and KO your opponents. Ka-pow!";
	dialogue[1][22][i][1] = "Turn into a master martial artist and KO your opponents. Ka-pow!";
	dialogue[1][22][i][2] = "Verwandle dich in einen Meisterkampfkünstler und KO deine Gegner. Ka-pow!";
	dialogue[1][22][i][3] = "Diventa un maestro di arti marziali e metti KO i nemici! Ka-pow!";
	dialogue[1][22][i][4] = "Deviens un maître des arts martiaux et mets tes adversaires à terre!";
	dialogue[1][22][i][5] = "Zmień się w mistrza sztuk walki i zadaj K.O twoim przeciwnikom. A-masz!";
	dialogue[1][22][i][6] = "变成一个武术大师，KO你的对手。 Kapow！";
	dialogue[1][22][i][7] = "¡Conviértete en un maestro de artes marciales y noquea a tus oponentes! ¡Kapow!";
	dialogue[1][22][i][8] = "武道の達人になって相手をKOしよう!! ka-POW!";
	dialogue[1][22][i][9] = "Torne-se um mestre das artes marciais e nocauteie seus oponentes. Ka-pow!";
	dialogue[1][22][i][10] = "Gjør deg til en kampsportmester og KO motstanderne dine. ka-pow!";
	#endregion
	
	#region Suplex
	i = 0;
	dialogue[1][23][i][0] = "Channel the wrestler spirit by grappling enemies and throwing them around!";
	dialogue[1][23][i][1] = "Channel the wrestler spirit by grappling enemies and throwing them around!";
	dialogue[1][23][i][2] = "Kanalisieren Sie den Wrestler-Geist, indem Sie Feinde festhalten und sie herumschleudern!";
	dialogue[1][23][i][3] = "Ottieni lo spirito di un wrestler prendendo e lanciando via i nemici!";
	dialogue[1][23][i][4] = "Manifeste l’esprit du lutteur en saisissant et lançant les ennemis!";
	dialogue[1][23][i][5] = "Wciel w sobie Duszę prawdziwego zapaśnika poprzez łapanie przeciwników i przerzucanie nimi na różne strony!";
	dialogue[1][23][i][6] = "通过抓住敌人和投掷来引导摔跤手的精神他们周围!";
	dialogue[1][23][i][7] = "¡Canaliza tu espíritu de luchador libre agarrando a tus enemigos y lanzándolos por ahí!";
	dialogue[1][23][i][8] = "プロレスラーの精神を受け継いで敵を掴んで投げ飛ばせ!";
	dialogue[1][23][i][9] = "Canalize o espírito da luta-livre agarrando inimigos e jogando eles por aí!";
	dialogue[1][23][i][10] = "Kanal bryterånden ved å gripe fiender og kaste dem rundt!";
	#endregion
	
	#region Wing
	i = 0;
	dialogue[1][24][i][0] = "Fly through the skies with grace. dash into enemies or send volleys of feathers at them!";
	dialogue[1][24][i][1] = "Fly through the skies with grace. dash into enemies or send volleys of feathers at them!";
	dialogue[1][24][i][2] = "Fliegen Sie mit Anmut durch den Himmel. stürze dich in Feinde oder schicke Federsalven auf sie!";
	dialogue[1][24][i][3] = "Solca i cieli con grazia, scatta sui nemici o colpiscili al volo!";
	dialogue[1][24][i][4] = "Vole dans les airs avec grâce. Fonce sur les ennemis ou lance une volée de plumes vers eux!";
	dialogue[1][24][i][5] = "Wznieś się swobodnie ku powietrzu i przebijaj się przez przeciwników lub wyrzucaj salwy piór ostrych jak żyletka prosto na żywe przeszkody!";
	dialogue[1][24][i][6] = "优雅地飞过天空. 冲向敌人或向他们发射羽毛！";
	dialogue[1][24][i][7] = "¡Vuela por los cielos con elegancia! ¡Embiste a tus enemigos o lánzales ráfagas de plumas!";
	dialogue[1][24][i][8] = "空を優雅に飛んで、敵に向かってダッシュしたり、羽根を飛ばしたりしていこう!";
	dialogue[1][24][i][9] = "Voe pelos céus graciosamente. Acelere por inimigos ou mande rajadas de penas contra eles!";
	dialogue[1][24][i][10] = "Fly gjennom himmelen med nåde. skyte inn i fiender eller sende volleys av fjær på dem!";
	#endregion
	
	#region Jet
	i = 0;
	dialogue[1][25][i][0] = "Charge the engine to zoom forward at supersonic speeds!";
	dialogue[1][25][i][1] = "Charge the engine to zoom forward at supersonic speeds!";
	dialogue[1][25][i][2] = "Lade den Motor auf, um mit Überschallgeschwindigkeit vorwärts zu sausen!";
	dialogue[1][25][i][3] = "Accendi i motori e viaggia a velocità supersoniche!";
	dialogue[1][25][i][4] = "Charge le moteur pour t’envoler en avant à toute vitesse!";
	dialogue[1][25][i][5] = "Załaduj silnik i przeleć w te i nazad w szybkości dźwięku!";
	dialogue[1][25][i][6] = "为发动机充电，以超音速前进！";
	dialogue[1][25][i][7] = "¡Carga el motor y lánzate volando a velocidades supersónicas!";
	dialogue[1][25][i][8] = "エンジンをチャージして、超音速で突き進め!!";
	dialogue[1][25][i][9] = "Carregue o motor para avançar em velocidades supersônicas!";
	dialogue[1][25][i][10] = "Lad motoren for å zoome fremover med supersoniske hastigheter!";
	#endregion
	
	#region Sword
	i = 0;
	dialogue[1][26][i][0] = "Wield a sharp blade to slice and stab all sorts of things!";
	dialogue[1][26][i][1] = "Wield a sharp blade to slice and stab all sorts of things!";
	dialogue[1][26][i][2] = "Schwinge eine scharfe Klinge, um alle möglichen Dinge zu zerschneiden und zu erstechen!";
	dialogue[1][26][i][3] = "Brandisci una lama tagliente e taglia qualsiasi cosa!";
	dialogue[1][26][i][4] = "Brandis une lame tranchante pour couper et percertoutes sortes de choses!";
	dialogue[1][26][i][5] = "Władaj ostrzem i rozcinaj przeciwników jak nóż przez masło!";
	dialogue[1][26][i][6] = "挥舞着锋利的刀片来切割和刺伤各种各样的东西！";
	dialogue[1][26][i][7] = "¡Empuña una espada afilada para cortar y atravesar todo tipo de objetos y enemigos!";
	dialogue[1][26][i][8] = "鋭利な刃物を振り回して、いろいろなものを切ったり刺したりしてみましょう。";
	dialogue[1][26][i][9] = "Empunhe uma lâmina afiada para fatiar e perfurar todo tipo de coisa!";
	dialogue[1][26][i][10] = "Bruk et skarpt blad for å skjære og stikke alle slags ting!";
	#endregion
	
	#region Parasol
	i = 0;
	dialogue[1][27][i][0] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[1][27][i][1] = "Schütze dich vor herabfallenden Gegenständen, schlage Feinde und falle sogar langsam!";
	dialogue[1][27][i][2] = "Protect yourself from falling objects, whack enemies, and even fall slowly!";
	dialogue[1][27][i][3] = "Puoi proteggerti dagli oggetti cadenti, colpire nemici e perfino cadere lentamente!";
	dialogue[1][27][i][4] = "Protège-toi des objets tombants, claque les ennemis, et ralentis les chutes!";
	dialogue[1][27][i][5] = "Broń się przed spadającymi pociskami, uderzaj przeciwników oraz spadaj powoli, jak piórko!";
	dialogue[1][27][i][6] = "保护自己免受坠落物体，重击敌人, 甚至撑着伞慢慢落下！";
	dialogue[1][27][i][7] = "¡Protégete de objetos que caen, golpea enemigos e incluso controla tu velocidad de caída!";
	dialogue[1][27][i][8] = "落下物から身を守ったり、敵を叩いたり、さらにはゆっくりと落下することもできます。";
	dialogue[1][27][i][9] = "Proteja-se de objetos em queda, bata em inimigos e até mesmo caia lentamente com um guarda-chuva!";
	dialogue[1][27][i][10] = "Beskytt deg mot fallende gjenstander, slå fiender og til og med fall sakte med en paraply!";
	#endregion
	
	#region Hammer
	i = 0;
	dialogue[1][28][i][0] = "Smash enemies with extremely powerful swings of a hammer, ouch!";
	dialogue[1][28][i][1] = "Smash enemies with extremely powerful swings of a hammer, ouch!";
	dialogue[1][28][i][2] = "Zerschmettere Feinde mit extrem starken Hammerschlägen, autsch!";
	dialogue[1][28][i][3] = "Schiaccia i nemici agitando un martello estremamente forte, ouch!";
	dialogue[1][28][i][4] = "Fracasse les ennemis en secouant violemment un marteau, aïe!";
	dialogue[1][28][i][5] = "Zgnieć przeciwników z ekstremalnie silnymi trzepnięciami młota, auć!";
	dialogue[1][28][i][6] = "用极其强大的锤子击碎敌人, Ouch!";
	dialogue[1][28][i][7] = "¡Aplasta enemigos con los poderosos golpes de tu martillo! ¡Ouch!";
	dialogue[1][28][i][8] = "ハンマーの超強力なスイングで敵を粉砕しよう。いてっ";
	dialogue[1][28][i][9] = "Esmague inimigos com golpes extremamente poderosos de um martelo, ai!";
	dialogue[1][28][i][10] = "Knus fiender med ekstremt kraftige svingninger av en hammer, au!";
	#endregion
	
	#region Bell
	i = 0;
	dialogue[1][29][i][0] = "Ring ring! dual wield these loud instruments to compose a destructive song!";
	dialogue[1][29][i][1] = "Ring ring! dual wield these loud instruments to compose a destructive song!";
	dialogue[1][29][i][2] = "Ring ring! Benutze diese lauten Instrumente, um einen destruktiven Song zu komponieren!";
	dialogue[1][29][i][3] = "Ring ring! Brandisci questi due strumenti rumorosi per comporre una canzone con effetti devastanti!";
	dialogue[1][29][i][4] = "Ding-dong! Manie ces deux bruyants instruments pour composer une chanson destructrice!";
	dialogue[1][29][i][5] = "Dzyń dzyń! Władaj dwuręcznie głośnymi dzwonkami żeby utworzyć twoją własną ode do zniszczenia!";
	dialogue[1][29][i][6] = "Ring Ring！ 双挥这些响亮的乐器组成一个破坏性的歌曲！";
	dialogue[1][29][i][7] = "¡Ding Dong! ¡Lleva a dos manos estos ruidosos instrumentos para componer una melodía destructiva!";
	dialogue[1][29][i][8] = "この大音量の楽器を二つ振り回して、破壊的な曲を作っていこう!!";
	dialogue[1][29][i][9] = "Blim blim! Empunhe esses dois instrumentos barulhentos para compor uma música destrutiva!";
	dialogue[1][29][i][10] = "Ring ring! doble med disse høye instrumentene for å komponere a ødeleggende sang!";
	#endregion
	
	#region Water
	i = 0;
	dialogue[1][30][i][0] = "Bend water to your will to power wash enemies. surfs up!";
	dialogue[1][30][i][1] = "Bend water to your will to power wash enemies. surfs up!";
	dialogue[1][30][i][2] = "Beugen Sie Wasser nach Ihrem Willen, um Feinde zu waschen. surft auf!";
	dialogue[1][30][i][3] = "Sfrutta la potenza dell’acqua per far fuori i nemici… O surfare!";
	dialogue[1][30][i][4] = "Contrôle l’eau à ta guise pour emporter les ennemis. Surfez!";
	dialogue[1][30][i][5] = "Ukształtuj wode poprzez twoją wolną wole i zrób ostateczną kąpiel twoim wrogom. Uwaga, będzie mokro!";
	dialogue[1][30][i][6] = "弯曲水你的意志，权力洗敌人。 冲浪起来！";
	dialogue[1][30][i][7] = "¡Controla el agua a tu antojo para lavar a tus enemigos y surfear sobre ellos!";
	dialogue[1][30][i][8] = "水を自在に操り、敵にパワーウォッシュをかけていこう!いい波がきてるぜ!";
	dialogue[1][30][i][9] = "Dobre a água à sua vontade para lavar inimigos. Tá dando onda!";
	dialogue[1][30][i][10] = "Bøy vann til din vilje for å vaske fiender. surfer opp!";
	#endregion
	
	#region Sleep
	i = 0;
	dialogue[1][31][i][0] =  "Yawn... 5 more minutes... zzzzzzzzzzz...";
	dialogue[1][31][i][1] =  "Yawn... 5 more minutes... zzzzzzzzzzz...";
	dialogue[1][31][i][2] =  "Gähn... Noch 5 Minuten... zzzzzzzzzzz...";
	dialogue[1][31][i][3] =  "Yamn... Altri 5 minuti... zzzzzzzzzzz...";
	dialogue[1][31][i][4] =  "Bâille... Encore 5 minutes... zzzzzzzzzzz...";
	dialogue[1][31][i][5] =  "Chrrrrrrrr... Je-jeszcze pięć minut... chrrrrr...";
	dialogue[1][31][i][6] =  "Yawn... 再过5分钟... zzzzzzzzzzz...";
	dialogue[1][31][i][7] =  "Uuuaaahhh... Solo 5 minutos más... zzzzzzzzzzz...";
	dialogue[1][31][i][8] =  "ふぅぁぁぁ・・・あと5分・・・zzzzzzzzzzz.....";
	dialogue[1][31][i][9] =  "Uaaaah! Mais cinco minutos... zzzzzzzzzzz...";
	dialogue[1][31][i][10] =  "Gjesp... fem minutter til... zzzzzzzzzzz...";
	#endregion
	
	#region Scan
	i = 0;
	dialogue[1][32][i][0] = "Use an advanced headset to scan and copy foes abilities!";
	dialogue[1][32][i][1] = "Use an advanced headset to scan and copy foes abilities!";
	dialogue[1][32][i][2] = "Verwend ein fortschrittliches Headset, um die Fähigkeiten von Feinden zu scannen und zu kopieren!";
	dialogue[1][32][i][3] = "Usa un’avanzata attrezzatura per scannerizzare e copiare le mosse degli avversari!";
	dialogue[1][32][i][4] = "Utilise un casque high-tech pour copier les capacités des ennemis!";
	dialogue[1][32][i][5] = "Użyj zaawansowanego hełmu żeby skanować i kopiować przeróżne zdolności!";
	dialogue[1][32][i][6] = "使用先进的耳机扫描和复制敌人的能力!";
	dialogue[1][32][i][7] = "¡Usa tu visor avanzado para escanear y copiar las habilidades de tus enemigos!";
	dialogue[1][32][i][8] = "進化したヘッドセットを使って、敵の能力をスキャンしてコピーしよう。";
	dialogue[1][32][i][9] = "Use um headset avançado para escanear e copiar as habilidades de inimigos!";
	dialogue[1][32][i][10] = "Bruk en avansert headset og kopier fiendenes evner!";
	#endregion
	
	#region Crash
	i = 0;
	dialogue[1][33][i][0] = "Clear the whole screen with a single mighty boom!";
	dialogue[1][33][i][1] = "Clear the whole screen with a single mighty boom!";
	dialogue[1][33][i][2] = "Zerstöre den gesamten Bildschirm mit einer einzigen mächtigen Explosion!";
	dialogue[1][33][i][3] = "Riempi lo schermo con uno potentissimo BOOM!";
	dialogue[1][33][i][4] = "Balaye tous les ennemis à l’écran avec une puissante explosion!";
	dialogue[1][33][i][5] = "Wyczyść cały ekran poprzez jeden spory wybuch!";
	dialogue[1][33][i][6] = "用一个强大的轰隆声清除整个屏幕!";
	dialogue[1][33][i][7] = "¡Despeja toda la pantalla con una gran explosión!";
	dialogue[1][32][i][8] = "画面全体を豪快に一発で消し去れ!!!!";
	dialogue[1][33][i][9] = "Limpe a tela inteira com uma única explosão poderosa!";
	dialogue[1][33][i][10] = "Fjern hele skjermen med en kraftig bom!";
	#endregion
	
	#region Mic
	i = 0;
	dialogue[1][34][i][0] = "Use your powerful singing skill to defeat all the enemies around you! ‘CHESTO!’";
	dialogue[1][34][i][1] = "Use your powerful singing skill to defeat all the enemies around you! ‘CHESTO!’";
	dialogue[1][34][i][2] = "Nutze deine mächtigen Gesangskünste, um alle Feinde um dich herum zu besiegen! 'CHESTO!'";
	dialogue[1][34][i][3] = "Usa le tue potenti abilità canore per sconfiggere i nemici intorno a te! 'CHESTO!'";
	dialogue[1][34][i][4] = "Terrasse tous les ennemis en vue à l’aide de tes talents de chanteur! 'CHESTO!'";
	dialogue[1][34][i][5] = "Użyj swoje zdolności śpiewu żeby pokonać wszystkich przeciwników dookoła ciebie! 'CZYSTO!'";
	dialogue[1][34][i][6] = "使用你强大的歌唱技巧来击败你周围的所有敌人！’CHESTO!’";
	dialogue[1][34][i][7] = "¡Usa tu poderosa técnica vocal para derrotar a todos los enemigos que te rodean! '¡CHESTO!'";
	dialogue[1][33][i][8] = "パワフルな歌唱力で周りの敵を倒していきましょう!!!‘チェストォォ!!!!!’";
	dialogue[1][34][i][9] = "Use a sua poderosa habilidade de canto para derrotar todos os inimigos ao seu redor! ‘CHESTO!’";
	dialogue[1][34][i][10] = "Bruk din kraftige sangferdighet for å beseire alle fiendene rundt deg! ‘CHESTO!’";
	#endregion
	
	#region Ultra Sword
	i = 0;
	dialogue[1][35][i][0] = "This huge sword can devastate enemies and your terrain with pure destructive power! Slice and dice!";
	dialogue[1][35][i][1] = "This huge sword can devastate enemies and your terrain with pure destructive power! Slice and dice!";
	dialogue[1][35][i][2] = "Dieses riesige Schwert kann Feinde und dein Gelände mit purer Zerstörungskraft verwüsten! In Würfel schneiden!";
	dialogue[1][35][i][3] = "Quest’enorme spada può devastare i nemici e il terreno con puro potere distruttivo! Slice and dice!";
	dialogue[1][35][i][4] = "Cette énorme épée peut anéantir les ennemis et le terrain avec une force destructrice! Tranche et hache!";
	dialogue[1][35][i][5] = "Ten Spory Miecz z łatwością przecina i niszczy przeciwników oraz twoje otoczenie z czystą mocą ZNISZCZENIA! Tnij i rozcinaj!";
	dialogue[1][35][i][6] = "这个巨大的剑可以摧毁敌人和的地形 拥有纯粹的破坏力！ 切片和切块!";
	dialogue[1][35][i][7] = "¡Esta espada gigante puede arrasar tanto con enemigos como con el terreno con puro poder destructivo! ¡Corta y trocea!";
	dialogue[1][35][i][8] = "この巨大な剣は、敵と自分の地形を破壊することができる純粋な破壊力があります!";
	dialogue[1][35][i][9] = "Esta espada enorme pode devastar inimigos e seu terreno com puro poder destrutivo! Fatie e pique!";
	dialogue[1][35][i][10] = "Dette enorme sverdet kan ødelegge fiender og terrenget ditt med ren ødeleggende kraft! Skjære og kutte!";
	#endregion
	#endregion
	
	#region Customize Menu
	#region Characters
	#endregion
	
	#region Skins
	#endregion
	
	#region Spray Paints
	var i = 0;
	dialogue[5][2][i][0] = "Testing? Testing.";
	#endregion
	
	#region Familiars
	var i = 0;
	dialogue[5][5][i][0] = "Kirby's mysterious companion! He wants to help stop the coming threat.";
	dialogue[5][5][i][1] = "Kirby'nin gizemli dostu! Gelen tehlikeyi durdurmamıza yardım edecek.";
	dialogue[5][5][i][2] = "Kirby's mysteriöser Gefährte! Er will helfen, die kommende Bedrohung zu stoppen.";
	dialogue[5][5][i][3] = "Le mystérieux compagnon de Kirby, il cherche à stopper une menace imminente.";
	dialogue[5][5][i][4] = "Il misterioso compagno di Kirby! Vuole aiutarlo a fermare una vicina minaccia...";
	dialogue[5][5][i][5] = "Skryty kamrat Kirby'iego! jego cel to powstrzymanie niedalekiego zła";
	dialogue[5][5][i][6] = "'Kirby'的神秘同伴！他想帮助阻止到来的威胁。";
	#endregion
	#endregion
	
	#region Gear Cube Shop
	#region First Time Entrance
	var i = 0;
	dialogue[7][0][i][0] = "You showed up for real.";
	i += 1;
	dialogue[7][0][i][0] = "Didn't expect to see you again after that run in we had back there.";
	i += 1;
	dialogue[7][0][i][0] = "Welcome to my market. It's rough out there so you better purchase some goods before going back out.";
	i += 1;
	dialogue[7][0][i][0] = "Sure we can both benefit from this.";
	#endregion
	
	#region Normal Entrance
	var i = 0;
	dialogue[7][1][i][0] = "My most esteemed customers.";
	i += 1;
	dialogue[7][1][i][0] = "Welcome.";
	i += 1;
	dialogue[7][1][i][0] = "Hey.";
	i += 1;
	dialogue[7][1][i][0] = "Need anything?";
	i += 1;
	dialogue[7][1][i][0] = "Back already?";
	i += 1;
	dialogue[7][1][i][0] = "Welcome back.";
	i += 1;
	dialogue[7][1][i][0] = "How was the trip?";
	i += 1;
	dialogue[7][1][i][0] = "Good to see you back safe and sound.";
	#endregion
	
	#region New Items Entrance
	var i = 0;
	dialogue[7][2][i][0] = "Got some new goods in stock, you gotta check 'em out.";
	i += 1;
	dialogue[7][2][i][0] = "Guess what I found deep in the storage!";
	#endregion
	
	#region Buy Option
	var i = 0;
	dialogue[7][3][i][0] = "Whaddya want?";
	i += 1;
	dialogue[7][3][i][0] = "Anything interesting?";
	i += 1;
	dialogue[7][3][i][0] = "You gotta fork over some cash before you go and try to mess with the boss. Heh.";
	i += 1;
	dialogue[7][3][i][0] = "Nice looking trinket right there, don't you agree?";
	#endregion
	
	#region Purchase Item
	var i = 0;
	dialogue[7][4][i][0] = "Thank you for your patronage.";
	i += 1;
	dialogue[7][4][i][0] = "Heh.";
	i += 1;
	dialogue[7][4][i][0] = "How generous!";
	i += 1;
	dialogue[7][4][i][0] = "Nice choice.";
	i += 1;
	dialogue[7][4][i][0] = "You have an eye for goods, don’t you.";
	i += 1;
	dialogue[7][4][i][0] = "Good choice.";
	i += 1;
	dialogue[7][4][i][0] = "I hope that serves you well.";
	i += 1;
	dialogue[7][4][i][0] = "That's a good one.";
	i += 1;
	dialogue[7][4][i][0] = "Pleasure doing business.";
	i += 1;
	dialogue[7][4][i][0] = "I could see you eyeing that one, heh.";
	#endregion
	
	#region Not Enough Money
	var i = 0;
	dialogue[7][5][i][0] = "I ain't running a charity here.";
	i += 1;
	dialogue[7][5][i][0] = "Ain’t giving valuables away for free. It wouldn't be a shop, would it?";
	i += 1;
	dialogue[7][5][i][0] = "Come back when you're a little richer.";
	i += 1;
	dialogue[7][5][i][0] = "Wallet's looking a bit thin there, buddy.";
	i += 1;
	dialogue[7][5][i][0] = "Bit broke at the moment?";
	i += 1;
	dialogue[7][5][i][0] = "I'm afraid I can't settle for this price.";
	i += 1;
	dialogue[7][5][i][0] = "For this price I could only get you this hopefully not-expired coupon for a pizza place, heh.";
	#endregion
	
	#region Talk Options
	var i = 0;
	dialogue[7][6][i][0] = "Why sell to us?";
	i += 1;
	dialogue[7][6][i][0] = "About yourself";
	i += 1;
	dialogue[7][6][i][0] = "The Boss";
	i += 1;
	dialogue[7][6][i][0] = "The Depths";
	i += 1;
	dialogue[7][6][i][0] = "Why Are You Still Here?";
	i += 1;
	dialogue[7][6][i][0] = "Old Boss";
	#endregion
	
	#region Leave Shop
	var i = 0;
	dialogue[7][7][i][0] = "'Til next time.";
	i += 1;
	dialogue[7][7][i][0] = "Good luck, you're gonna need it.";
	i += 1;
	dialogue[7][7][i][0] = "Come back soon.";
	i += 1;
	dialogue[7][7][i][0] = "Almost my lunch break anyway.";
	i += 1;
	dialogue[7][7][i][0] = "Don't be gone too long.";
	i += 1;
	dialogue[7][7][i][0] = "Yeah, yeah.";
	i += 1;
	dialogue[7][7][i][0] = "Gotta take a break.";
	i += 1;
	dialogue[7][7][i][0] = "Don't die.";
	i += 1;
	dialogue[7][7][i][0] = "Hope you're satisfied.";
	#endregion
	
	#region "Why Sell To Us?"
	var i = 0;
	dialogue[7][8][i][0] = "There's money to be made. I take that opportunity and roll with it.";
	i += 1;
	dialogue[7][8][i][0] = "Sometimes selling stuff I find in storage to the very people I was hired to keep out of the facility, you know?";
	i += 1;
	dialogue[7][8][i][0] = "I don't get paid enough to care about the new boss' personal beef anyhow, I'm just the janitor here, after all.";
	#endregion
	
	#region "About Yourself"
	var i = 0;
	dialogue[7][9][i][0] = "Phil.";
	i += 1;
	dialogue[7][9][i][0] = "I'm here to offer some goods that might give you a chance to make it out of here in one piece. For that I’ll get my share of your well-earned money.";
	#endregion
	
	#region "The Boss"
	var i = 0;
	dialogue[7][10][i][0] = "Haven't actually seen him in person.";
	i += 1;
	dialogue[7][10][i][0] = "Seems like a scary guy. Me and the other rookies just work for him over an agreement.";
	i += 1;
	dialogue[7][10][i][0] = "I have no clue what he intends to do with this facility, though I couldn't care less.";
	i += 1;
	dialogue[7][10][i][0] = "It's much better than that one job I had a couple years back. Food delivery blows when you have to fly through miles of empty space.";
	i += 1;
	dialogue[7][10][i][0] = "...";
	i += 1;
	dialogue[7][10][i][0] = "I wouldn't really go snooping my nose somewhere it doesn't belong. Better stay as far away from the guy as possible.";
	i += 1;
	dialogue[7][10][i][0] = "His weird henchmen give me the creeps.";
	#endregion
	
	#region "The Depths"
	var i = 0;
	dialogue[7][11][i][0] = "So the rumors really were true, huh? There was a giant blob in here keeping the place stable...";
	i += 1;
	dialogue[7][11][i][0] = "Given the whole facility's been blown to bits, I take it you somehow managed to destroy it.";
	i += 1;
	dialogue[7][11][i][0] = "I guess you really aren't messing around. You might actually have a shot at fighting the boss.";
	#endregion
	
	#region "Why Are You Still Here?"
	var i = 0;
	dialogue[7][12][i][0] = "Bet I can find some real goods in all this debris.";
	i += 1;
	dialogue[7][12][i][0] = "Sell those off to some other sucker and pile up some cash for a vacation.";
	i += 1;
	dialogue[7][12][i][0] = "Just gotta hold out hope that you strike gold!";
	#endregion
	
	#region "Old Boss"
	var i = 0;
	dialogue[7][13][i][0] = "We’re not from here, you know.";
	i += 1;
	dialogue[7][13][i][0] = "My homeplanet might be a chill place but the overpopulation made finding jobs a lot harder.";
	i += 1;
	dialogue[7][13][i][0] = "Not like I’m asking for it, working overtime ain’t my thing really.";
	i += 1;
	dialogue[7][13][i][0] = "Our old boss was too naive of a guy, cared about our well being more than anything. Foolish if you ask me.";
	i += 1;
	dialogue[7][13][i][0] = "That shady guy ruling this place came to our boss and offered free jobs for the rest of us.";
	i += 1;
	dialogue[7][13][i][0] = "The old man couldn’t say no to that, and sent us off to this junkyard of a place.";
	i += 1;
	dialogue[7][13][i][0] = "Now that our new boss left us, I’ll evaluate this situation like how a smart businessman would.";
	i += 1;
	dialogue[7][13][i][0] = "Taking a nice, sweet break and slacking off like there’s no tomorrow.";
	i += 1;
	dialogue[7][13][i][0] = "Just ring the bell if you wanna have a deal.";
	#endregion
	#endregion
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}