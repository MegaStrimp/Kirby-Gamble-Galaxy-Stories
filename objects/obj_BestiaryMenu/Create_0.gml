///@description Initialize Variables

/*
TO-DO

* Add sorting options
* Add entry categories
* Add description pages
* Add localized titles and descriptions
* Add special cases
* Add mouse support
*/

#region Other Variables
hudOffset = -250;
selection = "bestiary";
bestiarySelection = 0;
skinSelected = 0;
colorSelected = 0;
animSelected = 0;
animIndex = 0;
page = 0;
descriptionPage = 0;
totalDescriptionPages = 1;
select = false;
goBack = false;
textureX = 0;
textureY = 0;
windowActive = false;
autoScroll = false;
autoScrollTick = false;
#endregion

#region Arrays
bestiaryArray = -1;
bestiaryCosmeticsArray = -1;
bestiaryAnimationsArray = -1;

scr_BestiaryMenu_Enemies();
#endregion

#region Timers
canAutoScrollTimer = -1;
canAutoScrollTimerMax = 30;
autoScrollTimer = -1;
autoScrollTimerMax = 2;
#endregion

#region Buttons
var button = instance_create_depth(480,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back1;
button.state = "back";
button.canChangeImageIndex = true;
button.changeAlphaWhenNotSelected = true;
#endregion