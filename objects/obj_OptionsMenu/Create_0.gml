///@description Initialize Variables

//Randomize

randomize();

//Other Variables

hudOffset = -250;
selection = 0;
page = "main";
textAlpha = 0;
goBack = false;
textY = 147 - (selection * 36);

#region Menus
var i = 0;
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

#region Audio Menu
var i = 0;
audioMenuIndex[i] = "Music";
i += 1;
audioMenuIndex[i] = "Sound Effects";
#endregion

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";