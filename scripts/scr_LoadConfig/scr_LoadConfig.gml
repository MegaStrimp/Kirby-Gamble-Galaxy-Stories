///@description Load Game
///@param {real} file Which file to read.

function scr_LoadConfig(argument0)
{
	ini_open(argument0);
	global.musicVolume = ini_read_real("options","musicVolume",1);
	global.soundVolume = ini_read_real("options","soundVolume",1);
	global.fullscreen = ini_read_real("options","fullscreen",1);
	global.extraTutorials = ini_read_real("options","extraTutorials",true);
	global.autoSwallow = ini_read_real("options","autoSwallow",false);
	global.musicIntro = ini_read_real("options","musicIntro",true);
	global.enemyHealthbars = ini_read_real("options","enemyHealthbars",true);
	global.hitNumbers = ini_read_real("options","hitNumbers",true);
	global.windowSize = ini_read_real("options","windowSize",2);
	global.language = ini_read_real("options","language",0);
	
	global.finalKeyLeft[0] = ini_read_real("controls","keyLeft1",vk_left);
	global.finalKeyRight[0] = ini_read_real("controls","keyRight1",vk_right);
	global.finalKeyUp[0] = ini_read_real("controls","keyUp1",vk_up);
	global.finalKeyDown[0] = ini_read_real("controls","keyDown1",vk_down);
	global.finalKeyJump[0] = ini_read_real("controls","keyJump1",ord("Z"));
	global.finalKeyAttack[0] = ini_read_real("controls","keyAttack1",ord("X"));
	global.finalKeyStart[0] = ini_read_real("controls","keyStart1",vk_enter);
	global.finalKeySelect[0] = ini_read_real("controls","keySelect1",vk_backspace);
	
	global.finalKeyLeft[1] = ini_read_real("controls","keyLeft2",ord("A"));
	global.finalKeyRight[1] = ini_read_real("controls","keyRight2",ord("D"));
	global.finalKeyUp[1] = ini_read_real("controls","keyUp2",ord("W"));
	global.finalKeyDown[1] = ini_read_real("controls","keyDown2",ord("S"));
	global.finalKeyJump[1] = ini_read_real("controls","keyJump2",ord("K"));
	global.finalKeyAttack[1] = ini_read_real("controls","keyAttack2",ord("L"));
	global.finalKeyStart[1] = ini_read_real("controls","keyStart2",vk_enter);
	global.finalKeySelect[1] = ini_read_real("controls","keySelect2",vk_backspace);
	
	global.firstTimeBooting = ini_read_real("misc","firstTimeBooting",true);
	ini_close();
}