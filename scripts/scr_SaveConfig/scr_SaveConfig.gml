///@description Save Game
///@param {real} file Which file to write.

function scr_SaveConfig(argument0)
{
	if (file_exists(argument0)) file_delete(argument0);
	
	ini_open(argument0);
	
	ini_write_real("options","musicVolume",global.musicVolume);
	ini_write_real("options","soundVolume",global.soundVolume);
	ini_write_real("options","fullscreen",global.fullscreen);
	ini_write_real("options","extraTutorials",global.extraTutorials);
	ini_write_real("options","autoSwallow",global.autoSwallow);
	ini_write_real("options","musicIntro",global.musicIntro);
	ini_write_real("options","enemyHealthbars",global.enemyHealthbars);
	ini_write_real("options","hitNumbers",global.hitNumbers);
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
	
	ini_write_real("controls","keyLeft3",global.finalKeyLeft[2]);
	ini_write_real("controls","keyRight3",global.finalKeyRight[2]);
	ini_write_real("controls","keyUp3",global.finalKeyUp[2]);
	ini_write_real("controls","keyDown3",global.finalKeyDown[2]);
	ini_write_real("controls","keyJump3",global.finalKeyJump[2]);
	ini_write_real("controls","keyAttack3",global.finalKeyAttack[2]);
	ini_write_real("controls","keyStart3",global.finalKeyStart[2]);
	ini_write_real("controls","keySelect3",global.finalKeySelect[2]);
	
	ini_write_real("controls","keyLeft4",global.finalKeyLeft[3]);
	ini_write_real("controls","keyRight4",global.finalKeyRight[3]);
	ini_write_real("controls","keyUp4",global.finalKeyUp[3]);
	ini_write_real("controls","keyDown4",global.finalKeyDown[3]);
	ini_write_real("controls","keyJump4",global.finalKeyJump[3]);
	ini_write_real("controls","keyAttack4",global.finalKeyAttack[3]);
	ini_write_real("controls","keyStart4",global.finalKeyStart[3]);
	ini_write_real("controls","keySelect4",global.finalKeySelect[3]);
	
	ini_write_real("controls","gamepadControlType1",global.playerGamepadControlType[0]);
	ini_write_real("controls","gamepadControlType2",global.playerGamepadControlType[1]);
	ini_write_real("controls","gamepadControlType3",global.playerGamepadControlType[2]);
	ini_write_real("controls","gamepadControlType4",global.playerGamepadControlType[3]);
	
	ini_write_string("misc","versionNumber",global.versionNumber);
	ini_write_real("misc","firstTimeSetup",global.firstTimeSetup);
	ini_close();
}