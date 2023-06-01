///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = 0;
subSelection = 0;
page = "main";
controlsPage = -1;
textAlpha = 0;
goBack = false;
textY = 147 - (selection * 36);
paused = false;
controlsGamepad = false;

menuTitle[5] = 0;
menuValue[5] = 0;
menuOffset[5] = 0;
menuOffsetLerp[5] = 0;

setStrings = false;

updateMenu = function(){

#region Menus
var i = 0;
menuTitle[i] = str("Options.Display");
menuValue[i] = "Display";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("Options.Audio");
menuValue[i] = "Audio";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("Options.Controls");
menuValue[i] = "Controls";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("Options.Language");
menuValue[i] = "Language";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("Options.Other");
menuValue[i] = "Other";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
i += 1;
menuTitle[i] = str("Options.Reset");
menuValue[i] = "Reset";
menuOffset[i] = 0;
menuOffsetLerp[i] = 0;
#endregion

#region Languages
for (i = 0; i < languages.length; i++) languageVal[i] = i;

languageIndex =
[
	"Languages.English",
    "Languages.Turkish",
    "Languages.German",
    "Languages.Italian",
    "Languages.French",
    "Languages.Polish",
    "Languages.Chinese",
    "Languages.Spanish",
    "Languages.Japanese",
    "Languages.Portuguese",
    "Languages.Norwegian",
    "Languages.Arabic"
]

languageArrayLength = languages.length;
#endregion

#region Misc Strings
strTrue = str("Options.True");
strFalse = str("Options.False");
strFullscreen = str("Options.Fullscreen");
strWindowSize = str("Options.Window Size");
strMusic = str("Options.Music");
strSoundEffects = str("Options.Sound Effects");
strLeft = str("Options.Left");
strRight = str("Options.Right");
strUp = str("Options.Up");
strDown = str("Options.Down");
strJump = str("Options.Jump");
strAttack = str("Options.Attack");
strStart = str("Options.Start");
strSelect = str("Options.Select");
strPressAnyKey = str("Options.Press Any Key");
strControlType = str("Options.Control Type");
strExtraTutorials = str("Options.Extra Tutorials");
strAutoSwallow = str("Options.Auto Swallow");
strMusicIntro = str("Options.Music Intro");
strEnemyHealthbar = str("Options.Enemy Healthbar");
strHitNumbers = str("Options.Hit Numbers");
#endregion
}

updateMenu();

#region Spawn Buttons
var button = instance_create_depth(480,0,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";

var button = instance_create_depth(252,0,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Options_Reset;
button.state = "options";
button.index = "reset";
#endregion
