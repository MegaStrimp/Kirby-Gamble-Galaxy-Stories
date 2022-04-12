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

#region Menus
var i = 0;
menuTitle[i] = "Display";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = "Audio";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = "Controls";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = "Language";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = "Other";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
#endregion

#region Languages
var i = 0;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 0;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 1;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 2;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 3;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 4;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 5;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 6;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 7;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 8;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 9;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 10;
i += 1;
languageIndex[i] = scr_Localization(0,5,i,0);
languageVal[i] = 11;

languageArrayLength = i + 1;
#endregion

//Spawn Buttons

var button = instance_create_depth(480,0,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";