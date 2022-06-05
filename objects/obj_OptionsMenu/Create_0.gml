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
setStrings = false;

#region Menus
var i = 0;
menuTitle[i] = scr_Localization(stringAttributes.options_display,stringAttributes.title,0,global.language);
menuValue[i] = "Display";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = scr_Localization(stringAttributes.options_audio,stringAttributes.title,0,global.language);
menuValue[i] = "Audio";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = scr_Localization(stringAttributes.options_controls,stringAttributes.title,0,global.language);
menuValue[i] = "Controls";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = scr_Localization(stringAttributes.options_language,stringAttributes.title,0,global.language);
menuValue[i] = "Language";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = scr_Localization(stringAttributes.options_other,stringAttributes.title,0,global.language);
menuValue[i] = "Other";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
#endregion

#region Languages
var i = 0;
for (var i = 0; i < languages.length; i++)
{
	languageIndex[i] = scr_Localization(stringAttributes.language,stringAttributes.title,i,0);
	languageVal[i] = i;
}
languageArrayLength = languages.length;
#endregion

#region Misc Strings
strTrue = scr_Localization(stringAttributes.options_true,stringAttributes.title,0,global.language);
strFalse = scr_Localization(stringAttributes.options_false,stringAttributes.title,0,global.language);
strFullscreen = scr_Localization(stringAttributes.options_fullscreen,stringAttributes.title,0,global.language);
strWindowSize = scr_Localization(stringAttributes.options_windowSize,stringAttributes.title,0,global.language);
strMusic = scr_Localization(stringAttributes.options_music,stringAttributes.title,0,global.language);
strSoundEffects = scr_Localization(stringAttributes.options_soundEffects,stringAttributes.title,0,global.language);
strLeft = scr_Localization(stringAttributes.options_left,stringAttributes.title,0,global.language);
strRight = scr_Localization(stringAttributes.options_right,stringAttributes.title,0,global.language);
strUp = scr_Localization(stringAttributes.options_up,stringAttributes.title,0,global.language);
strDown = scr_Localization(stringAttributes.options_down,stringAttributes.title,0,global.language);
strJump = scr_Localization(stringAttributes.options_jump,stringAttributes.title,0,global.language);
strAttack = scr_Localization(stringAttributes.options_attack,stringAttributes.title,0,global.language);
strStart = scr_Localization(stringAttributes.options_start,stringAttributes.title,0,global.language);
strSelect = scr_Localization(stringAttributes.options_select,stringAttributes.title,0,global.language);
strPressAnyKey = scr_Localization(stringAttributes.options_pressAnyKey,stringAttributes.title,0,global.language);
strExtraTutorials = scr_Localization(stringAttributes.options_extraTutorials,stringAttributes.title,0,global.language);
strAutoSwallow = scr_Localization(stringAttributes.options_autoSwallow,stringAttributes.title,0,global.language);
#endregion

#region Spawn Buttons
var button = instance_create_depth(480,0,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";
#endregion
