///@description Initialize Variables

#region Other Variables
hudOffset = -250;
selection = "cheats";
discSelection = 0;
select = false;
goBack = false;
discIndex = 0;
autoScroll = false;
autoScrollTick = false;
cheatsArray = -1;

scr_CheatsMenu_Cheats();
#endregion

#region Enums
enum cheats
{
	lifeless,
	starstorm,
	flipside,
	gamerBoy,
	eyeBleach,
	awaitingForTheNewMoon,
	gatherBattle,
	fashionable,
	strimpsDiner,
	coloredAbilities
}
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

var button = instance_create_depth(28,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 0;
button.state = "cheats";
button.index = "arrowPrev";
var button = instance_create_depth(452,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 1;
button.state = "cheats";
button.index = "arrowNext";
#endregion