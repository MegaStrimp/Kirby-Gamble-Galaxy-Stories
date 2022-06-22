///@description Save Game
///@param {real} file Which file to write.

function scr_SaveConfig(argument0)
{
	ini_open(argument0);
	
	ini_write_real("options","musicVolume",global.musicVolume);
	ini_write_real("options","soundVolume",global.soundVolume);
	ini_write_real("options","fullscreen",global.fullscreen);
	ini_write_real("options","extraTutorials",global.extraTutorials);
	ini_write_real("options","autoSwallow",global.autoSwallow);
	ini_write_real("options","musicIntro",global.musicIntro);
	ini_write_real("options","windowSize",global.windowSize);
	ini_write_real("options","language",global.language);
	
	ini_write_real("controls","keyLeft1",global.finalKeyLeft[0]);
	ini_write_real("controls","keyRight1",global.finalKeyRight[0]);
	ini_write_real("controls","keyUp1",global.finalKeyUp[0]);
	ini_write_real("controls","keyDown1",global.finalKeyDown[0]);
	ini_write_real("controls","keyJump1",global.finalKeyJump[0]);
	ini_write_real("controls","keyAttack1",global.finalKeyAttack[0]);
	ini_write_real("controls","keyStart1",global.finalKeyStart[0]);
	ini_write_real("controls","keySelect1",global.finalKeySelect[0]);
	
	ini_write_real("controls","keyLeft2",global.finalKeyLeft[1]);
	ini_write_real("controls","keyRight2",global.finalKeyRight[1]);
	ini_write_real("controls","keyUp2",global.finalKeyUp[1]);
	ini_write_real("controls","keyDown2",global.finalKeyDown[1]);
	ini_write_real("controls","keyJump2",global.finalKeyJump[1]);
	ini_write_real("controls","keyAttack2",global.finalKeyAttack[1]);
	ini_write_real("controls","keyStart2",global.finalKeyStart[1]);
	ini_write_real("controls","keySelect2",global.finalKeySelect[1]);
	
	ini_write_string("misc","versionNumber",global.versionNumber);
	ini_write_real("misc","firstTimeBooting",global.firstTimeBooting);
	ini_close();
}