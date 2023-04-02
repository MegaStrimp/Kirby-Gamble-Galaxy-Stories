///@description Initialize Variables

#region Other Variables
hudOffset = -250;
menuIndex = 0;
page = 0;
curtainIndex = 0;
artworkZoom = false;
artworkZoomAlpha = 0;
selectedVol = 0;
artworkIndex = 0;
artworkArray = -1;
bgSprite = spr_Menu_Gallery_Bg_Green;
selection = "vol1";
artworkSelection = 0;
select = false;
goBack = false;
artworkX = 240;
artworkMax = 0;
autoScroll = false;
autoScrollTick = false;
#endregion

scr_Gallery_Artwork_Vol1();

#region Timers
canAutoScrollTimer = -1;
canAutoScrollTimerMax = 30;
autoScrollTimer = -1;
autoScrollTimerMax = 2;
#endregion

var button = instance_create_depth(0,270,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back3;
button.state = "back";
button.canChangeImageIndex = true;

var button = instance_create_depth(480,38,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Volumes;
button.image_index = 0;
button.state = "gallery";
button.index = "vol1";
//button.xOffset = 100;
/*
var button = instance_create_depth(480,97,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Volumes;
button.image_index = 1;
button.state = "gallery";
button.index = "vol2";
button.xOffset = 100;
var button = instance_create_depth(480,156,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Volumes;
button.image_index = 2;
button.state = "gallery";
button.index = "vol3";
button.xOffset = 100;
*/
var button = instance_create_depth(480,215,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Volumes;
button.image_index = 3;
button.state = "gallery";
button.index = "volS";
button.xOffset = 100;

var button = instance_create_depth(372,212,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Download;
button.image_index = 0;
button.state = "gallery";
button.index = "download";

var button = instance_create_depth(110,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 0;
button.state = "gallery";
button.index = "arrowPrev";
var button = instance_create_depth(370,140,depth - 1,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_Gallery_Arrow;
button.image_index = 1;
button.state = "gallery";
button.index = "arrowNext";