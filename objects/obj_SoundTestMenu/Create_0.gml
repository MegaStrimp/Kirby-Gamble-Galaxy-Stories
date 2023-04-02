///@description Initialize Variables

#region Other Variables
hudOffset = -250;
selection = "categories";
soundCategory = 0;
trackSelection = 0;
select = false;
goBack = false;
autoScroll = false;
autoScrollTick = false;

soundPlayed = -1;
#endregion

#region Arrays
soundTestArray = -1;
scr_SoundTest_StageThemes();
#endregion

#region Strings
category0String = "Stage Themes";
category1String = "Boss Themes";
category2String = "Cutscene Themes";
category3String = "Subgames Themes";
category4String = "Menu Themes";
category5String = "Sound Effects";

trackString = "Track";
#endregion

#region Timers
canAutoScrollTimer = -1;
canAutoScrollTimerMax = 30;
autoScrollTimer = -1;
autoScrollTimerMax = 2;
#endregion

#region Buttons
var button = instance_create_depth(0,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back3;
button.state = "back";
button.canChangeImageIndex = true;
#endregion