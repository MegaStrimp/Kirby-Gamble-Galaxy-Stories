///@description Initialize Variables

//Randomize

randomize();

//Other Variables

hudOffset = -250;
selection = 0;
subSelection = 0;
page = "main";
textAlpha = 0;
goBack = false;
textY = 147 - (selection * 36);
paused = false;

menuTitle[5]=0;
menuValue[5]=0;
menuOffset[5]=0;
menuOffsetLerp[5]=0;

setStrings = false;

updateMenu = function(){

#region Menus
var i = 0;
menuTitle[i] = str("options.display");
menuValue[i] = "Display";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("options.audio");
menuValue[i] = "Audio";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("options.controls");
menuValue[i] = "Controls";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("options.language");
menuValue[i] = "Language";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("options.other");
menuValue[i] = "Other";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("options.default");
menuValue[i] = "Default";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
#endregion

#region Languages
var i = 0;
for (var i = 0; i < languages.length; i++)
{
	//languageIndex[i] = scr_Localization_Main(stringAttributes.language,stringAttributes.title,i,0);
	languageVal[i] = i;
}

languageIndex = [
	    "languages.english",
        "languages.turkish",
        "languages.german",
        "languages.italian",
        "languages.french",
        "languages.polish",
        "languages.chinese",
        "languages.spanish",
        "languages.japanese",
        "languages.portuguese",
        "languages.norwegian",
        "languages.arabic"
]

languageArrayLength = languages.length;
#endregion

#region Misc Strings
strTrue = str("options.true");
strFalse = str("options.false");
strFullscreen = str("options.fullscreen");
strWindowSize = str("options.windowSize");
strMusic = str("options.music");
strSoundEffects = str("options.soundEffects");
strLeft = str("options.left");
strRight = str("options.right");
strUp = str("options.up");
strDown = str("options.down");
strJump = str("options.jump");
strAttack = str("options.attack");
strStart = str("options.start");
strSelect = str("options.select");
strPressAnyKey = str("options.pressAnyKey");
strExtraTutorials = str("options.extraTutorials");
strAutoSwallow = str("options.autoSwallow");
strMusicIntro = str("options.musicIntro");
#endregion

}

updateMenu();

#region Spawn Buttons
var button = instance_create_depth(480,0,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";
#endregion
