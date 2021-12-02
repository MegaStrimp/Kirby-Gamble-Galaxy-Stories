///@description Initialize Variables

//Randomize

randomize();

//Other Variables

character = 1;
hexNum = 0;
active = false;
activeText = false;
textboxPos = -480;
keeperPos = 300;
keeperBounceOffset = 0;
keeperBounceDir = 1;
menuIndex = 0;
pageIndex = 0;
welcomeText = "";
selection = 0;

//Timers

hexTimer = 4;
activeTimer = -1;

#region Choose Options
#region Misc
var h = 0;
var i = 0;
chooseOptionString[h][i] = scr_Localization(0,0,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
i += 1;
chooseOptionString[h][i] = scr_Localization(0,0,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
i += 1;
chooseOptionString[h][i] = scr_Localization(0,0,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
#endregion

h += 1;
#region Gear Cube Questions
h += 1;
var i = 0;
chooseOptionString[h][i] = scr_Localization(7,6,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
i += 1;
chooseOptionString[h][i] = scr_Localization(7,6,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
i += 1;
chooseOptionString[h][i] = scr_Localization(7,6,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
i += 1;
chooseOptionString[h][i] = scr_Localization(7,6,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
i += 1;
chooseOptionString[h][i] = scr_Localization(7,6,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
i += 1;
chooseOptionString[h][i] = scr_Localization(7,6,i,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
i += 1;
chooseOptionString[h][i] = scr_Localization(0,0,4,global.language);
chooseOptionOffset[h][i] = 0;
chooseOptionOffsetLerp[h][i] = 0;
#endregion
#endregion