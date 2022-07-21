///@description Play Music
///@param {real} pause Stop existing music
///@param {real} soundid Which music to play.
///@param {real} priority Music priority.
///@param {real} loops Can loop or not.

function scr_PlayMusic(argument0,argument1,argument2,argument3)
{
	var pause = argument0;
	var soundid = argument1;
	var priority = argument2;
	var loops = argument3;
	
	if (global.musicIntro)
	{
		with (obj_Hud)
		{
			musicIntroActive = true;
			musicIntroTimer = musicIntroTimerMax;
		}
		
		switch (soundid)
		{
			case mus_GreenGreens:
			global.musicIntroTitle = "Familiar Fields";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_BattleshipHalberd:
			global.musicIntroTitle = "Decisive Battleship";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_HalberdEscape:
			global.musicIntroTitle = "Battleship Down";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_AsteroidFields:
			global.musicIntroTitle = "Meteor Cluster";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_KazooFields: //
			global.musicIntroTitle = "Kazoo Fields (SECRET)";
			global.musicIntroComposer = "Subsandwich";
			break;
			
			case mus_EggGarden_Hub:
			global.musicIntroTitle = "First Steps To Yolk Yard";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_EggGarden_Surface:
			global.musicIntroTitle = "Egg Shaped Planet";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_EggGarden_Temple:
			global.musicIntroTitle = "Grand Temple Avgo";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_EggGarden_Caves:
			global.musicIntroTitle = "Tragically Discolored Vines";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_GearCube_Hangar:
			global.musicIntroTitle = "Chasing the Stars";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_GearCube_Depths:
			global.musicIntroTitle = "Path to the Nasty Machine";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_Aquatia_Harbor: //
			global.musicIntroTitle = "Aquatia Harbor";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_PopstarMoon:
			global.musicIntroTitle = "Moon Walking";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_AbilityChallenge: //
			global.musicIntroTitle = "Ability Challenge";
			global.musicIntroComposer = "Molly";
			break;
			
			case mus_MiniBoss:
			global.musicIntroTitle = "Big Bad Enemy";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_BossTension:
			global.musicIntroTitle = "Lurking Ahead";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_Boss1:
			global.musicIntroTitle = "Explosive Boss Battle";
			global.musicIntroComposer = "Light MetaS";
			break;
			
			case mus_Cellphone: //
			global.musicIntroTitle = "Cellphone";
			global.musicIntroComposer = "Tater-Tot Tunes";
			break;
			
			case mus_ChapterIntro1_1: //
			global.musicIntroTitle = "";
			global.musicIntroComposer = "Strimp";
			break;
			
			case mus_ChapterIntro1_2: //
			global.musicIntroTitle = "";
			global.musicIntroComposer = "Strimp";
			break;
			
			case mus_Collection: //
			global.musicIntroTitle = "";
			global.musicIntroComposer = "Rhey";
			break;
		}
		
		switch (global.musicIntroComposer)
		{
			case "Light MetaS":
			global.musicIntroColorBg = make_color_rgb(0,70,27);
			global.musicIntroColorLight = make_color_rgb(0,248,94);
			global.musicIntroColorDark = make_color_rgb(0,134,51);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
			
			case "Subsandwich":
			global.musicIntroColorBg = make_color_rgb(0,70,27);
			global.musicIntroColorLight = make_color_rgb(0,248,94);
			global.musicIntroColorDark = make_color_rgb(0,134,51);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
			
			case "Gavin Wilson":
			global.musicIntroColorBg = make_color_rgb(48,8,70);
			global.musicIntroColorLight = make_color_rgb(169,0,248);
			global.musicIntroColorDark = make_color_rgb(91,0,134);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
			
			case "Alouette":
			global.musicIntroColorBg = make_color_rgb(69,1,54);
			global.musicIntroColorLight = make_color_rgb(245,3,193);
			global.musicIntroColorDark = make_color_rgb(132,2,104);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
			
			case "Azifly":
			global.musicIntroColorBg = make_color_rgb(70,35,19);
			global.musicIntroColorLight = make_color_rgb(248,124,68);
			global.musicIntroColorDark = make_color_rgb(134,67,37);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
			
			case "Molly":
			global.musicIntroColorBg = make_color_rgb(70,47,70);
			global.musicIntroColorLight = make_color_rgb(248,168,248);
			global.musicIntroColorDark = make_color_rgb(134,91,134);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
			
			case "Tater-Tot Tunes": //
			global.musicIntroColorBg = make_color_rgb(70,47,70);
			global.musicIntroColorLight = make_color_rgb(248,168,248);
			global.musicIntroColorDark = make_color_rgb(134,91,134);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
			
			case "Strimp": //
			global.musicIntroColorBg = make_color_rgb(70,47,70);
			global.musicIntroColorLight = make_color_rgb(248,168,248);
			global.musicIntroColorDark = make_color_rgb(134,91,134);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
			
			case "Rhey": //
			global.musicIntroColorBg = make_color_rgb(70,47,70);
			global.musicIntroColorLight = make_color_rgb(248,168,248);
			global.musicIntroColorDark = make_color_rgb(134,91,134);
			global.musicIntroColorComposer = make_color_rgb(255,255,255);
			break;
		}
	}
	
	if (pause) audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(soundid,priority,loops);
}