///@description Localization - Options
///@param {real} dialogueCategory Which category to check.
///@param {real} dialogueIndex Which dialogue index to check.
///@param {real} dialogueLine Which line to check.
///@param {real} language Which language to check.

function scr_Localization_Options(argument0,argument1,argument2,argument3)
{
	var dialogueCategory = argument0;
	var dialogueIndex = argument1;
	var dialogueLine = argument2;
	var language = argument3;
	var dialogue = "";
	
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
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.turkish] = "Dil";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.german] = "Sprache";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.italian] = "Lingua";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.french] = "Langue/Langage";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.polish] = "Język";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.spanish] = "Idioma";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.japanese] = "言語";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.portuguese] = "Idioma";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_language][stringAttributes.title][0][languages.arabic] = "اللغة";
	#endregion
	
	#region Other
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.english] = "Other";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.turkish] = "Diğer";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.german] = "Sonstiges";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.italian] = "Altro";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.french] = "Autre";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.polish] = "Inne";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.spanish] = "Otros";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.japanese] = "その他";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.portuguese] = "Outros";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_other][stringAttributes.title][0][languages.arabic] = "أخرى";
	#endregion
	
	#region Fullscreen
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.english] = "Fullscreen";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.turkish] = "Tam Ekran";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.german] = "Vollbild";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.italian] = "Schermo intero";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.french] = "Plein écran";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.polish] = "Pełny ekran";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.spanish] = "Pantalla completa";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.japanese] = "フルスクリーン";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.portuguese] = "Tela Cheia";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_fullscreen][stringAttributes.title][0][languages.arabic] = "شاشة كاملة";
	#endregion
	
	#region Window Size
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.english] = "Window Size";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.turkish] = "Pencere Boyutu";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.german] = "Fenstergröße";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.italian] = "Dimensione della finestra";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.french] = "Taille de l'écran";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.polish] = "Rozmiar okna";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.spanish] = "Tamaño de ventana";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.japanese] = "ウィンドウの大きさ";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.portuguese] = "Tamanho da Tela";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_windowSize][stringAttributes.title][0][languages.arabic] = "حجم النافذة";
	#endregion
	
	#region Music
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.english] = "Music";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.turkish] = "Müzik";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.german] = "Musik";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.italian] = "Musica";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.french] = "Musique";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.polish] = "Muzyka";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.spanish] = "Música";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.japanese] = "ミュージック";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.portuguese] = "Música";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_music][stringAttributes.title][0][languages.arabic] = "الموسيقى";
	#endregion
	
	#region Sound Effects
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.english] = "Sound Effects";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.turkish] = "Ses Efektleri";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.german] = "Soundeffekte";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.italian] = "Effetti sonori";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.french] = "Effet sonores";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.polish] = "Efekty dźwiękowe";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.spanish] = "Efectos de sonido";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.japanese] = "効果音";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.portuguese] = "Efeitos Sonoros";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_soundEffects][stringAttributes.title][0][languages.arabic] = "التأثيرات الصوتية";
	#endregion
	
	#region Left
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.english] = "Left";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.turkish] = "Sol";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.german] = "Links";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.italian] = "Sinistra";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.french] = "Gauche";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.polish] = "Lewo";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.spanish] = "Izquierda";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.japanese] = "左";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.portuguese] = "Esquerda";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_left][stringAttributes.title][0][languages.arabic] = "يسار";
	#endregion
	
	#region Right
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.english] = "Right";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.turkish] = "Sağ";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.german] = "Rechts";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.italian] = "Destra";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.french] = "Droite";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.polish] = "Prawo";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.spanish] = "Derecha";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.japanese] = "右";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.portuguese] = "Direita";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_right][stringAttributes.title][0][languages.arabic] = "يمين";
	#endregion
	
	#region Up
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.english] = "Up";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.turkish] = "Yukarı";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.german] = "Oben";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.italian] = "Su";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.french] = "Haut";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.polish] = "Góra";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.spanish] = "Arriba";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.japanese] = "上";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.portuguese] = "Cima";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_up][stringAttributes.title][0][languages.arabic] = "فوق";
	#endregion
	
	#region Down
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.english] = "Down";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.turkish] = "Aşağı";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.german] = "Unten";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.italian] = "Giù";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.french] = "Bas";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.polish] = "Dół";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.spanish] = "Abajo";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.japanese] = "下";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.portuguese] = "Baixo";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_down][stringAttributes.title][0][languages.arabic] = "تحت";
	#endregion
	
	#region Jump
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.english] = "Jump";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.turkish] = "Zıplama";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.german] = "Springen";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.italian] = "Salto";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.french] = "Saut";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.polish] = "Skok";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.spanish] = "Saltar";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.japanese] = "ジャンプ";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.portuguese] = "Pular";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_jump][stringAttributes.title][0][languages.arabic] = "قفز";
	#endregion
	
	#region Attack
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.english] = "Attack";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.turkish] = "Saldırı";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.german] = "Attacke";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.italian] = "Attacco";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.french] = "Attaque";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.polish] = "Atak";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.spanish] = "Atacar";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.japanese] = "アタック";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.portuguese] = "Atacar";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_attack][stringAttributes.title][0][languages.arabic] = "هجوم";
	#endregion
	
	#region Start
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.english] = "Start";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.turkish] = "Başlat";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.german] = "Start";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.italian] = "Start";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.french] = "Start";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.polish] = "Start";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.spanish] = "Start";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.japanese] = "Start";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.portuguese] = "Começar";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_start][stringAttributes.title][0][languages.arabic] = "بدء";
	#endregion
	
	#region Select
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.english] = "Select";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.turkish] = "Seç";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.german] = "Auswählen";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.italian] = "Select";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.french] = "Select";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.polish] = "Wybór";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.spanish] = "Select";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.japanese] = "Select";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.portuguese] = "Selecionar";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_select][stringAttributes.title][0][languages.arabic] = "اختيار";
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
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.turkish] = "Ekstra Eğitim";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.german] = "Zusätzliche Tutorials";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.italian] = "Tutorial extra";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.french] = "Tutoriels supplémentaires";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.polish] = "Dodatkowe samouczki";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.spanish] = "Tutoriales extra";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.japanese] = "エクストラチュートリアル";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.portuguese] = "Tutoriais Extras";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_extraTutorials][stringAttributes.title][0][languages.arabic] = "شروحات أخرى";
	#endregion
	
	#region Auto Swallow
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.english] = "Auto Swallow";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.turkish] = "Otomatik Yutma";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.german] = "Autom. Schlucken";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.italian] = "Risucchio automatico";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.french] = "Aval'tout automatique";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.polish] = "Automatyczne połknięcie";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.spanish] = "Tragar automáticamente";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.japanese] = "ほおばり変形";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.portuguese] = "Engolir Automaticamente";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_autoSwallow][stringAttributes.title][0][languages.arabic] = "بلع أوتوماتيكي";
	#endregion
	
	#region Music Intro
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.english] = "Music Intro";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.turkish] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.german] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.italian] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.french] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.polish] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.chinese] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.spanish] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.japanese] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.portuguese] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.norwegian] = "";
	dialogue[stringAttributes.options_musicIntro][stringAttributes.title][0][languages.arabic] = "";
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