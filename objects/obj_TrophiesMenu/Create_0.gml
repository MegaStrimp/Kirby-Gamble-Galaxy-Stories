///@description Initialize Variables

//Other Variables

hudOffset = -250;
menuIndex = 0;
page = 0;
trophyArray = -1;
selection = "trophies";
trophySelection = 0;
select = false;
goBack = false;

scr_Trophies();

#region Timers
canAutoScrollTimer = -1;
canAutoScrollTimerMax = 30;
#endregion

var button = instance_create_depth(480,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back1;
button.state = "back";
button.canChangeImageIndex = true;

var button = instance_create_depth(20,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 0;
button.state = "trophies";
button.index = "arrowPrev";
var button = instance_create_depth(460,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 1;
button.state = "trophies";
button.index = "arrowNext";