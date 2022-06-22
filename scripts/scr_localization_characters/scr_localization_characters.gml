///@description Localization - Characters
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_Characters(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
	#region Character Titles
	#region Kirby
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.english] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.turkish] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.german] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.italian] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.french] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.polish] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.spanish] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.japanese] = "カービィ";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.portuguese] = "Kirby";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.title][0][languages.arabic] = "كيربي";
	#endregion
	
	#region Gamble
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.english] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.turkish] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.german] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.italian] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.french] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.polish] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.spanish] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.japanese] = "ギャンブル";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.portuguese] = "Gamble";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.title][0][languages.arabic] = "غامبل";
	#endregion
	
	#region Meta Knight
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.english] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.turkish] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.german] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.italian] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.french] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.polish] = "Rycerz Meta";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.spanish] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.japanese] = "メタナイト";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.portuguese] = "Meta Knight";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.title][0][languages.arabic] = "ميتا كنايت";
	#endregion
	
	#region Helper
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.english] = "Helper";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.turkish] = "Yardımcı";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.german] = "Helfer";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.italian] = "Amico di Sogno";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.french] = "Acolyte";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.polish] = "Pomocnicy";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.spanish] = "Ayudante";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.japanese] = "ヘルパー";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.portuguese] = "Ajudante";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.title][0][languages.arabic] = "هيلبر";
	#endregion
	
	#region Gooey
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.english] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.turkish] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.german] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.italian] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.french] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.polish] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.spanish] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.japanese] = "グーイ";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.portuguese] = "Gooey";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.title][0][languages.arabic] = "قووي";
	#endregion
	
	#region Magolor
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.english] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.turkish] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.german] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.italian] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.french] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.polish] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.spanish] = "Maglor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.japanese] = "マホロア";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.portuguese] = "Magolor";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.title][0][languages.arabic] = "ماجولور";
	#endregion
	
	#region Keeby
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.english] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.turkish] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.german] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.italian] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.french] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.polish] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.spanish] = "Keeby";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.japanese] = "キービィ";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.title][0][languages.portuguese] = "Keeby";
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
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.spanish] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.japanese] = "????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.portuguese] = "?????";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.secretTitle][0][languages.arabic] = "?????";
	#endregion
	
	#region Gamble
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.english] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.turkish] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.german] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.italian] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.french] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.polish] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.spanish] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.japanese] = "?????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.portuguese] = "??????";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.secretTitle][0][languages.arabic] = "?????";
	#endregion
	
	#region Meta Knight
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.english] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.turkish] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.german] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.italian] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.french] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.polish] = "?????? ????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.spanish] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.japanese] = "?????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.portuguese] = "???? ??????";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.secretTitle][0][languages.arabic] = "????? ????";
	#endregion
	
	#region Helper
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.english] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.turkish] = "????????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.german] = "??????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.italian] = "????? ?? ?????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.french] = "???????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.polish] = "?????????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.spanish] = "????????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.japanese] = "????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.portuguese] = "????????";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.secretTitle][0][languages.arabic] = "?????";
	#endregion
	
	#region Gooey
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.english] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.turkish] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.german] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.italian] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.french] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.polish] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.spanish] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.japanese] = "???";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.portuguese] = "?????";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.secretTitle][0][languages.arabic] = "????";
	#endregion
	
	#region Magolor
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.english] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.turkish] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.german] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.italian] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.french] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.polish] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.spanish] = "??????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.japanese] = "????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.portuguese] = "???????";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.secretTitle][0][languages.arabic] = "???????";
	#endregion
	
	#region Keeby
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.english] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.turkish] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.german] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.italian] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.french] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.polish] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.spanish] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.japanese] = "????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.portuguese] = "?????";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.secretTitle][0][languages.arabic] = "?????";
	#endregion
	#endregion
	
	#region Character Descriptions
	#region Kirby
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.english] = "Riding in on the spring breeze, it's Kirby! Inhale enemies and copy their powers. A galaxy stretches beyond your wildest dreams, so it's time to get going!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.turkish] = "İşte bu Kirby! Düşmanlarını ye ve onların özelliklerini kopyala. Tüm galaksiyi kurtarmak için yola çık!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.german] = "Mit der Frühlingsbrise hereinreiten, das ist Kirby! Sauge Feinde ein und kopiere ihre Kräfte. Eine Galaxie erstreckt sich über deine kühnsten Träume hinaus, also ist es Zeit, loszulegen!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.italian] = "Ecco Kirby! Risucchia i nemici e prendi i loro poteri! Fatti avanti in una galassia con i confini che superano persino i tuoi sogni più sfrenati!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.french] = "Arrivant avec la brise de printemps, c'est Kirby ! Avalez des ennemis et copiez leurs pouvoirs. Une galaxie s'étend au-delà de vos plus grands rêves, il est temps d'y aller !";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.polish] = "A niech mnie bryza rozpręży, to Kirby! Wchłaniaj przeciwników oraz kopiuj ich moce. Galaktyka rozwija się ponad twoimi szalonymi marzeniami, więc czas się ruszyć!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.spanish] = "¡Cabalgando por la brisa primaveral, es Kirby! Absorbe enemigos y copia sus habilidades. Una galaxia se extiende más lejos de lo que te puedas imaginar ¡No hay tiempo que perder!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.japanese] = "春風にのってカービィが登場! 敵を吸い込み、その力をコピーする。夢の向こうに広がる銀河、いざ出陣!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.portuguese] = "Vindo da brisa primaverial, é o Kirby! Sugue inimigos e copie seus poderes. Uma galáxia se estende além dos seus sonhos mais loucos, então é hora de seguir em frente!";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_kirby][stringAttributes.description][0][languages.arabic] = "وهو يركض في نسيم الربيع ، إنه كيربي!  ابتلع الأعداء وانسخ قوتهم.  تمتد المجرة إلى ما وراء أعنف أحلامك ، لذا حان الوقت للبدء!";
	#endregion
	
	#region Gamble
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.english] = "This new friend from outer space came to Popstar to ask Kirby for a hand in defeating the Cosmic Fluxbender! Gamble wields dice, cards, roulettes, and magical energy to take down the enemy. Make them fold!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.turkish] = "Bu yeni dostumuz Kirby'e Kozmik Fluxbükücü'yü yenmesine yardım etmek için uzaydan geldi! Gamble, düşmanları yenmek için zarlar, kartlar, ruletler ve sihirli enerjisini kullanacak. Hepsini katla!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.german] = "Dieser neue Freund aus dem Weltraum kam zu Popstar, um Kirby um Hilfe beim Besiegen des Cosmic Fluxbender zu bitten! Gamble setzt Würfel, Karten, Roulette und magische Energie ein, um den Feind zu besiegen. Lass sie falten!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.italian] = "Questo nuovo amico è venuto dallo spazio al Pianeta Pop per chiedere a Kirby un aiuto nella sconfitta del perfido Lord Flux. Gamble attacca i nemici a suon di dadi, carte, roulette e poteri magici. Nessuno avrà scampo!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.french] = "Ce nouvel ami d'un espace lointain est venu sur la planète Pop demander à Kirby un coup de main pour vaincre le Fluxbender cosmique ! Gamble utilise des dés, cartes, roulettes, et de l'énergie magique contre ses ennemis. Pliez-les en deux !";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.polish] = "Ten nowy koleżka z odległej galaktyki zjawił się na Popstar żeby poprosić Kirby'ego o pomocną dłoń w pokonaniu Fluxbendera! Gamble trzyma ze sobą kości, karty, ruletki oraz magiczną energie żęby pokonać wrogów. Złożyć ich jak papier!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.spanish] = "¡Este nuevo amigo del espacio exterior ha venido al planeta Pop a pedir ayuda a Kirby para derrotar al Maestro Cósmico del Flux! Gamble empuña dados, cartas, ruletas y energía mágica para tumbar al enemigo. ¡Dóblalos a voluntad!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.japanese] = "宇宙から来た新しいこの友達は、カービィにコズミックフラックスベンダーを倒すのを手伝ってほしいと頼みに来たのだ! サイコロ、カード、ルーレット、そして魔力を駆使して敵を倒すギャンブル。折らせろ!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.portuguese] = "Esse novo amigo do espaço sideral veio a Popstar para pedir a Kirby uma mãozinha para derrotar o Dobrador de Fluxo Cósmico! Gamble usa dados, cartas, roletas e energia mágica para derrotar o inimigo. Dobre-os!";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gamble][stringAttributes.description][0][languages.arabic] = "جاء هذا الصديق الجديد من الفضاء الخارجي إلى Popstar ليطلب من كيربي مساعدته في هزيمة Cosmic Fluxbender!  تستخدم لعبة Gamble النرد والبطاقات والروليت والطاقة السحرية للقضاء على العدو.  اجعلها تطوي!";
	#endregion
	
	#region Meta Knight
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.english] = "The mysterious masked knight from Kirby's Adventure is here! He is chivalrous and always willing to fight any source of evil. All of Dream Land fears his sword!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.turkish] = "İlk Kirby's Adventure'da görünen gizemli maskeli şovalye geri döndü! Cesur bir şekilde tüm kötülüklerle savaşmaya hazır. Tüm Dream Land onun kılıcından korkar!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.german] = "Der mysteriöse maskierte Ritter aus Kirby's Adventure ist da! Er ist ritterlich und immer bereit, jede Quelle des Bösen zu bekämpfen. Ganz Dream Land fürchtet sein Schwert!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.italian] = "Il misterioso cavaliere oscuro da Kirby's Adventure è qui! È valoroso e sempre pronto ad affrontare il male in ogni sua forma. Tutta Dream Land teme la sua spada.";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.french] = "Le chevalier masqué mystérieux de Kirby's Adventure est là ! Il est toujours respectueux et combat toutes les sources du mal. L'entièreté de Dream Land redoute son épée !";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.polish] = "Ten zamaskowany rycerz z Przygody Kirby'ego tu jest! Jest on rycerski oraz zawsze gotowy do walki z jakimkolwiek złem. Cała Kraina Marzeń boi się jego ostrza!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.spanish] = "¡El misterioso caballero enmascarado de Kirby’s Adventure está aquí! Es muy caballeroso y siempre está dispuesto a combatir el mal. ¡Todo Dream Land teme a su espada!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.japanese] = "カービィアドベンチャーに登場する謎の仮面騎士が登場! 彼は騎士道精神に溢れ、どんな悪の元凶とも戦うことを厭わない。夢の国中が彼の剣を恐れている。";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.portuguese] = "O misterioso cavaleiro mascarado de Kirby's Adventure está aqui! Ele é cortês e sempre disposto a lutar contra qualquer fonte de mal. Toda a Terra dos Sonhos teme sua espada!";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_metaKnight][stringAttributes.description][0][languages.arabic] = "الفارس المقنع الغامض من Kirby's Adventure هنا!  إنه شهم ومستعد دائمًا لمحاربة أي مصدر للشر.  كل دريم لاند تخشى سيفه!";
	#endregion
	
	#region Helper
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.english] = "Folks from all over have come together to help Kirby on his adventure! Play as a plethora of creatures from across Gamble Galaxy, from stubby Waddle Dees to invincible Gordos!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.turkish] = "Her yerden dostlarımız Kirby'e macerasında yardım etmeye geldi! Ufak Waddle Deelerden yenilmez Gordolara kadar bir çok yaratıkla oyna! ";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.german] = "Leute aus aller Welt sind zusammengekommen, um Kirby bei seinem Abenteuer zu helfen! Spiele als eine Vielzahl von Kreaturen aus der gesamten Gamble Galaxy, von stämmigen Waddle Dees bis zu unbesiegbaren Gordos!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.italian] = "I nemici di Kirby ora sono suoi amici: dal tozzo Waddle Dee all'invulnerabile Bombospino.";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.french] = "Des amis de toute part se sont rassemblés pour venir en aide à Kirby dans son aventure ! Jouez avec une multitude de créatures provenant de la galaxie Gamble, de petits Waddle Dee aux Minérissons invincibles !";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.polish] = "Znajomi z każdego miejsca przyszli żeby razem pomóc Kirby'emu w jego przygodzie! Graj bogactwem stworzeń z całej Galaktyki Gamble, od przysadzistych Waddle Dee do niepokonanych Jeżowców!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.spanish] = "¡Gente de todas partes ha venido a ayudar a Kirby en su aventura! Juega como un sinfín de criaturas de la Galaxia Gamble, ¡desde los blanditos Waddle Dees hasta los invencibles Gordos!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.japanese] = "カービィの冒険を手助けしてくれる人たちが各地から集まってきました! Gamble Galaxyに生息する、ずんぐりむっくりなワドルディーズや無敵のゴルドなど、さまざまな生き物になりきって遊べます!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.portuguese] = "Pessoas de todo o mundo se uniram para ajudar Kirby em sua aventura! Jogue com uma infinidade de criaturas de toda a Galáxia Gamble, dos atarracados Waddle Dees aos invencíveis Goldos!";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_helper][stringAttributes.description][0][languages.arabic] = "اجتمع الناس من جميع أنحاء العالم لمساعدة كيربي في مغامرته!  العب كمجموعة كبيرة من المخلوقات من جميع أنحاء Gamble Galaxy ، من Waddle Dees القصير إلى Gordos الذي لا يقهر!";
	#endregion
	
	#region Gooey
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.english] = "While of strange origin, Gooey has a heart of gold, always eager to show up by his friends. With his ridiculously long tongue, he's happy to help Kirby along his adventure!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.turkish] = "Garip bir yerden gelse de, Gooey'in altın gibi bir kalbi vardır ve her zaman arkadaşlarının yardımına koşar. Uzun diliyle Kirby'nin macerasında ona katıldığı için çok mutlu!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.german] = "Obwohl Gooey von seltsamer Herkunft ist, hat er ein Herz aus Gold und ist immer bestrebt, bei seinen Freunden aufzutauchen. Mit seiner lächerlich langen Zunge hilft er Kirby gerne bei seinem Abenteuer!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.italian] = "Nonostante la sua strana origine, Gooey ha un cuore d'oro e c'è sempre per i suoi amici. Darà un prezioso aiuto a Kirby e agli altri con la sua lingua incredibilmente lunga!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.french] = "Outre son origine étrange, Gooey possède un cœur d'or, étant toujours présent pour ses amis. À l'aide de sa langue beaucoup trop longue, il est heureux d'aider Kirby dans son aventure !";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.polish] = "Nawet jeśli ma dziwaczną przeszłość, Gooey ma serce ze złota, zawsze pomocny jego znajomym. Z jego komicznie długim językiem, jest zawsze chętny do udziału w przygodzie z Kirby'm i jego przyjacielom!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.spanish] = "A pesar de su extraño origen, Gooey tiene un corazón de oro, y siempre está dispuesto a apoyar a sus amigos. Con su lengua ridículamente alargada, ¡siempre se alegra de poder ayudar a Kirby en su aventura!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.japanese] = "奇妙な出自を持つグーイは、いつも友達のそばにいたいと思っている。その長い舌で、カービィの冒険を手助けしてくれる。";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.portuguese] = "Embora de origem estranha, Gooey tem um coração de ouro, sempre ansioso para ficar perto de seus amigos. Com sua língua ridiculamente longa, ele está disposto a ajudar Kirby em sua aventura!";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_gooey][stringAttributes.description][0][languages.arabic] = "بينما من أصل غريب ، يتمتع Gooey بقلب من الذهب ، ويتوق دائمًا إلى الظهور من قبل أصدقائه.  بلسانه الطويل السخيف ، يسعده مساعدة كيربي طوال مغامرته!";
	#endregion
	
	#region Magolor
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.english] = "'Flux? I'll show you real power!' This tricky wizard hails from Kirby's Return to Dream Land. He used to be a lying cheat, but he's reformed... right? His otherworldly magic will make short work of your enemies!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.turkish] = "'Flux'mı? Sana gerçek gücü göstereceğim!' Bu şakacı büyücü, ilk önce Kirby's Adventure Wii'de görülmüştür. Eskiden yalancı bir kötüydü, ama artık değişti... değil mi? Onun dünya dışı büyüsü düşmanları kısa sürede yok edecek!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.german] = "Flux? Ich zeige dir wahre Macht!' Dieser knifflige Zauberer stammt aus Kirby's Return to Dream Land. Früher war er ein lügender Betrüger, aber er hat sich gebessert ... richtig? Seine jenseitige Magie wird kurzen Prozess mit deinen Feinden machen!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.italian] = "Flusso Mistico? QUESTO è il vero potere! Questo scaltro mago fa il suo ritorno direttamente da Kirby's Adventure Wii. Viene ricordato come un imbroglione, ma è cambiato... Vero???";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.french] = "'Du flux ? Je vais vous montrer de la vraie puissance !' Ce magicien sournois arrive de Kirby's Adventure Wii. Il était autrefois un menteur sans scrupule, mais il a changé... pas vrai ? Sa magie extraordinaire va faire succomber les ennemis !";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.polish] = "Flux? Ja ci pokaże prawdziwą moc! Ten podstępny czarodziej pochodzi z 'Kirby's Return To Dream Land'. Kiedyś był kłamiącym oszustem, ale teraz się zreformował.... racja? Jego ponadgalaktyczna moc sprawi że z przeciwników wyjdzie popiół!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.spanish] = "'¿Flux? ¡Yo te enseñaré lo que es un verdadero poder!' Este astuto mago vuelve desde Kirby's Return to Dream Land / Adventure Wii. Solía ser un traidor mentiroso, pero ahora es bueno... ¿no? ¡Gracias a su magia sobrenatural arrasarás con tus enemigos!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.japanese] = "「フラックス？本当の力を見せてあげる！」星のカービィWiiから登場したトリッキーな魔法使い。元はイカサマ師だったが、今は改心している......よね？異世界の魔法で敵をやっつけろ!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.portuguese] = "Fluxo? Eu vou te mostrar o que é poder de verdade! Esse mago traiçoeiro vem de Kirby's Return to Dream Land. Ele costumava ser um trapaceiro mentiroso, mas ele mudou... né? Sua magia de outro mundo acabará com seus inimigos!";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_magolor][stringAttributes.description][0][languages.arabic] = "تدفق؟  سأريك القوة الحقيقية!  هذا المعالج المخادع ينحدر من Kirby's Return to Dream Land.  لقد اعتاد أن يكون غشاشًا كاذبًا ، لكنه تم إصلاحه ... أليس كذلك؟  سحره الآخر سيجعل أعدائك يعمدون إلى أعمال قصيرة!";
	#endregion
	
	#region Keeby
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.english] = "While not as adventurous as his friendly rival, Keeby seemed eager to join him on his quest! Can he take a little break from his golfing career?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.turkish] = "Rakibi Kirby kadar maceracı olmasa da, Keeby istekli bir şekilde onun yardımına koştu! Acaba golf kariyerine biraz ara verebilecek mi?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.german] = "Keeby war zwar nicht so abenteuerlustig wie sein freundlicher Rivale, schien aber begierig darauf zu sein, sich ihm auf seiner Suche anzuschließen! Kann er eine kleine Pause von seiner Golfkarriere einlegen?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.italian] = "Seppur non avventuroso come la sua controparte gioiosa e amichevole, Keeby sembra intenzionato ad aiutare Kirby nella sua nuova avventura! Potrà prendersi una pausa dalla sua carriera di golf?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.french] = "Bien qu'il ne soit pas aussi aventureux que son ami rival, Keeby semblait vouloir l'accompagner dans sa quête ! Peut-il prendre une pause dans sa carrière de golf ?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.polish] = "Chociaż że nie jest aż tak śmiały jak jego przyjazny rywal, Keeby wydaje się chętny dołączenia do jego wyprawy! Czy on sobie zrobi przerwe z jego kariery golfowej?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.chinese] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.spanish] = "Aunque no sea tan aventurero como su rival amistoso, ¡Keeby se ve ansioso por acompañarlo en su misión! ¿Podrá tomarse un descanso de su carrera como golfista?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.japanese] = "ライバルほど冒険好きではないものの、キービィは彼の冒険に参加したがっているようだ！果たしてキービィはゴルフの仕事を少し休むことができるのか？果たして彼は、ゴルフの世界から少し離れることができるのだろうか？";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.portuguese] = "Apesar de não ser tão aventureiro quanto seu rival amistoso, Keeby parecia ansioso para juntar-se a ele em sua missão! Será que ele conseguir tirar uma folga se sua carreira de golfe?";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.norwegian] = "";
	dialogue[stringAttributes.playerCharacters_keeby][stringAttributes.description][0][languages.arabic] = "مع انه ليس مغامرًا مثل منافسه الودود ، بدا Keeby حريصًا على الانضمام إليه في سعيه!  هل يمكنه أخذ استراحة قصيرة من مسيرته في لعبة الجولف؟";
	#endregion
	#endregion
	
	return dialogue[dialogueCategory][dialogueIndex][dialogueLine][language];
}